#
# Command: mysql -u root -p < create_database.sql
#
DROP DATABASE IF EXISTS wisemapping;
CREATE USER IF NOT EXISTS 'wisemapping'@'%' IDENTIFIED BY 'password';

CREATE DATABASE IF NOT EXISTS wisemapping
  CHARACTER SET = 'utf8'
  COLLATE = 'utf8_unicode_ci';
GRANT ALL ON wisemapping.* TO 'wisemapping'@'%';
