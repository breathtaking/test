CREATE TABLE JAVARUSHCRUD.TEST (
  ID INT NOT NULL AUTO_INCREMENT,
  NAME VARCHAR(25) NOT NULL,
  AGE INT NOT NULL,
  IS_ADMIN TINYINT(1) NOT NULL DEFAULT '0',
  CREATED_DATE TIMESTAMP(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (ID));
