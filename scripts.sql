CREATE TABLE Product_type(type_id serial PRIMARY KEY,
                            type_name varchar(20),
                            category varchar(10));

CREATE TABLE Brand(id_brand serial PRIMARY KEY,
                    name_brand varchar(20),
                    description text);

CREATE TABLE Product(id_product serial,
                    price money,
                    color varchar(15),
                    skin_type varchar(15),
                    top_coat varchar(10),
                    description text,
                    id_brand serial REFERENCES Brand,
                    type_id serial REFERENCES Product_type);