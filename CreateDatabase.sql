--Drop previously created tables
DROP TABLE ORDER_DETAIL;
DROP TABLE ART_PIECE_CATEGORY;
DROP TABLE ORDERS;
DROP TABLE ABSTRACT_ART;
DROP TABLE LINE_ART;
DROP TABLE ART_PIECE;
DROP TABLE CATEGORY;
DROP TABLE FRAME;
DROP TABLE PACKAGING;
DROP TABLE CUSTOMER;

--Drop previously created sequences
DROP SEQUENCE customer_seq;
DROP SEQUENCE packaging_seq;
DROP SEQUENCE frame_seq;
DROP SEQUENCE category_seq;
DROP SEQUENCE art_piece_seq;
DROP SEQUENCE order_seq;
DROP SEQUENCE tracking_seq;

--Drop previously created views
DROP VIEW order_customer_details;
DROP VIEW art_piece_categories;
DROP VIEW abstract_art_details;
DROP VIEW line_art_details;

--Create CUSTOMER table:
CREATE TABLE CUSTOMER (
    customer_id NUMBER(10) PRIMARY KEY,
    first_name VARCHAR2(50) NOT NULL,
    last_name VARCHAR2(50) NOT NULL,
    email VARCHAR2(80) NOT NULL,
    customer_password VARCHAR2(50) NOT NULL,
    shipping_address VARCHAR2(150) NOT NULL,
    billing_address VARCHAR2(150) NOT NULL
);

--Create PACKAGING table:
CREATE TABLE PACKAGING (
    packaging_id NUMBER(10) PRIMARY KEY,
    packaging_name VARCHAR2(50) NOT NULL,
    descrip VARCHAR2(80),
    material VARCHAR2(50) NOT NULL,
    price NUMBER(10,2) NOT NULL,
    quantity_available NUMBER(5) NOT NULL
);
--Altering table by adding check constraints
ALTER TABLE PACKAGING
ADD CONSTRAINT CK_PACKAGING_PRICE CHECK (price >= 0);
ALTER TABLE PACKAGING
ADD CONSTRAINT CK_PACKAGING_QUANTITY CHECK (quantity_available >= 0);

--Create FRAME table:
CREATE TABLE FRAME (
    frame_id NUMBER(10) PRIMARY KEY,
    frame_name VARCHAR2(50) NOT NULL,
    descrip VARCHAR2(80),
    colour VARCHAR2(25) NOT NULL,
    price NUMBER(10,2) NOT NULL,
    quantity_available NUMBER(5) NOT NULL
);
--Altering table by adding check constraints
ALTER TABLE FRAME
ADD CONSTRAINT CK_FRAME_PRICE CHECK (price >= 0);
ALTER TABLE FRAME
ADD CONSTRAINT CK_FRAME_QUANTITY CHECK (quantity_available >= 0);

--Create CATEGORY table:
CREATE TABLE CATEGORY (
    category_id NUMBER(10) PRIMARY KEY,
    descrip VARCHAR2(80) NOT NULL
);

--Create ART_PIECE table:
CREATE TABLE ART_PIECE (
    art_piece_id NUMBER(10) NOT NULL,
    art_piece_name VARCHAR2(50) NOT NULL,
    descrip VARCHAR2(80) NOT NULL,
    dimensions VARCHAR2(20),
    price NUMBER(10,2) NOT NULL,
    quantity_available NUMBER(5) NOT NULL,
    CONSTRAINT art_piece_pk PRIMARY KEY (art_piece_id)
);
--Altering table by adding check constraints
ALTER TABLE ART_PIECE
ADD CONSTRAINT CK_APRICE CHECK (price >= 0);
ALTER TABLE ART_PIECE
ADD CONSTRAINT CK_AQUANTITY CHECK (quantity_available >= 0);
ALTER TABLE ART_PIECE
ADD CONSTRAINT CK_ADIMENSIONS CHECK (LENGTH(dimensions) > 0);

