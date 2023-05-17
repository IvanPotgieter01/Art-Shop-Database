--Inserting data into the CUSTOMER table

-- Insert 'Pieter van der Merwe' (customer_id will be 1)
INSERT INTO CUSTOMER (customer_id, first_name, last_name, email, customer_password, shipping_address, billing_address)
VALUES (customer_seq.NEXTVAL, 'Pieter', 'van der Merwe', 'pieter.vandermerwe@gmail.com', 'password123', '456 Voortrekker St, Pretoria, 0081', '456 Voortrekker St, Pretoria, 0081');

-- Insert 'Anika Smit' (customer_id will be 2)
INSERT INTO CUSTOMER (customer_id, first_name, last_name, email, customer_password, shipping_address, billing_address)
VALUES (customer_seq.NEXTVAL, 'Anika', 'Smit', 'anika.smit@yahoo.com', 'password789', '789 Main St, Johannesburg, 2193', '789 Main St, Johannesburg, 2193');

-- Insert 'Johan Botha' (customer_id will be 3)
INSERT INTO CUSTOMER (customer_id, first_name, last_name, email, customer_password, shipping_address, billing_address)
VALUES (customer_seq.NEXTVAL, 'Johannes', 'Botha', 'johannes.botha@gmail.com', 'password456', '123 Freedom St, Soweto, 1804', '123 Freedom St, Soweto, 1804');

-- Insert 'Lize van Niekerk' (customer_id will be 4)
INSERT INTO CUSTOMER (customer_id, first_name, last_name, email, customer_password, shipping_address, billing_address)
VALUES (customer_seq.NEXTVAL, 'Lize', 'van Niekerk', 'lize.vanniekerk@yahoo.com', 'password321', '321 Republic Rd, Randburg, 2194', '321 Republic Rd, Randburg, 2194');

-- Insert 'Kobus de Klerk' (customer_id will be 5)
INSERT INTO CUSTOMER (customer_id, first_name, last_name, email, customer_password, shipping_address, billing_address)
VALUES (customer_seq.NEXTVAL, 'Kobus', 'de Klerk', 'kobus.deklerk@gmail.com', 'password987', '654 Mandela St, Cape Town, 8001', '654 Mandela St, Cape Town, 8001');
--Inserting data into the PACKAGING table

-- Insert 'Deluxe' (packaging_id will be 1 due to sequence)
INSERT INTO PACKAGING (packaging_id, packaging_name, descrip, material, price, quantity_available)
VALUES (packaging_seq.NEXTVAL, 'Deluxe', 'Premium packaging for art pieces', 'Wood', 50.00, 100);

-- Insert 'Premium' (packaging_id will be 2 due to sequence)
INSERT INTO PACKAGING (packaging_id, packaging_name, descrip, material, price, quantity_available)
VALUES (packaging_seq.NEXTVAL, 'Premium', 'Premium packaging for art pieces', 'Glass', 30.00, 100);

-- Insert 'Standard' (packaging_id will be 3 due to sequence)
INSERT INTO PACKAGING (packaging_id, packaging_name, descrip, material, price, quantity_available)
VALUES (packaging_seq.NEXTVAL, 'Standard', 'Standard packaging for everyday items', 'Plastic', 15.00, 100);

-- Insert 'Economy' (packaging_id will be 4 due to sequence)
INSERT INTO PACKAGING (packaging_id, packaging_name, descrip, material, price, quantity_available)
VALUES (packaging_seq.NEXTVAL, 'Economy', 'Economical packaging for cost-saving', 'Cardboard', 10.00, 100);
--Inserting data into the FRAME table

-- Insert 'Classic Gold' (frame_id will be 1)
INSERT INTO FRAME (frame_id, frame_name, descrip, colour, price, quantity_available)
VALUES (frame_seq.NEXTVAL, 'Classic Gold', 'Traditional golden frame', 'Gold', 150.00, 100);

