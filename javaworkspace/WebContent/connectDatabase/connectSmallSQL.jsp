<div id="tutorialLinks">

<h1>Connect Java with SmallSQL Tutorial</h1>

<p><strong><u>Overview</u></strong></p>
<p>The SmallSQL Database is a 100% pure Java DBMS for desktop
applications. It has a JDBC 3.0 driver and supports SQL-92 and SQL-99
standards. It has a very small footprint of approx. 200KB for driver and
database together. This is very small for a JDBC 3.0 interface. The
difference to other 100% pure Java databases is that it has no network
interface and user management. The target applications are Java desktop
applications. There is no installation required.</p>

<p>You can download SmallSQL DB from the <a
	href="http://sourceforge.net/projects/smallsql/files/" target="_blank">Downloads</a>
page on this site.</p>

<p><strong>For Windows users only</strong><br>
<p><strong><u>Pre-Requisites:</u></strong></p>

<ol>
	<li>jdk1.6.0_11(Works with previous versions of JDK)</li>
	<li>Small SQL 0.20</li>
	<li>smallsql.jar</li>
</ol>

<p><strong><u>Environment Variables:</u></strong></p>
<p>Enter Variable name and Variable value which is mentioned below.</p>
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
		<p><strong>.;C:\SmallSQL\lib\smallsql.jar</strong></p>
		</td>
	</tr>
</table>

<p>&nbsp;</p>

<p><strong><u>DB-Scripts</u></strong><u> </u></p>
<p>&nbsp;</p>
<pre class="brush: sql">
C:\SmallSQL\lib>java -jar smallsql.jar
SmallSQL Database command line tool

        Version: 0.20
        Current database:

        Use the USE command to change the database context.
        Type 2 times ENTER to execute any SQL command.
CREATE DATABASE C:\SmallSQL\database\EMPLOYEEDB

USE C:\SmallSQL\database\EMPLOYEEDB

CREATE TABLE employeedetails (EMPNAME varchar(20))

INSERT INTO employeedetails (EMPNAME) VALUES ('EMPNAME1')

INSERT INTO employeedetails (EMPNAME) VALUES ('EMPNAME2')

INSERT INTO employeedetails (EMPNAME) VALUES ('EMPNAME3')

SELECT EMPNAME FROM employeedetails

EMPNAME
EMPNAME1
EMPNAME2
EMPNAME3 
</pre>

<p>&nbsp;</p>
<p><strong>Simple java program to connect Derby Database
with java using JDBC</strong></p>
<p><strong>&nbsp;</strong></p>
<p><strong>ConnectDerby.java</strong></p>
<pre class="brush: java">
/**
 * ConnectSmallSQL.java
 */
package com.javaworkspace.connectsmallsql;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 * @author www.javaworkspace.com
 * 
 */
public class ConnectSmallSQL {
	public static void main(String[] args) {

		Connection connection = null;
		ResultSet resultSet = null;
		Statement statement = null;

		try {
			Class.forName("smallsql.database.SSDriver");
			connection = DriverManager
					.getConnection("jdbc:smallsql:C:\\SmallSQL\\database\\EMPLOYEEDB");
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
</pre>
<p><strong>&nbsp;</strong></p>
<p>You may encounter this error "A single SmallSQL Database can only
be opened from a single process." To avoid this close the
connection(Just close the command prompt) and try once again.</p>
<p><strong>&nbsp;</strong></p>

<p><a
	href="http://www.javaworkspace.com/connectdatabase/connectMysql.do">How
to connect Java with MySQL using JDBC driver</a><br />
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