insert INTO brand (brand_Id, brand_name)
values (001, 'Corsair');

insert INTO brand (brand_Id, brand_name)
values (002, 'Gskill');

insert INTO brand (brand_Id, brand_name)
values (003, 'Kingston');

INSERT INTO color (color_Id, color_Name)
VALUES (001, 'Black');

INSERT INTO color (color_Id, color_Name)
VALUES (002, 'White');

INSERT INTO color (color_Id, color_Name)
VALUES (003, 'Silver');

INSERT INTO product (product_Id, Product_Name, Description, Price, Date, Path)
VALUES (001, 'VENGEANCE RGB PRO SL', '32GB (2x16GB) DDR4 DRAM 3200MHz C16', '6948.46', '02-02-2020', '001.png');

INSERT INTO product (product_Id, Product_Name, Description, Price, Date, Path)
VALUES (002, 'VENGEANCE LPX', '32GB (2x16GB) DDR4 2400MHz C16', '6543.37', '03-03-2020', '002.png');

INSERT INTO product (product_Id, Product_Name, Description, Price, Date, Path)
VALUES (003, 'Trident Z RGB', '16GB (2x8GB) DDR4-3200MHz CL16', '4690.00', '04-04-2020', '003.png');

INSERT INTO product (product_Id, Product_Name, Description, Price, Date, Path)
VALUES (004, 'Trident Z', '16GB (2x8GB) DDR4-3200MHz CL14', '3899.00', '05-05-2020', '004.png');

INSERT INTO product (product_Id, Product_Name, Description, Price, Date, Path)
VALUES (005, 'HyperX FURY', '8GB (8GBx1) DDR4 2400MHz CL15', '1290.00', '06-06-2020', '005.png');

INSERT INTO product (product_Id, Product_Name, Description, Price, Date, Path)
VALUES (006, 'HyperX FURY', '4GB (4GBx1) DDR3 1600MHz CL10', '1190.00', '07-07-2020', '006.png');

INSERT INTO have (product_id, color_id)
VALUES (001, 001);

INSERT INTO have (product_id, color_id)
VALUES (002, 001);

INSERT INTO have (product_id, color_id)
VALUES (003, 001);

INSERT INTO have (product_id, color_id)
VALUES (004, 003);

INSERT INTO have (product_id, color_id)
VALUES (005, 001);

INSERT INTO have (product_id, color_id)
VALUES (006, 002);

COMMIT;