# Analysis of the company situation

## Company objectives (mission of the environment)

Jane, an artist, has been running her small art business on Instagram for the past two years. However, with a rapid increase in orders, her current system of using notepads and a planning board to organize orders is no longer sufficient. To achieve her goal of providing customers with high-quality art pieces and a convenient shopping experience, Jane needs an e-commerce platform with a user-friendly interface. She requires a comprehensive database system that accurately describes each art piece's size, materials, pricing, and framing options. This will enable customers to make informed purchases and ensure they receive the artwork they expected.

The database system will also help Jane manage inventory levels and prevent overselling or stock shortages. It will streamline the order fulfilment process, enabling her to process orders promptly. The system will also minimize delays and errors, and provide real-time updates to customers about their shipment's status. By offering a reliable and high-quality online shopping experience, Jane aims to establish a strong reputation in the art market. She wants to attract repeat customers and increase the growth and profitability of her business.

## Company operations (general operating environment)

### Currently:
1.  **Art creation and upload:** Jane creates digital art pieces and uploads pictures and descriptions of them to Instagram.
2.  **Art browsing and ordering:** Customers browse the Instagram page to find art pieces that they like and then send a DM (direct message) to Jane via Instagram, detailing what they would like to order.
3.  **Order processing and fulfilment:** Jane uses a notepad and a planning board to keep track of all her orders. She updates her notes and planning board as each order is created or completed.
4.  **Order tracking and confirmation:** Jane sends the customer a message (DM) on Instagram when the order has been completed and when they can roughly expect delivery.
5.  **Shipping:** Jane drops off the completed orders to a 3rd party shipping company for delivery to her customers.

### Once the database system is implemented:
1.  **Art creation and upload:** Jane will create digital art pieces and upload them to the database along with attributes such as descriptions, pricing and shipping information.
2.  **Art browsing and ordering:** Customers will browse the art pieces on the e-commerce platform, add the desired pieces (and frames) to their cart and place their order.
3.  **Order processing and fulfilment:** Jane will receive the order information, process the payment and then package the art piece. She will update the order status and shipment information in the database. These updates will be visible to the customer.
4.  **Order tracking and confirmation:** The customer will receive an email confirmation of the order. The email will contain details such as the order number, art piece, frame, price, shipping address, as well as the expected date of delivery. Customers can also track their order status and shipment information on the e-commerce platform.
5.  **Shipping:** Jane drops off the completed orders to a 3rd party shipping company for delivery to her customers.

## Problems and constraints

### Problems:
1.  Jane's current system of using notepads and a planning board to organize orders is no longer sufficient. Manually taking notes is time-consuming and often inaccurate, resulting in orders getting mixed up and ultimately delayed.
2.  There is no easy way for Jane to keep track of all her art pieces and frames, which leads to errors in inventory management. This leads to customers ordering items that are out of stock. This causes delays (and sometimes even cancellations) of orders.
3.  Order fulfilment and shipment tracking are not well organized, leading to delays and errors. It is difficult for Jane to constantly keep customers up to date on the status of their orders as she has to manually message each customer upon request for an update on the order.
4.  There is a lack of integration with other systems, such as financial management software, which causes inefficiencies. There is also no way for Jane to integrate her current system of taking notes on paper with, for example, accounting software.
5.  There is a lack of security measures to protect sensitive customer and business data, which can compromise customer trust and lead to legal and financial consequences. Jane often times has to write PII (Personally Identifiable Information) on paper that is not stored in a secure fashion.
6.  There is a lack of reporting and analytics capabilities to monitor sales, trends, and other key performance indicators. This makes is it difficult for Jane to make data-driven decisions. As Jane’s current method of order management is based on notes on paper, she has no way of easily utilizing software such as marketing optimisation programs.
7.  The existing system is not scalable to accommodate the future growth of Jane's art business, which hinders the company's expansion and competitiveness.

### Constraints:
1.  Jane has a fixed budget allocated for the project, which limits the resources available for the implementation thereof.
2.  The database needs to be delivered within six months, which puts a time constraint on the project and will necessitate efficient project management and execution.
3.  Jane has a specific set of requirements for the database, which need to be met in order to achieve the project objectives. This includes functions such as a range of framing options that are core to the business.
4.  The database must be scalable in order to be able to accommodate future growth.

