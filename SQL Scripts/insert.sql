
INSERT INTO livestock(tag_num,birth_date,breed,sex,last_tb_test,curr_owner,prev_owner,herd_num)
VALUES

  (371001486,  8/9/2017 ,'Limousine', 'M', 22/7/2022, 'Liam Flynn' ,'Billy Power',20098690),
  
  (372002960, 1/1/2022 ,'Limousine','M', 22/7/2022, 'Liam Flynn' ,'Aaron Cheasty',20098690),
  (372002963, 7/1/2022 ,'Limousine', 'F', 22/7/2022, 'Liam Flynn' ,'Aaron Cheasty',20098690),
  (372002967, 14/1/2022 ,'Limousine', 'F', 22/7/2022, 'Liam Flynn' ,'Aaron Cheasty',20098690),
  (372002971, 20/1/2022 ,'Simmential', 'F', 22/7/2022, 'Liam Flynn' ,'Aaron Cheasty',20098690),
  (372002973, 21/1/2022 ,'Simmential', 'F', 22/7/2022, 'Liam Flynn' ,'Aaron Cheasty',20098690),
  (372002976, 25/1/2022 ,'Simmential', 'F', 22/7/2022, 'Liam Flynn' ,'Aaron Cheasty',20098690),
  (372002980, 30/1/2022 ,'Limousine', 'F', 22/7/2022, 'Liam Flynn' ,'Aaron Cheasty',20098690),
  (372002984, 1/2/2022 ,'Limousine', 'F', 22/7/2022, 'Liam Flynn' ,'Aaron Cheasty',20098690),
  
  (372000101, 1/1/2022 ,'Charlaois', 'M', 22/7/2022, 'Liam Flynn' ,null,20098690),
  (372000102, 7/1/2022 ,'Charlaois', 'F', 22/7/2022, 'Liam Flynn' ,null,20098690),
  (372000103, 14/1/2022 ,'Charlaois', 'M', 22/7/2022, 'Liam Flynn' ,null,20098690),
  (372000104, 20/1/2022 ,'Charlaois', 'M', 22/7/2022, 'Liam Flynn' ,null,20098690),
  (372000105, 21/1/2022 ,'Charlaois', 'F', 22/7/2022, 'Liam Flynn' ,null,20098690),
  (372000106, 25/1/2022 ,'Charlaois', 'F', 22/7/2022, 'Liam Flynn' ,null,20098690),
  (372000107, 30/1/2022 ,'Charlaois', 'M', 22/7/2022, 'Liam Flynn' ,null,20098690),
  (372000108, 1/2/2022 ,'Charlaois', 'F', 22/7/2022, 'Liam Flynn' ,null,20098690)
;

INSERT INTO medication(batch_num,purch_date,expiry_date,application_method,dosage,withdrawal_period,cost)
VALUES
  (2000998, 3/5/2022 ,3/11/2022, 'subcutaneous', '10 mls/kg', '2 weeks',49.99),
  (2000999, 6/8/2022 ,6/12/2023, 'intravascular', '5 mls/kg', '16 days' ,19.99),
  (2001000, 4/9/2022 ,4/10/2023, 'intramuscular', '10 mls/kg', '10 days' ,23.99),
  (2001001, 10/9/2022 ,10/3/2023, 'subcutaneous', '10 mls/kg', '2 weeks' ,49.99),
  (2001002, 10/9/2022 ,10/3/2023, 'subcutaneous', '10 mls/kg', '2 weeks' ,49.99),
  (20010003, 11/11/2022 ,11/3/2024, 'intravascular', '5 mls/kg', '16 days',19.99)
;

INSERT INTO medication_usages(medic_num,date_used,amount_used,batch_num)
VALUES 
 (1,7/5/2022,80,2000998),
 (2,21/9/2022,10,2000999),
 (3,16/10/2022,50,2001000),
 (4,4/9/2022,20,2000998)
 ;
 
  INSERT INTO fields(field_id,plot_id,crop,soil_qual,ph_level)
VALUES
(1,'1A,2A','Grass',8,6),
(3,'3A,3B','Grass',6,8),
(5,'5A, 5B','Grass',10,6),
(8,'8A,8B','Grass',6,7)
;
  INSERT INTO fields(field_id,crop,soil_qual,ph_level)
VALUES
(2,'Grass',5,6),
(4,'Grass',7,6),
(6,'Grass',5,4),
(7,'Barley',9,8)
;
  INSERT INTO forage(cut_num,forage_type,amount,field_id)
VALUES
(3,'Silage',49,'2')
;

  INSERT INTO forage(cut_num,forage_type,amount,field_id,plot_id)
VALUES
(1,'Silage',67,'1','1A'),
(2,'Hay',55,'1','1B'),
(4,'Silage',63,'3','3A'),
(5,'Hay',22,'1','1A');

 INSERT INTO forage_usages(feed_num,date_fed,amount_used,cut_num)
VALUES 
 (1,13/11/2022,3,4),
 (2,14/11/2022,2,4),
 (3,15/11/2022,3,4),
 (4,16/11/2022,2,4);
 
  INSERT INTO cereals(batch_num,purch_date,cost,cereal_type,weight)
VALUES
(00201,10/11/2022,110.00,'Gain Feed Nuts',748.98),
(00202,17/11/2022,109.30,'Gain Feed Nuts',746.25),
(00203,24/11/2022,111.20,'Gain Feed Nuts',749.40),
(00204,1/12/2022,105.00,'Gain Feed Nuts',743.00),
(00205,8/12/2022,110.00,'Gain Feed Nuts',749.00)
;

 INSERT INTO cereal_usages(feed_num,date_fed,batch_num)
VALUES 
 (1,12/11/2022,00201),
 (2,15/11/2022,00201),
 (3,17/11/2022,00202),
 (4,20/11/2022,00202),
 (5,25/11/2022,00203),
 (6,30/11/2022,00203),
 (7,2/12/2022,00204),
 (8,7/11/2022,00204)
 ;
 
INSERT INTO agrochemicals(agrochem_id,purch_date,cost,chem_units,npk_value)
VALUES
(001,4/7/2022,88.99,'200',15-15-15),
(003,5/8/2022,92.50,'240','15-15-20')
;
INSERT INTO agrochemicals(agrochem_id,purch_date,cost,cas_num,chem_name)
VALUES
(002,25/7/2022,55.40,1071-83-6,'Dock-Whacker' ),
(004,27/8/2022,50.00,1057-67-2,'Weed-Killa')
;
 INSERT INTO agrochemical_usages(spread_num,spread_date,kl_p_acre,op_pu_num,chems_used,fields_spread)
VALUES
(1,6/7/2022,50,298454,000001,1),
(2,30/7/2022,2,543556,000002,5),
(3,8/8/2022,46,298454,000003,3),
(4,29/8/2022,2,543556,000004,8)
;

