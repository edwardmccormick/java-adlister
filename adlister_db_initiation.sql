CREATE SCHEMA IF NOT EXISTS adlister_db DEFAULT CHARACTER SET utf8 ;
USE adlister_db ;
-- -----------------------------------------------------
-- Table adlister_db.users
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS adlister_db.users (
                                                 id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                                                 username VARCHAR(255) NULL,
                                                 email VARCHAR(255) NULL,
                                                 password VARCHAR(255) NULL,
                                                 PRIMARY KEY (id),
                                                 UNIQUE INDEX email_UNIQUE (email ASC) VISIBLE,
                                                 UNIQUE INDEX username_UNIQUE (username ASC) VISIBLE)
    ENGINE = InnoDB;
-- -----------------------------------------------------
-- Table adlister_db.ads
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS adlister_db.ads (
                                               ads_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                                               user_id INT UNSIGNED NOT NULL,
                                               title VARCHAR(255) NOT NULL,
                                               description TEXT NULL,
                                               PRIMARY KEY (ads_id),
                                               UNIQUE INDEX ads_id_UNIQUE (ads_id ASC) VISIBLE,
                                               INDEX id_idx (user_id ASC) VISIBLE,
                                               CONSTRAINT id
                                                   FOREIGN KEY (user_id)
                                                       REFERENCES adlister_db.users (id)
                                                       ON DELETE NO ACTION
                                                       ON UPDATE NO ACTION)
    ENGINE = InnoDB;