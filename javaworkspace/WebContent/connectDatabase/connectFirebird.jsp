<div id="tutorialLinks">

<h2>Connect Java with Firebird Tutorial</h2>

<p><strong><u>Overview</u></strong></p>
<p>Firebird is an open source relational database management system
that runs on GNU/Linux, Windows, and a variety of Unix platforms. The
database forked from Borland's open source edition of InterBase in 2000,
but since Firebird 1.5 the code has been largely rewritten.</p>

<p>You can download Firebird DB from the <a
	href="http://www.firebirdsql.org/index.php?op=files" target="_blank">Downloads</a>
page on this site.</p>

<p><strong>For Windows users only</strong><br>
<p><strong><u>Pre-Requisites:</u></strong></p>

<ol>
	<li>jdk1.6.0_11(Works with previous versions of JDK)</li>
	<li>Firebird-2.1.2.18118_0_Win32.exe. Can be downloaded from <a
		href="http://www.firebirdsql.org/index.php?op=files&id=engine"
		target="_blank">here</a>.</li>
	<li>jaybird-full-2.1.6.jar. Can be downloaded from <a
		href="http://www.firebirdsql.org/index.php?op=files&id=jaybird"
		target="_blank">here</a>.</li>
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
		<p><strong>.;C:\Program Files\Sun\JavaDB\lib\derby.jar</strong></p>
		</td>
	</tr>
</table>

<p>&nbsp;</p>
<p><strong><u>DB-Scripts</u></strong><u> </u></p>

<pre class="brush: sql">
Use CONNECT or CREATE DATABASE to specify a database
SQL> CREATE DATABASE 'C:\FirebirdDB\EMPLOYEEDB.fdb';
SQL> CONNECT 'C:\FirebirdDB\EMPLOYEEDB.fdb';
Commit current transaction (y/n)?Y
Committing.
Database:  'C:\FirebirdDB\EMPLOYEEDB.fdb'
SQL> CREATE TABLE employeedetails (EMPNAME varchar(20));
SQL> INSERT INTO employeedetails (EMPNAME) VALUES ('EMPNAME1');
SQL> INSERT INTO employeedetails (EMPNAME) VALUES ('EMPNAME2');
SQL> INSERT INTO employeedetails (EMPNAME) VALUES ('EMPNAME3');
SQL> SELECT EMPNAME FROM employeedetails;

EMPNAME
====================
EMPNAME1
EMPNAME2
EMPNAME3

SQL> COMMIT;
SQL>
</pre>
<p>&nbsp;</p>
<P><strong>TO CONNECT TO THE ALREADY EXISTING DATABASE</strong></P>
<p>&nbsp;</p>
<pre class="brush: sql">
SQL> CONNECT C:\FirebirdDB\EMPLOYEEDB.FDB user SYSDBA password masterkey;
Commit current transaction (y/n)?Y
Committing.
Database:  C:\FirebirdDB\EMPLOYEEDB.FDB, User: SYSDBA
</pre>

<p>&nbsp;</p>
<p><strong>Simple java program to connect Firebird Database
with java using JDBC</strong></p>
<p><strong>&nbsp;</strong></p>
<p><strong>ConnectFirebirdDB.java</strong></p>
<pre class="brush: java">
/*
 * ConnectFirebirdDB.java
 */
package com.javaworkspace.connectfirebirddb;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 * @author www.javaworkspace.com
 * 
 */
public class ConnectFirebirdDB {
	public static void main(String[] args) {

		Connection connection = null;
		ResultSet resultSet = null;
		Statement statement = null;

		try {
			Class.forName("org.firebirdsql.jdbc.FBDriver");
			connection = DriverManager
					.getConnection(
							"jdbc:firebirdsql://localhost:3050/C:/FirebirdDB/EMPLOYEEDB.fdb",
							"sysdba", "masterkey");
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
<p>"sysdba" is the default username and "masterkey" is the default
password.</p>


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