# Database system specifications
## Objectives to solve the problems identified
1.  Develop and implement a database system that is organized and efficient. This will facilitate the accurate tracking of all art pieces, frames and their information. This will also eliminate inaccuracies and inconsistencies in Jane’s business data.
2.  Establish a robust inventory tracking system that accurately monitors stock levels. This will prevent overselling and ensure correct order fulfilment. The system will necessitate integrating the inventory system with the database and setting up automated alerts to notify Jane when stock levels are running low.
3.  Streamline the order fulfilment process to reduce delays and errors. This will involve implementing an order management system that is integrated with the database. Customers will be able to review the status of their order online, without having to contact Jane directly.
4.  Integration with Financial Management Software. The database will allow for seamless integration with financial management software, reducing errors and inefficiencies caused by the current paper-based system.
5.  Establish strong security measures to protect sensitive customer and business data. This will involve implementing secure data storage, establishing access controls, as well as setting up regular data backups.
6.  Enhance the online art business’ marketing and promotional efforts through email campaigns and social media integration. The data in the database will be very valuable and will be able to provide customer analytics that can be used in promotional email campaigns.
7.  Develop and implement a scalable system that can accommodate the future growth of the online art business. This will involve designing a flexible database architecture that can easily be expanded or modified as the business changes and grows.

To solve the current organisational problems, a database must be designed and implemented. The objective is to design a database that is reliable, organized and provides the required information to the company. It must be user-friendly and feasible with regard to the problems and constraints listed above. Data integrity will be ensured by creating a database with multiple entities with relationships between them. The business rules stipulated above, provide a template for the entities and their attributes. Data will be stored and organized in such a way that there will be easy access to information and updates can be made effortlessly. The database design will adhere to entity- and referential integrity, ensuring unique records and maintained relationships for accurate and reliable data.

## Scope

Jane's online art business requires a database system that is both comprehensive and user-friendly. The system should manage all aspects of the art sales process effectively. To achieve this, the database system will track the inventory of all art pieces, with accurate descriptions, pricing, and shipping information. The system will help Jane ensure that customers receive the artwork that they expected and make informed purchasing decisions. This will be achieved by eliminating inaccuracies and inconsistencies in Jane’s business data.

Furthermore, the database system will help Jane manage customer accounts and communication efficiently. Each customer will have their own account and login credentials to browse art pieces, place orders, and track the status of their shipments. This will greatly reduce the amount of time Jane has to spend responding to customer messages.

Additionally, the database system will provide reporting and analytics capabilities to monitor sales, trends, and other key performance indicators. This will allow Jane to make data-driven decisions and identify areas for improvement in the business.

The system will be developed using Oracle. It will be designed using industry best practices, ensuring data security, privacy, and integrity. It will also be scalable and flexible to accommodate future growth and changes in business needs.

## Boundaries

1.  **Budget:** The project must be completed within the specific budget allocated by Jane. The cost of software, hardware, and resources must be within the budget. Since Jane is running a business that is still relatively small, this boundary has to be strongly adhered to.
2.  **Time:** The project must be completed within the specific timeframe agreed upon by Jane. The timeframe that was agreed upon for the design and implementation of the database, is six (6) months.
3.  **Human Resources:** The project team must be efficient in their use of human resources to meet the project's objectives. The budget does not permit the hiring of additional team members in order to speed up project delivery.
4.  **Software:** The database system must be compatible with the existing software used by Jane (Windows 11 Professional). Any new software purchased for the project must comply with the budget constraints.
5.  **Data privacy:** The database system must comply with relevant data privacy laws and regulations. This may limit the collection, storage, and use of certain types of data. Such limitations include legislation such as the POPI Act.
6.  **Data security:** The database system must be designed in a fashion that protects against unauthorized access and any other security threats. All best practices must be adhered to when the database is being designed and implemented.
7.  **System performance:** The database system must be able to handle a certain volume of data and users without compromising performance. The system must be both responsive and user-friendly.
8.  **User training:** Jane must be trained on how to use the database system effectively and efficiently. Jane does not have a computer science background and will require training regarding the operation of the database.

# Conceptual Design
## Business Rules

1.  One customer can make many orders.
2.  One order can have many art pieces.
3.  Art pieces can either be of the line-art type or of the illustration type, but not both.
4.  Each art piece can fall into one or multiple categories and each category can contain one to many art pieces.
5.  Line-art art pieces have a line thickness and paper type as properties while abstract art pieces have style, colours and textures as properties.
6.  One art piece can have either one frame or no frame at all.
7.  One order can have one delivery address.
8.  One order must contain one and only one type of packaging.
9.  The company offers different options for packing. One type of packaging material can be used in multiple different orders.
10.  An order can only be placed for an art piece that is currently available in stock.
11.  An order must contain at least one art piece.
12.  An order can be shipped only if its status is not cancelled.
13.  A type of art piece can be part of multiple orders.
14.  A type of frame can be part of multiple orders.
15.  The quantity available for an art piece or frame must be decremented when an order is placed.
16.  The quantity available for an art piece or frame must be incremented when an order is cancelled.
17.  The quantity available for a packaging material must be decremented when an order is placed.
18.  The quantity available for packaging material must be incremented when an order is cancelled.
19.  An order must have a unique tracking number.
20.  If a customer adds a frame and art piece combo to their cart, they must be able to increase the quantity, if they want multiple of the same combos.
21.  Customers may not be able to place an order with only a frame, all orders must contain an art piece for every frame.
22.  A person must have placed at least one order to be considered a customer.

