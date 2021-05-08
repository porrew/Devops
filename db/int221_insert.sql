insert INTO Brand (brand_Id, brand_name)
values (001, 'Corsair');

insert INTO Brand (brand_Id, brand_name)
values (002, 'Gskill');

insert INTO Brand (brand_Id, brand_name)
values (003, 'Kingston');

INSERT INTO Color (color_Id, color_Name)
VALUES (001, 'Black');

INSERT INTO Color (color_Id, color_Name)
VALUES (002, 'White');

INSERT INTO Color (color_Id, color_Name)
VALUES (003, 'Silver');

INSERT INTO Product (product_Id, Product_Name, Description, Price, Date, Path, Brand_Brand_Id)
VALUES (001, 'VENGEANCE RGB PRO SL', '32GB (2x16GB) DDR4 DRAM 3200MHz C16', '6948.46', '2020-02-02', '001.png', '001');

INSERT INTO Product (product_Id, Product_Name, Description, Price, Date, Path, Brand_Brand_Id)
VALUES (002, 'VENGEANCE LPX', '32GB (2x16GB) DDR4 2400MHz C16', '6543.37', '2020-03-03', '002.png', '001');

INSERT INTO Product (product_Id, Product_Name, Description, Price, Date, Path, Brand_Brand_Id)
VALUES (003, 'Trident Z RGB', '16GB (2x8GB) DDR4-3200MHz CL16', '4690.00', '2020-04-04', '003.png', '002');

INSERT INTO Product (product_Id, Product_Name, Description, Price, Date, Path, Brand_Brand_Id)
VALUES (004, 'Trident Z', '16GB (2x8GB) DDR4-3200MHz CL14', '3899.00', '2020-05-05', '004.png', '002');

INSERT INTO Product (product_Id, Product_Name, Description, Price, Date, Path, Brand_Brand_Id)
VALUES (005, 'HyperX FURY', '8GB (8GBx1) DDR4 2400MHz CL15', '1290.00', '2020-06-06', '005.png', '003');

INSERT INTO Product (product_Id, Product_Name, Description, Price, Date, Path, Brand_Brand_Id)
VALUES (006, 'HyperX FURY', '4GB (4GBx1) DDR3 1600MHz CL10', '1190.00', '2020-07-07', '006.png', '003');

INSERT INTO Have (Product_Product_Id, Color_Color_Id)
VALUES (001, 001);

INSERT INTO Have (Product_Product_Id, Color_Color_Id)
VALUES (002, 001);

INSERT INTO Have (Product_Product_Id, Color_Color_Id)
VALUES (003, 001);

INSERT INTO Have (Product_Product_Id, Color_Color_Id)
VALUES (004, 003);

INSERT INTO Have (Product_Product_Id, Color_Color_Id)
VALUES (005, 001);

INSERT INTO Have (Product_Product_Id, Color_Color_Id)
VALUES (006, 002);

COMMIT;