-- Insert 'Modern Black' (frame_id will be 2)
INSERT INTO FRAME (frame_id, frame_name, descrip, colour, price, quantity_available)
VALUES (frame_seq.NEXTVAL, 'Modern Black', 'Modern black frame', 'Black', 120.00, 150);

-- Insert 'Vintage Wood' (frame_id will be 3)
INSERT INTO FRAME (frame_id, frame_name, descrip, colour, price, quantity_available)
VALUES (frame_seq.NEXTVAL, 'Vintage Wood', 'Vintage wooden frame', 'Brown', 175.00, 80);

-- Insert 'Minimalist White' (frame_id will be 4)
INSERT INTO FRAME (frame_id, frame_name, descrip, colour, price, quantity_available)
VALUES (frame_seq.NEXTVAL, 'Minimalist White', 'Minimalist white frame', 'White', 100.00, 200);
--Inserting data into the CATEGORY table

-- Insert 'Famous Paintings' (category_id will be 1)
INSERT INTO CATEGORY (category_id, descrip)
VALUES (category_seq.NEXTVAL, 'Famous Paintings');

-- Insert 'Contemporary Art' (category_id will be 2)
INSERT INTO CATEGORY (category_id, descrip)
VALUES (category_seq.NEXTVAL, 'Contemporary Art');

-- Insert 'Modern Art' (category_id will be 3)
INSERT INTO CATEGORY (category_id, descrip)
VALUES (category_seq.NEXTVAL, 'Modern Art');

-- Insert 'Portraits' (category_id will be 4)
INSERT INTO CATEGORY (category_id, descrip)
VALUES (category_seq.NEXTVAL, 'Portraits');

-- Insert 'Landscape Art' (category_id will be 5)
INSERT INTO CATEGORY (category_id, descrip)
VALUES (category_seq.NEXTVAL, 'Landscape Art');
--Inserting data into the ART_PIECE table

-- Insert 'Sunset Dreams' (art_piece_id will be 1)
INSERT INTO ART_PIECE (art_piece_id, art_piece_name, descrip, dimensions, price, quantity_available)
VALUES (art_piece_seq.NEXTVAL, 'Sunset Dreams', 'A mesmerizing depiction of a sunset', '50cm x 70cm', 1200.00, 10);

-- Insert 'Ocean Whispers' (art_piece_id will be 2)
INSERT INTO ART_PIECE (art_piece_id, art_piece_name, descrip, dimensions, price, quantity_available)
VALUES (art_piece_seq.NEXTVAL, 'Ocean Whispers', 'A calm ocean landscape', '60cm x 80cm', 1500.00, 8);

-- Insert 'Forest Mystery' (art_piece_id will be 3)
INSERT INTO ART_PIECE (art_piece_id, art_piece_name, descrip, dimensions, price, quantity_available)
VALUES (art_piece_seq.NEXTVAL, 'Forest Mystery', 'A mysterious forest in the twilight', '70cm x 90cm', 1800.00, 7);

-- Insert 'Mountain Majesty' (art_piece_id will be 4)
INSERT INTO ART_PIECE (art_piece_id, art_piece_name, descrip, dimensions, price, quantity_available)
VALUES (art_piece_seq.NEXTVAL, 'Mountain Majesty', 'A majestic mountain range', '80cm x 100cm', 2000.00, 6);

-- Insert 'City Lights' (art_piece_id will be 5)
INSERT INTO ART_PIECE (art_piece_id, art_piece_name, descrip, dimensions, price, quantity_available)
VALUES (art_piece_seq.NEXTVAL, 'City Lights', 'A vibrant city at night', '60cm x 80cm', 1500.00, 9);

-- Insert 'Desert Solitude' (art_piece_id will be 6)
INSERT INTO ART_PIECE (art_piece_id, art_piece_name, descrip, dimensions, price, quantity_available)
VALUES (art_piece_seq.NEXTVAL, 'Desert Solitude', 'A serene desert under the night sky', '70cm x 90cm', 1700.00, 5);

