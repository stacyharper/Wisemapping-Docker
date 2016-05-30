#!/bin/bash

cd /wisemapping/config/database/mysql

mysql -u root -proot --host mysql < create-database.sql
mysql -u wisemapping -D wisemapping -ppassword --host mysql < create-schemas.sql
mysql -u wisemapping -D wisemapping -ppassword --host mysql < apopulate-schemas.sql
