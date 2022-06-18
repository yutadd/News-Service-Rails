<html>
  <h1>1.install reqire software (linux)</h1><br>
  install rbenv
  install rbenv-build
  build ruby version 3.0.3
  set it to default ruby.  
  install 2gems:
    bundler
    mysql2
    
  install Mysql-Bundle
  <a href="https://dev.mysql.com/downloads/mysql/8.0.html">Download mysql</a>
 <h2>2.Create Database and User</h2>
create database otoiawase;<br>
create table otoiawase.table(otoi TEXT,name TEXT,kaisya TEXT,phone TEXT,mail TEXT,ip TEXT);<br>
create user 'mysql'@'localhost' IDENTIFIED BY 'password';<br>
grant all on *.* to 'mysql'@'localhost';<br>
ALTER USER 'mysql'@'localhost' IDENTIFIED BY 'password';<br>


</html>