-- Insert 'Blossom Bliss' (art_piece_id will be 7)
INSERT INTO ART_PIECE (art_piece_id, art_piece_name, descrip, dimensions, price, quantity_available)
VALUES (art_piece_seq.NEXTVAL, 'Blossom Bliss', 'Cherry blossoms in full bloom', '50cm x 70cm', 1300.00, 11);

-- Insert 'Winter's Breath' (art_piece_id will be 8)
INSERT INTO ART_PIECE (art_piece_id, art_piece_name, descrip, dimensions, price, quantity_available)
VALUES (art_piece_seq.NEXTVAL, 'Winter Breath', 'A snowy winter landscape', '80cm x 100cm', 2100.00, 4);

-- Insert 'Autumn's Embrace' (art_piece_id will be 9)
INSERT INTO ART_PIECE (art_piece_id, art_piece_name, descrip, dimensions, price, quantity_available)
VALUES (art_piece_seq.NEXTVAL, 'Autumn Embrace', 'An autumn forest in golden colors', '60cm x 80cm', 1500.00, 8);
--Inserting data into the LINE_ART table

-- Insert Line Art details for 'Sunset Dreams' (art_piece_id will be 1)
INSERT INTO LINE_ART (art_piece_id, thickness, paper_type)
VALUES (1, '0.5mm', 'Matte');

-- Insert Line Art details for 'Ocean Whispers' (art_piece_id will be 2)
INSERT INTO LINE_ART (art_piece_id, thickness, paper_type)
VALUES (2, '0.7mm', 'Glossy');

-- Insert Line Art details for 'Forest Mystery' (art_piece_id will be 3)
INSERT INTO LINE_ART (art_piece_id, thickness, paper_type)
VALUES (3, '0.5mm', 'Textured');

-- Insert Line Art details for 'Mountain Majesty' (art_piece_id will be 4)
INSERT INTO LINE_ART (art_piece_id, thickness, paper_type)
VALUES (4, '0.7mm', 'Matte');
--Inserting data into the ABSTRACT_ART table

-- Insert Abstract Art details for 'City Lights' (art_piece_id will be 5)
INSERT INTO ABSTRACT_ART (art_piece_id, style, colour, texture)
VALUES (5, 'Cubism', 'Multicolour', 'Smooth');

-- Insert Abstract Art details for 'Desert Solitude' (art_piece_id will be 6)
INSERT INTO ABSTRACT_ART (art_piece_id, style, colour, texture)
VALUES (6, 'Impressionism', 'Warm Tones', 'Textured');

-- Insert Abstract Art details for 'Blossom Bliss' (art_piece_id will be 7)
INSERT INTO ABSTRACT_ART (art_piece_id, style, colour, texture)
VALUES (7, 'Expressionism', 'Pastels', 'Smooth');

-- Insert Abstract Art details for 'Winter's Breath' (art_piece_id will be 8)
INSERT INTO ABSTRACT_ART (art_piece_id, style, colour, texture)
VALUES (8, 'Surrealism', 'Cool Tones', 'Textured');

-- Insert Abstract Art details for 'Autumn's Embrace' (art_piece_id will be 9)
INSERT INTO ABSTRACT_ART (art_piece_id, style, colour, texture)
VALUES (9, 'Fauvism', 'Warm Tones', 'Smooth');
--Inserting data into the ORDERS table

-- Insert order by 'Johannes Botha' for 'Sunset Dreams' (order_id will be 1)
INSERT INTO ORDERS (order_id, customer_id, packaging_id, order_date, total_price, shipping_method, tracking_number, order_status)
VALUES (order_seq.NEXTVAL, 1, 1, SYSDATE, 1300.00, 'Express Delivery', tracking_seq.NEXTVAL, 'Processing ');

-- Insert order by 'Anika Pretorius' for 'Ocean Whispers' (order_id will be 2)
INSERT INTO ORDERS (order_id, customer_id, packaging_id, order_date, total_price, shipping_method, tracking_number, order_status)
VALUES (order_seq.NEXTVAL, 2, 2, SYSDATE, 1600.00, 'Standard Delivery', tracking_seq.NEXTVAL, 'Pending');

