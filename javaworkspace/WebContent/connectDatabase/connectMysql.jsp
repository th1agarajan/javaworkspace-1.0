<div id="tutorialLinks">

<h1>Connect MySQL 5.1</h1>

<p><strong><u>Overview</u></strong></p>
<p>The MySQL® database has become the world's most popular open
source database because of its consistent fast performance, high
reliability and ease of use. It's used on every continent -- Yes, even
Antarctica! -- by individual Web developers as well as many of the
world's largest and fastest-growing organizations to save time and money
powering their high-volume Web sites, business-critical systems and
packaged software -- including industry leaders such as Yahoo!,
Alcatel-Lucent, Google, Nokia, YouTube, and Zappos.com.</p>

<p>Not only is MySQL the world's most popular open source database,
it's also become the database of choice for a new generation of
applications built on the LAMP stack (Linux, Apache, MySQL, PHP / Perl /
Python.) MySQL runs on more than 20 platforms including Linux, Windows,
OS/X, HP-UX, AIX, Netware, giving you the kind of flexibility that puts
you in control.</p>

<p>Whether you're new to database technology or an experienced
developer or DBA, MySQL offers a comprehensive range of certified
software, support, training and consulting to make you successful.</p>

<p><strong><u>For MySQL 5.1</u></strong></p>
<p><strong>For Windows users only</strong><br>
<p><strong><u>Pre-Requisites:</u></strong></p>
<ol>
	<li>jdk1.6.0_11(Works with previous versions of JDK) can be
	downloaded from <a href="http://www.java.com/en/download/index.jsp"
		target="_blank">here</a></li>
	<li>MySQL Server 5.1</li>
	<li>mysql-connector-java-3.0.11-stable-bin.jar</li>
</ol>

<p>&nbsp;</p>
<p><strong><u>Environment Variables:</u></strong></p>
<p><strong>Enter Variable name and Variable value which is
mentioned below. </strong></p>
<table border="1" cellspacing="0" cellpadding="0">
	<tr>
		<td width="139">
		<p align="right"><strong>Variable name:</strong></p>
		</td>
		<td width="451">
		<p><strong>JAVA_HOME</strong></p>
		</td>
	</tr>
	<tr>
		<td width="139">
		<p align="right"><strong>Variable value:</strong></p>
		</td>
		<td width="451" valign="top">
		<p><strong>C:\Program Files\Java\jdk1.6.0_11</strong></p>
		</td>
	</tr>
</table>
<br />
<table border="1" cellspacing="0" cellpadding="0">
	<tr>
		<td width="139">
		<p align="right"><strong>Variable name:</strong></p>
		</td>
		<td width="451">
		<p><strong>PATH</strong></p>
		</td>
	</tr>
	<tr>
		<td width="139">
		<p align="right"><strong>Variable value:</strong></p>
		</td>
		<td width="451" valign="top">
		<p><strong>C:\Program Files\Java\jdk1.6.0_11\bin</strong></p>
		</td>
	</tr>
</table>
<br />
<table border="1" cellspacing="0" cellpadding="0">
	<tr>
		<td width="139">
		<p align="right"><strong>Variable name:</strong></p>
		</td>
		<td width="451" valign="top">
		<p><strong>CLASSPATH</strong></p>
		</td>
	</tr>
	<tr>
		<td width="139">
		<p align="right"><strong>Variable value:</strong></p>
		</td>
		<td width="451" valign="top">
		<p><strong>.;C:\MysqlDriver\lib\mysql-connector-java-3.0.11-stable-bin.jar</strong></p>
		</td>
	</tr>
</table>
<p>&nbsp;</p>
<p><strong><u>Simple java program to connect Mysql with
java using JDBC</u></strong></p>
<p><strong><u>DB-Scripts</u></strong><u> </u></p>

<pre class="brush: sql">
CREATE DATABASE EMPLOYEE;

USE EMPLOYEE;

CREATE TABLE `employeedetails` (
  `EMPNAME` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT   INTO employee.employeedetails (EMPNAME)
   VALUES ('EMPNAME');
</pre>

<p><strong>&nbsp;</strong></p>
<p><strong><u>Program to connect Java with MySQL</u></strong></p>
<p><strong>&nbsp;</strong></p>
<p><strong>ConnectMySQL.java</strong></p>

<pre class="brush: java">
/**
 * ConnectMySQL.java
 */
package com.javaworkspace.connectmysql;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 * @author www.javaworkspace.com
 * 
 */
public class ConnectMySQL {
	public static void main(String[] args) {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection connection = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/EMPLOYEE", "root", "root");
			Statement statement = connection.createStatement();
			ResultSet resultSet = statement
					.executeQuery("SELECT EMPNAME FROM EMPLOYEEDETAILS");
			while (resultSet.next()) {
				System.out.println("EMPLOYEE NAME:"
						+ resultSet.getString("EMPNAME"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
</pre> <br />

<p><a
	href="http://www.javaworkspace.com/connectdatabase/connectSqlserver.do">How
to connect Java with SQLServer using JDBC driver</a><br />
<a href="http://www.javaworkspace.com/connectdatabase/connectOracle.do">How
to connect Java with Oracle using JDBC driver</a><br />
<a href="http://www.javaworkspace.com/createExecutableJar.do">Create
Executable File In Java</a><br />
<a href="http://www.javaworkspace.com/setClasspath.do">Click Here To
Know How To Set Classpath</a><br />
<a href="http://www.javaworkspace.com/pagerTags.do">Pager Tag
Tutorial</a><br />
<a href="http://www.javaworkspace.com/howToInstallMySQL.do">How To
Install MySQL</a><br />
<a href="http://www.javaworkspace.com/javaMail.do">Send E-mail
through java program</a><br />
<a href="http://www.javaworkspace.com/changeTomcatPortNumber.do">Change
Tomcat Port Number</a></p>

</div>