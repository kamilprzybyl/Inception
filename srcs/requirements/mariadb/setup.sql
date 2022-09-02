CREATE DATABASE WordPress;
CREATE USER 'kprzybyl'@'localhost' IDENTIFIED BY 'passwd';
GRANT ALL ON WordPress.* TO 'kprzybyl'@'localhost' WITH GRANT OPTION;
FLUSH PRIVILEGES;
EXIT;