## ERD Entities

1.  ORDERS
2.  ORDER_DETAILS
3.  ART_PIECE
4.  LINE_ART
5.  ABSTRACT_ART
6.  CATEGORY
7.  ART_PIECE_CATEGORY
8.  FRAME
9.  CUSTOMER
10.  PACKAGING


![ERD](https://github.com/IvanPotgieter01/ArtShop/assets/109952133/04d8d832-1d71-4299-98dc-50d66db02069)

## Notes on ER Diagram
### 1.	Weak relationships:
* Between CUSTOMER and ORDERS. The FK customer_id does not form part of the primary key of the ORDERS entity (order_id).
* Between PACKAGING and ORDERS. The FK packaging_id does not form part of the primary key of the ORDERS entity (order_id).

### 2.	Strong relationships:
* Between CATEGORY and ART_PIECE_CATEGORY. The FK category_id forms part of the primary key of the ART_PIECE_CATEGORY entity (Composite primary key consisting of category_id and art_piece_id).
* Between ART_PIECE and ART_PIECE_CATEGORY. The FK art_piece_id forms part of the primary key of the ART_PIECE_CATEGORY entity (Composite primary key consisting of category_id and art_piece_id).
* Between FRAME and ORDER_DETAIL. The FK frame_id forms part of the primary key of the ORDER_DETAIL entity (Composite primary key consisting of frame_id, art_piece_id and order_id).
* Between ART_PIECE and ORDER_DETAIL. The FK art_piece_id forms part of the primary key of the ORDER_DETAIL entity (Composite primary key consisting of frame_id, art_piece_id and order_id).
* Between ORDERS and ORDER_DETAIL. The FK order_id forms part of the primary key of the ORDER_DETAIL entity (Composite primary key consisting of frame_id, art_piece_id and order_id).

### 3.	Weak entities:
* ORDER_DETAIL (this entity is dependent on the ORDERS and ART_PIECE entities to exist)

### 4.	Composite/ bridge entities:
* ART_PIECE_CATEGORY entity
* ORDER_DETAIL entity

### 5.	Composite keys:
* Composite primary key consisting of category_id and art_piece_id (ART_PIECE_CATEGORY entity).
* Composite primary key consisting of frame_id, art_piece_id and order_id (ORDER_DETAIL entity).

### 6.	Optional relationships:
* An instance of ORDERS entity may or may not be associated with an instance of FRAME entity.

### 7.	Mandatory relationships:
* The relationship between ART_PIECE and it two subtypes (LINE_ART and ABSTRACT_ART).


## Logical Design
ORDERS (order_id (PK), customer_id (FK), packaging_id (FK),  order_date, total_price, shipping_method, tracking_number, order_status)
* PRIMARY KEY: order_id
* FOREIGN KEY: customer_id REFERENCES CUSTOMER
* FOREIGN KEY: packaging_id REFERENCES PACKAGING

CUSTOMER (customer_id (PK), first_name, last_name, email, customer_password, shipping_address, billing_address)
* PRIMARY KEY: customer_id

PACKAGING (packaging_id (PK), packaging_name, descrip, price, quantity_available)
* PRIMARY KEY: packaging_id

ORDER_DETAIL (order_id (PKFK), art_piece_id (PKFK), frame_id (PKFK), quantity)
* PRIMARY KEY, FOREIGN KEY: order_id REFERENCES ODER
* PRIMARY KEY, FOREIGN KEY: art_piece_id REFERENCES ART_PIECE
* PRIMARY KEY, FOREIGN KEY: frame_id REFERENCES FRAME

FRAME (frame_id (PK), frame_name, descrip, colour, price, quantity_available)
* PRIMARY KEY: frame_id

ART_PIECE (art_piece_id (PK), art_piece_name, descrip, dimensions, price, type quantity_available)
* PRIMARY KEY: art_piece_id

LINE_ART (art_piece_id (PK), thickness, paper_type)
* PRIMARY KEY: art_piece_id

ABSTRACT_ART (art_piece_id (PK), style, colour, texture)
* PRIMARY KEY: art_piece_id

CATEGORY (category_id (PK), decription)
* PRIMARY KEY: category_id

ART_PIECE_CATEGORY (category_id (PKFK), art_piece_id (PKFK))
* PRIMARY KEY, FOREIGN KEY: category_id REFERENCES CATEGORY
* PRIMARY KEY, FOREIGN KEY: art_piece_id REFERENCES ART_PIECE

