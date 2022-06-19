<html>
	<h1>1.Software required:</h1>
	rbenv[linux]<br>
	ruby-build(this may request some of packages to run...)[linux]<br>
	(set ruby version 3.0.3 to default using rbenv)<br>
	Mysql(<a href="https://dev.mysql.com/downloads/mysql/8.0.html">Download mysql bundle[linux]</a>)<br>
	default-libmysqlclient-dev[linux debian]<br>
	<pre>gems:
  bundler
  mysql2(request some of mysql packages to install)</pre>
  <h2>2.Create Database and User</h2>
  <pre><code>
create database otoiawase;
create table otoiawase.table(otoi TEXT,name TEXT,kaisya TEXT,phone TEXT,mail TEXT,ip TEXT);
create user 'mysql'@'localhost' IDENTIFIED BY 'password';
grant all on *.* to 'mysql'@'localhost';
ALTER USER 'mysql'@'localhost' IDENTIFIED BY 'password';
exit
	</code></pre>
	3.change directory to this project's root.<br>
	4.start rails with argment <code>-b 0.0.0.0</code>
  <h3>If you got error when you login to mysql to create user, try this one:</h3>
  <h4>Access denied for user ‘root’@’localhost’</h4>
  Set root's password to default follow this:<br>
	1.Stop mysql server.<br>
	2.Execute 
<code>mysqld_safe --skip-grant-tables</code>
</span>
in another terminal<br>
3.Execute:
<pre><code>mysql
flush privileges;
delete from mysql.user;
create user 'root'@'localhost' IDENTIFIED BY '';</code></pre>
4.stop mysqld_safe<br>
5.start mysqld server
</html>