--Create LINE_ART table:
CREATE TABLE LINE_ART (
    art_piece_id NUMBER(10) NOT NULL,
    thickness VARCHAR2(25) NOT NULL,
    paper_type VARCHAR2(25) NOT NULL,
    CONSTRAINT line_art_pk PRIMARY KEY (art_piece_id),
    CONSTRAINT line_art_fk_art_piece_id FOREIGN KEY (art_piece_id) REFERENCES ART_PIECE (art_piece_id)
);
--Altering table by adding check constraint
ALTER TABLE LINE_ART
ADD CONSTRAINT CK_LINE_ART_THICKNESS CHECK (LENGTH(thickness) > 0);

--Create ABSTRACT_ART table:
CREATE TABLE ABSTRACT_ART (
    art_piece_id NUMBER(10) NOT NULL,
    style VARCHAR2(25) NOT NULL,
    colour VARCHAR2(25) NOT NULL,
    texture VARCHAR2(25) NOT NULL,
    CONSTRAINT abstract_art_pk PRIMARY KEY (art_piece_id),
    CONSTRAINT abstract_art_fk_art_piece_id FOREIGN KEY (art_piece_id) REFERENCES ART_PIECE (art_piece_id)
);

--Create ORDERS table:
CREATE TABLE ORDERS (
    order_id NUMBER(10) NOT NULL,
    customer_id NUMBER(10) NOT NULL,
    packaging_id NUMBER(10) NOT NULL,
    order_date DATE NOT NULL,
    total_price NUMBER(10,2) NOT NULL,
    shipping_method VARCHAR2(35) NOT NULL,
    tracking_number VARCHAR2(25) NOT NULL,
    order_status VARCHAR2(50) NOT NULL,
    CONSTRAINT order_pk PRIMARY KEY (order_id),
    CONSTRAINT order_fk_customer_id FOREIGN KEY (customer_id) REFERENCES CUSTOMER (customer_id),
    CONSTRAINT order_fk_packaging_id FOREIGN KEY (packaging_id) REFERENCES PACKAGING (packaging_id)
);
--Altering table by adding check constraints
ALTER TABLE ORDERS
ADD CONSTRAINT CK_ORDERS_TOTAL_PRICE CHECK (total_price >= 0);

--Create ART_PIECE_CATEGORY table:
CREATE TABLE ART_PIECE_CATEGORY (
    ap_id NUMBER(10) NOT NULL,
    cat_id NUMBER(10) NOT NULL,
    CONSTRAINT ap_cat_pk PRIMARY KEY (ap_id, cat_id),
    CONSTRAINT ap_cat_fk_ap_id FOREIGN KEY (ap_id) REFERENCES ART_PIECE (art_piece_id),
    CONSTRAINT ap_cat_fk_cat_id FOREIGN KEY (cat_id) REFERENCES CATEGORY (category_id)
);

--Create ORDER_DETAIL table:
CREATE TABLE ORDER_DETAIL (
    order_id NUMBER(10) NOT NULL,
    art_piece_id NUMBER(10) NOT NULL,
    frame_id NUMBER(10) NOT NULL,
    quantity NUMBER(10) NOT NULL,
    CONSTRAINT order_detail_pk PRIMARY KEY (order_id, art_piece_id, frame_id),
    CONSTRAINT order_detail_fk_order_id FOREIGN KEY (order_id) REFERENCES ORDERS (order_id),
    CONSTRAINT order_detail_fk_art_piece_id FOREIGN KEY (art_piece_id) REFERENCES ART_PIECE (art_piece_id),
    CONSTRAINT order_detail_fk_frame_id FOREIGN KEY (frame_id) REFERENCES FRAME (frame_id)
);
--Altering table by adding check constraint
ALTER TABLE ORDER_DETAIL
ADD CONSTRAINT CK_ORDER_DETAIL_QUANTITY CHECK (quantity > 0);

--Creating sequences for primary keys
CREATE SEQUENCE customer_seq
    START WITH 1
    INCREMENT BY 1
    MINVALUE 1
    MAXVALUE 1000000
    NOCYCLE;

CREATE SEQUENCE packaging_seq
    START WITH 1
    INCREMENT BY 1
    MINVALUE 1
    MAXVALUE 1000000
    NOCYCLE;