-- Insert order by 'Pieter van der Merwe' for 'Forest Mystery' (order_id will be 3)
INSERT INTO ORDERS (order_id, customer_id, packaging_id, order_date, total_price, shipping_method, tracking_number, order_status)
VALUES (order_seq.NEXTVAL, 3, 1, SYSDATE, 1900.00, 'Express Delivery', tracking_seq.NEXTVAL, 'Shipped');

-- Insert order by 'Sarah Chen' for 'Mountain Majesty' (order_id will be 4)
INSERT INTO ORDERS (order_id, customer_id, packaging_id, order_date, total_price, shipping_method, tracking_number, order_status)
VALUES (order_seq.NEXTVAL, 4, 3, SYSDATE, 2100.00, 'Standard Delivery', tracking_seq.NEXTVAL, 'Pending');

-- Insert order by 'Johannes Botha' for 'City Lights' (order_id will be 5)
INSERT INTO ORDERS (order_id, customer_id, packaging_id, order_date, total_price, shipping_method, tracking_number, order_status)
VALUES (order_seq.NEXTVAL, 1, 2, SYSDATE, 1600.00, 'Express Delivery', tracking_seq.NEXTVAL, 'Shipped');

-- Insert order by 'Anika Pretorius' for 'Desert Solitude' (order_id will be 6)
INSERT INTO ORDERS (order_id, customer_id, packaging_id, order_date, total_price, shipping_method, tracking_number, order_status)
VALUES (order_seq.NEXTVAL, 2, 1, SYSDATE, 1800.00, 'Standard Delivery', tracking_seq.NEXTVAL, 'Shipped');

-- Insert order by 'Pieter van der Merwe' for 'Blossom Bliss' (order_id will be 7)
INSERT INTO ORDERS (order_id, customer_id, packaging_id, order_date, total_price, shipping_method, tracking_number, order_status)
VALUES (order_seq.NEXTVAL, 3, 3, SYSDATE, 1400.00, 'Express Delivery', tracking_seq.NEXTVAL, 'Shipped');

-- Insert order by 'Johannes Botha' for 'Autumn's Embrace' (order_id will be 8)
INSERT INTO ORDERS (order_id, customer_id, packaging_id, order_date, total_price, shipping_method, tracking_number, order_status)
VALUES (order_seq.NEXTVAL, 1, 1, SYSDATE, 1500.00, 'Standard Delivery', tracking_seq.NEXTVAL, 'Pending');
--Inserting data into the ORDERS table continued


-- Insert order by 'Anika Pretorius' for 'Spring's Awakening' (order_id will be 9)
INSERT INTO ORDERS (order_id, customer_id, packaging_id, order_date, total_price, shipping_method, tracking_number, order_status)
VALUES (order_seq.NEXTVAL, 2, 3, SYSDATE, 1800.00, 'Express Delivery', tracking_seq.NEXTVAL, 'Processing');

-- Insert order by 'Pieter van der Merwe' for 'City Lights' (order_id will be 10)
INSERT INTO ORDERS (order_id, customer_id, packaging_id, order_date, total_price, shipping_method, tracking_number, order_status)
VALUES (order_seq.NEXTVAL, 3, 2, SYSDATE, 1700.00, 'Standard Delivery', tracking_seq.NEXTVAL, 'Shipped');

-- Insert order by 'Sarah Chen' for 'Desert Solitude' (order_id will be 11)
INSERT INTO ORDERS (order_id, customer_id, packaging_id, order_date, total_price, shipping_method, tracking_number, order_status)
VALUES (order_seq.NEXTVAL, 4, 1, SYSDATE, 1900.00, 'Express Delivery', tracking_seq.NEXTVAL, 'Pending');

-- Insert order by 'Johannes Botha' for 'Blossom Bliss' (order_id will be 12)
INSERT INTO ORDERS (order_id, customer_id, packaging_id, order_date, total_price, shipping_method, tracking_number, order_status)
VALUES (order_seq.NEXTVAL, 1, 3, SYSDATE, 2100.00, 'Standard Delivery', tracking_seq.NEXTVAL, 'Processing');
--Inserting data into the ART_PIECE_CATEGORY table

