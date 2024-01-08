/* @author : Ankita Gomkar 
*  @Date   : 2023-03-16
*  @note   : Bill,I am creating this table to store bill of all services
*
*/
CREATE TABLE `carservice`.`Bill` (
  `bill_id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  `bill_order_id` VARCHAR(45) NOT NULL DEFAULT '',
  `bill_name` VARCHAR(45) NOT NULL DEFAULT '',
  `bill_units` VARCHAR(45) NOT NULL DEFAULT '',
  `bill_price_per_unit` VARCHAR(45) NOT NULL DEFAULT '',
  `bill_total_cost` VARCHAR(45) NOT NULL DEFAULT '',
  PRIMARY KEY(`bill_id`)
);
/* @author : Ankita Gomkar 
*  @Date   : 2023-03-16
*  @note   : City,I am creating this table to store bill city details
*
*/
CREATE TABLE `carservice`.`City` (
  `city_id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  `city_name` VARCHAR(45) NOT NULL DEFAULT '',
  PRIMARY KEY(`city_id`)
);
/* @author : Ankita Gomkar 
*  @Date   : 2023-03-16
*  @note   : Company,I am creating this table to store company details
*
*/
CREATE TABLE `carservice`.`Company` (
  `company_id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  `company_name` VARCHAR(60) NOT NULL DEFAULT '',
  `company_description` VARCHAR(60) NOT NULL DEFAULT '',
  PRIMARY KEY(`company_id`)
);
/* @author : Ankita Gomkar 
*  @Date   : 2023-03-16
*  @note   : Country,I am creating this table to store company details
*
*/
CREATE TABLE `carservice`.`Country` (
  `country_id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  `country_name` VARCHAR(45) NOT NULL DEFAULT '',
  PRIMARY KEY(`country_id`)
);
/* @author : Ankita Gomkar 
*  @Date   : 2023-03-16
*  @note   : Month,I am creating this table to store month details
*
*/

CREATE TABLE `carservice`.`country` (
  `country_id` INTEGER UNSIGNED NOT NULL DEFAULT 0,
  `country_name` VARCHAR(45) NOT NULL DEFAULT '',
  PRIMARY KEY(`country_id`)
)


CREATE TABLE `carservice`.`month` (
  `month_id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  `month_name` VARCHAR(45) NOT NULL DEFAULT '',
  PRIMARY KEY(`month_id`)
)


CREATE TABLE `carservice`.`order` (
  `order_id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_customer_name` VARCHAR(255) NOT NULL DEFAULT '',
  `order_customer_mobile` VARCHAR(255) NOT NULL DEFAULT '',
  `order_total` VARCHAR(255) NOT NULL DEFAULT '',
  `order_status` VARCHAR(255) NOT NULL DEFAULT '',
  PRIMARY KEY(`order_id`)
)

CREATE TABLE `carservice`.`services` (
  `service_id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  `service_vehicle_id` VARCHAR(45) NOT NULL DEFAULT '',
  `service_date` VARCHAR(45) NOT NULL DEFAULT '',
  `service_cost` VARCHAR(45) NOT NULL DEFAULT '',
  `services_description` TEXT NOT NULL DEFAULT '',
  PRIMARY KEY(`service_id`)
)


CREATE TABLE `carservice`.`vehicle` (
  `vehicle_id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  `vehicle_name` VARCHAR(250) NOT NULL DEFAULT '',
  `vehicle_owner_name` VARCHAR(45) NOT NULL DEFAULT '',
  `vehicle_mobile` VARCHAR(45) NOT NULL DEFAULT '',
  `vehicle_email` VARCHAR(45) NOT NULL DEFAULT '',
  `vehicle_km` VARCHAR(45) NOT NULL DEFAULT '',
  `vehicle_last_service` VARCHAR(45) NOT NULL DEFAULT '',
  `vehicle_service_cost` VARCHAR(45) NOT NULL DEFAULT '',
  `vehicle_company` VARCHAR(45) NOT NULL DEFAULT '',
  `vehicle_type` VARCHAR(45) NOT NULL DEFAULT '',
  `vehicle_description` TEXT NOT NULL DEFAULT '',
  PRIMARY KEY(`vehicle_id`)
)

CREATE TABLE `carservice`.`user` (
  `user_id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_username` VARCHAR(45) NOT NULL DEFAULT '',
  `user_password` VARCHAR(45) NOT NULL DEFAULT '',
  `user_name` VARCHAR(200) NOT NULL DEFAULT '',
  `user_add` VARCHAR(230) NOT NULL DEFAULT '',
  `user_city` INTEGER UNSIGNED NOT NULL DEFAULT 0,
  `user_state` INTEGER UNSIGNED NOT NULL DEFAULT 0,
  `user_email` VARCHAR(45) NOT NULL DEFAULT '',
  `user_mobile` VARCHAR(45) NOT NULL DEFAULT '',
  `user_gender` VARCHAR(45) NOT NULL DEFAULT '',
  `user_dob` VARCHAR(45) NOT NULL DEFAULT '',
  PRIMARY KEY(`user_id`)
)


CREATE TABLE `carservice`.`state` (
  `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  `state_name` VARCHAR(50) NOT NULL DEFAULT '',
  PRIMARY KEY(`id`)
)


CREATE TABLE `carservice`.`user_creds` (
  `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  `userid` VARCHAR(50) NOT NULL DEFAULT '',
  `password` VARCHAR(50) NOT NULL DEFAULT '',
  PRIMARY KEY(`id`)
)
ENGINE = InnoDB;


ALTER TABLE `carservice`.`user` CHANGE COLUMN `user_id` `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
 DROP COLUMN `user_username`,
 DROP COLUMN `user_password`,
 CHANGE COLUMN `user_name` `name` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
 CHANGE COLUMN `user_add` `address` VARCHAR(230) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
 CHANGE COLUMN `user_city` `cityid` INTEGER UNSIGNED NOT NULL DEFAULT 0,
 CHANGE COLUMN `user_state` `stateid` INTEGER UNSIGNED NOT NULL DEFAULT 0,
 CHANGE COLUMN `user_email` `email` VARCHAR(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
 CHANGE COLUMN `user_mobile` `contact` VARCHAR(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
 CHANGE COLUMN `user_gender` `gender` VARCHAR(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
 CHANGE COLUMN `user_dob` `dob` VARCHAR(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
 ADD COLUMN `reg_data` VARCHAR(45) NOT NULL DEFAULT '' AFTER `isadmine`,
 ADD COLUMN `last_modified` VARCHAR(45) NOT NULL DEFAULT '' AFTER `reg_data`;