CREATE SEQUENCE frame_seq
    START WITH 1
    INCREMENT BY 1
    MINVALUE 1
    MAXVALUE 1000000
    NOCYCLE;

CREATE SEQUENCE category_seq
    START WITH 1
    INCREMENT BY 1
    MINVALUE 1
    MAXVALUE 1000000
    NOCYCLE;

CREATE SEQUENCE art_piece_seq
    START WITH 1
    INCREMENT BY 1
    MINVALUE 1
    MAXVALUE 1000000
    NOCYCLE;

CREATE SEQUENCE order_seq
    START WITH 1
    INCREMENT BY 1
    MINVALUE 1
    MAXVALUE 1000000
    NOCYCLE;

CREATE SEQUENCE tracking_seq
    START WITH 1000
    INCREMENT BY 1;

--ORDERS table
CREATE INDEX orders_order_date_idx ON ORDERS (order_date);
CREATE INDEX orders_order_status_idx ON ORDERS (order_status);

--ORDER_DETAIL table
CREATE INDEX order_detail_quantity_idx ON ORDER_DETAIL (quantity);

--ART_PIECE table
CREATE INDEX art_piece_name_idx ON ART_PIECE (art_piece_name);

--LINE_ART table
CREATE INDEX line_art_thickness_idx ON LINE_ART (thickness);
CREATE INDEX line_art_paper_type_idx ON LINE_ART (paper_type);

--ABSTRACT_ART table
CREATE INDEX abstract_art_style_idx ON ABSTRACT_ART (style);
CREATE INDEX abstract_art_colour_idx ON ABSTRACT_ART (colour);
CREATE INDEX abstract_art_texture_idx ON ABSTRACT_ART (texture);

--CATEGORY table
--No index needed, as there is only one column, which is the primary key.

--ART_PIECE_CATEGORY table
-- No additional index needed, as primary key already covers both columns.

--FRAME table
CREATE INDEX frame_name_idx ON FRAME (frame_name);
CREATE INDEX frame_colour_idx ON FRAME (colour);

--CUSTOMER table
CREATE INDEX customer_email_idx ON CUSTOMER (email);

--PACKAGING table
CREATE INDEX packaging_name_idx ON PACKAGING (packaging_name);
CREATE INDEX packaging_material_idx ON PACKAGING (material);

--View to show all order details with customer information:
CREATE OR REPLACE VIEW order_customer_details AS
SELECT o.order_id, o.order_date, o.total_price, o.shipping_method, o.tracking_number, o.order_status,
       c.customer_id, c.first_name, c.last_name, c.email, c.shipping_address, c.billing_address
FROM ORDERS o
JOIN CUSTOMER c ON o.customer_id = c.customer_id;

--View to show all art pieces with their categories:
CREATE OR REPLACE VIEW art_piece_categories AS
SELECT ap.art_piece_id, ap.art_piece_name, ap.descrip, ap.dimensions, ap.price, ap.quantity_available,
       cat.category_id, cat.descrip as category_description
FROM ART_PIECE ap
JOIN ART_PIECE_CATEGORY apc ON ap.art_piece_id = apc.ap_id
JOIN CATEGORY cat ON apc.cat_id = cat.category_id;

--View to show all abstract art pieces:
CREATE OR REPLACE VIEW abstract_art_details AS
SELECT ap.art_piece_id, ap.art_piece_name, ap.descrip, ap.dimensions, ap.price, ap.quantity_available,
       aa.style, aa.colour, aa.texture
FROM ART_PIECE ap
JOIN ABSTRACT_ART aa ON ap.art_piece_id = aa.art_piece_id;

--View to show all line art pieces:
CREATE OR REPLACE VIEW line_art_details AS
SELECT ap.art_piece_id, ap.art_piece_name, ap.descrip, ap.dimensions, ap.price, ap.quantity_available,
       la.thickness, la.paper_type
FROM ART_PIECE ap
JOIN LINE_ART la ON ap.art_piece_id = la.art_piece_id;
