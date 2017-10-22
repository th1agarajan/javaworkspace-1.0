<div id="tutorialLinks">

<p align="right"><strong>Updated On: Tuesday, August 18,
2009 </strong></p>
<p align="right"><strong>Created Date: Tuesday, August 18,
2009</strong></p>
<br />

<h1>Connect Postgre 8.4</h1>
<p><strong><u>For Postgre 8.4</u></strong></p>
<p><strong>For Windows users only</strong><br>
<p><strong><u>Pre-Requisites:</u></strong></p>
<ol>
	<li>jdk1.6.0_11</li>
	<li>Postgre 8.4</li>
	<li>postgresql-8.4-701.jdbc4.jar (for jdk 1.6)</li>
	<li>postgresql-8.4-701.jdbc3.jar (for previous version of jdk)</li>
	<li><a target="_blank"
		href="http://jdbc.postgresql.org/download.html">Download JDBC
	driver for postgre here</a></li>
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
		<p><strong>.;C:\PostgreDriver\lib\mysql-connector-java-3.0.11-stable-bin.jar</strong></p>
		</td>
	</tr>
</table>
<p>&nbsp;</p>
<p><strong><u>Simple java program to connect Postgre
with java using JDBC</u></strong></p>
<p><strong><u>DB-Scripts</u></strong><u> </u></p>

<pre class="brush: sql">
CREATE DATABASE EMPLOYEE;

USE EMPLOYEE;

CREATE TABLE `employeedetails` (
  `EMPNAME` varchar(20) DEFAULT NULL
);

INSERT   INTO employee.employeedetails (EMPNAME)
   VALUES ('EMPNAME');
</pre>

<p><strong>&nbsp;</strong></p>
<p><strong><u>Program to connect Java with Postgre</u></strong></p>
<p><strong>&nbsp;</strong></p>
<p><strong>ConnectPostgre.java</strong></p>

<pre class="brush: java">
/**
 * ConnectPostgre.java
 */
package com.javaworkspace.connectpostgre;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 * @author www.javaworkspace.com
 * 
 */
public class ConnectPostgre {
	public static void main(String[] args) {
		Connection connection = null;
		ResultSet resultSet = null;
		Statement statement = null;

		try {
			Class.forName("org.postgresql.Driver");
			connection = DriverManager.getConnection(
					"jdbc:postgresql://localhost:5432/EMPLOYEE", "postgres",
					"password");
			statement = connection.createStatement();
			resultSet = statement
					.executeQuery("SELECT EMPNAME FROM EMPLOYEEDETAILS");
			while (resultSet.next()) {
				System.out.println("EMPLOYEE NAME:"
						+ resultSet.getString("EMPNAME"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				resultSet.close();
				statement.close();
				connection.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
}
</pre> <br />

<p><a href="http://www.javaworkspace.com/connectdatabase/connectSqlserver.do">How
to connect Java with SQLServer using JDBC driver</a><br />
<a href="http://www.javaworkspace.com/connectdatabase/connectOracle.do">How to
connect Java with Oracle using JDBC driver</a><br />
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