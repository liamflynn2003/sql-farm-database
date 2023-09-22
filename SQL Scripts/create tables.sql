
DROP TABLE IF EXISTS livestock;
CREATE TABLE livestock
(
  tag_num INT PRIMARY KEY auto_increment,
  birth_date date NOT NULL,
  breed VARCHAR(20)NOT NULL,
  sex CHAR(1)NOT NULL,
  last_tb_test DATE NOT NULL,
  curr_owner VARCHAR(35)NOT NULL,
  prev_owner VARCHAR(35),
  herd_num INT NOT NULL
);

SET foreign_key_checks = 0;

DROP TABLE IF EXISTS medication_usages;
CREATE TABLE medication_usages
(
  medic_num int PRIMARY KEY AUTO_INCREMENT,
  date_used date NOT NULL,
  amount_used int NOT NULL,
  batch_num INT,
  FOREIGN KEY medication_fk(batch_num) REFERENCES medication(batch_num)
  ON UPDATE CASCADE
  ON DELETE SET NULL
);

DROP TABLE IF EXISTS medication;
CREATE TABLE medication
(
  batch_num INT(11) PRIMARY KEY auto_increment,
  purch_date DATE NOT NULL,
  expiry_date DATE NOT NULL,
  application_method varchar(15) NOT NULL,
  dosage VARCHAR(16) NOT NULL,
  withdrawal_period VARCHAR(10) NOT NULL,
  cost decimal(5,2) NOT NULL
);

DROP TABLE IF EXISTS forage_usages;
CREATE TABLE forage_usages
(
  feed_num int PRIMARY KEY AUTO_INCREMENT,
  date_fed DATE,
  amount_used int(3) NOT NULL,
  cut_num INT(2),
  FOREIGN KEY forage_fk(cut_num) REFERENCES forage(cut_num)
  ON UPDATE CASCADE
  ON DELETE SET NULL
);

DROP TABLE IF EXISTS forage;
CREATE TABLE forage
(
  cut_num INT(2) PRIMARY KEY auto_increment,
  forage_type varchar(10) NOT NULL,
  amount INT(3) NOT NULL,
  field_id varchar(3) NULL,
  plot_id varchar(3) NULL,
  FOREIGN KEY field_fk(field_id) REFERENCES fields(field_id)
  ON UPDATE CASCADE
  ON DELETE SET NULL
);

DROP TABLE IF EXISTS fields;
CREATE TABLE fields
(
  field_id varchar(2) PRIMARY KEY,
  plot_id varchar(10) UNIQUE KEY NULL,
  crop varchar(15) NOT NULL,
  soil_qual int(2) not null,
  ph_level int(2) not null
);

DROP TABLE IF EXISTS cereal_usages;
CREATE TABLE cereal_usages
(
  feed_num int PRIMARY KEY AUTO_INCREMENT,
  date_fed date,
  batch_num INT(2),
  FOREIGN KEY cereals_fk(batch_num) REFERENCES cereals(batch_num)
  ON UPDATE CASCADE
  ON DELETE SET NULL
);

DROP TABLE IF EXISTS cereals;
CREATE TABLE cereals
(
  batch_num int(12) PRIMARY KEY,
  purch_date date NOT NULL,
  cost decimal(5,2) NOT NULL,
  cereal_type varchar(20) not null,
  weight decimal(5,2) not null
);

DROP TABLE IF EXISTS agrochemicals;
CREATE TABLE agrochemicals
(
  agrochem_id int(6) PRIMARY KEY auto_increment,
  purch_date date NOT NULL,
  cost decimal(5,2) NOT NULL,
  chem_units int(20) null,
  npk_value varchar(8) null,
  cas_num int(20) null,
  chem_name varchar(15) null
);

DROP TABLE IF EXISTS agrochemical_usages;
CREATE TABLE agrochemical_usages
(
  spread_num INT(3) PRIMARY KEY auto_increment,
  spread_date DATE NOT NULL,
  kl_p_acre int(3) NOT NULL,
  op_pu_num int(9) NOT NULL,
  chems_used int(6),
  fields_spread VARCHAR(2),
   FOREIGN KEY field_fk(fields_spread) REFERENCES fields(field_id)
   ON UPDATE CASCADE
   ON DELETE SET NULL,
   FOREIGN KEY chems_fk(chems_used) REFERENCES agrochemicals(agrochem_id)
   ON UPDATE CASCADE
   ON DELETE SET NULL
);

SET foreign_key_checks = 1;