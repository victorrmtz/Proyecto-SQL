ALTER TABLE `cine`.`actor` 
CHANGE COLUMN `first_name` `first_name` VARCHAR(100) NULL ,
CHANGE COLUMN `last_name` `last_name` VARCHAR(100) NULL ;

ALTER TABLE `cine`.`category` 
CHANGE COLUMN `name` `name` VARCHAR(100) NULL DEFAULT NULL ;

ALTER TABLE `cine`.`film` 
CHANGE COLUMN `title` `title` VARCHAR(100) NULL DEFAULT NULL ,
CHANGE COLUMN `description` `description` VARCHAR(100) NULL DEFAULT NULL ,
CHANGE COLUMN `rating` `rating` VARCHAR(100) NULL DEFAULT NULL ,
CHANGE COLUMN `special_features` `special_features` VARCHAR(100) NULL DEFAULT NULL ;

ALTER TABLE `cine`.`film` 
CHANGE COLUMN `title` `title` VARCHAR(100) NULL DEFAULT NULL ,
CHANGE COLUMN `description` `description` VARCHAR(200) NULL DEFAULT NULL ,
CHANGE COLUMN `rating` `rating` VARCHAR(100) NULL DEFAULT NULL ,
CHANGE COLUMN `special_features` `special_features` VARCHAR(100) NULL DEFAULT NULL ;

ALTER TABLE `cine`.`language` 
CHANGE COLUMN `name` `name` VARCHAR(100) NULL DEFAULT NULL ;

ALTER TABLE `cine`.`old` 
CHANGE COLUMN `first_name` `first_name` VARCHAR(100) NULL DEFAULT NULL ,
CHANGE COLUMN `last_name` `last_name` VARCHAR(100) NULL DEFAULT NULL ,
CHANGE COLUMN `title` `title` VARCHAR(100) NULL DEFAULT NULL ;

ALTER TABLE `cine`.`rental` 
CHANGE COLUMN `rental_date` `rental_date` VARCHAR(100) NULL DEFAULT NULL ,
CHANGE COLUMN `return_date` `return_date` VARCHAR(100) NULL DEFAULT NULL ;