-- Assign 'Famous Paintings' category to all art pieces
INSERT INTO ART_PIECE_CATEGORY (ap_id, cat_id)
VALUES (1, 1);  -- ap_id 1 corresponds to 'Harmony in Blue'

INSERT INTO ART_PIECE_CATEGORY (ap_id, cat_id)
VALUES (2, 1);  -- ap_id 2 corresponds to 'Autumn's Embrace'

INSERT INTO ART_PIECE_CATEGORY (ap_id, cat_id)
VALUES (3, 1);  -- ap_id 3 corresponds to 'Spring's Awakening'

INSERT INTO ART_PIECE_CATEGORY (ap_id, cat_id)
VALUES (4, 1);  -- ap_id 4 corresponds to 'Blossom Bliss'

INSERT INTO ART_PIECE_CATEGORY (ap_id, cat_id)
VALUES (5, 1);  -- ap_id 5 corresponds to 'City Lights'

INSERT INTO ART_PIECE_CATEGORY (ap_id, cat_id)
VALUES (6, 1);  -- ap_id 6 corresponds to 'Desert Solitude'

INSERT INTO ART_PIECE_CATEGORY (ap_id, cat_id)
VALUES (7, 1);  -- ap_id 7 corresponds to 'Summer Serenity'

INSERT INTO ART_PIECE_CATEGORY (ap_id, cat_id)
VALUES (8, 1);  -- ap_id 8 corresponds to 'Winter Whispers'

INSERT INTO ART_PIECE_CATEGORY (ap_id, cat_id)
VALUES (9, 1);  -- ap_id 9 corresponds to 'Ocean's Odyssey'
--Inserting data into the ORDER_DETAIL table

-- Insert order detail for order 1
INSERT INTO ORDER_DETAIL (order_id, art_piece_id, frame_id, quantity)
VALUES (1, 1, 1, 1);

-- Insert order detail for order 2
INSERT INTO ORDER_DETAIL (order_id, art_piece_id, frame_id, quantity)
VALUES (2, 2, 2, 2);

-- Insert order detail for order 3
INSERT INTO ORDER_DETAIL (order_id, art_piece_id, frame_id, quantity)
VALUES (3, 3, 3, 1);

-- Insert order detail for order 4
INSERT INTO ORDER_DETAIL (order_id, art_piece_id, frame_id, quantity)
VALUES (4, 4, 4, 2);

-- Insert order detail for order 5
INSERT INTO ORDER_DETAIL (order_id, art_piece_id, frame_id, quantity)
VALUES (5, 5, 1, 1);

-- Insert order detail for order 6
INSERT INTO ORDER_DETAIL (order_id, art_piece_id, frame_id, quantity)
VALUES (6, 6, 2, 1);

-- Insert order detail for order 7
INSERT INTO ORDER_DETAIL (order_id, art_piece_id, frame_id, quantity)
VALUES (7, 7, 3, 3);

-- Insert order detail for order 8 
INSERT INTO ORDER_DETAIL (order_id, art_piece_id, frame_id, quantity)
VALUES (8, 1, 4, 1);

-- Insert order detail for order 9 
INSERT INTO ORDER_DETAIL (order_id, art_piece_id, frame_id, quantity)
VALUES (9, 2, 1, 1);

-- Insert order detail for order 10 
INSERT INTO ORDER_DETAIL (order_id, art_piece_id, frame_id, quantity)
VALUES (10, 3, 2, 1);

-- Insert order detail for order 11 
INSERT INTO ORDER_DETAIL (order_id, art_piece_id, frame_id, quantity)
VALUES (11, 4, 3, 1);

-- Insert order detail for order 12 
INSERT INTO ORDER_DETAIL (order_id, art_piece_id, frame_id, quantity)
VALUES (12, 7, 2, 1); 
