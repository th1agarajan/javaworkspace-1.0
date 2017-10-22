<div id="tutorialLinks">

<p align="right"><strong>Updated On: Sunday, August 30,
2009 </strong></p>
<p align="right"><strong>Created Date: Saturday, August 22,
2009</strong></p>
<br />

<h1>Connect Java with H2 Tutorial</h1>

<p><strong><u>Overview</u></strong></p>
<p>H2(Hypersonic 2) is a relational database management system
written in Java. It can be embedded in Java applications or run in the
client-server mode. The disk footprint is about 1 MB.</p>
<p>The software is available as open source software under modified
versions of the Mozilla Public License or the original Eclipse Public
License. The modification of the MPL is a shorter file header and the
license name.</p>

<p>You can download H2 DB from the <a
	href="http://www.h2database.com/html/main.html" target="_blank">Downloads</a>
page on this site.</p>

<p><strong>For Windows users only</strong><br>
<p><strong><u>Pre-Requisites:</u></strong></p>

<ol>
	<li>jdk1.6.0_11(Works with previous versions of JDK)</li>
	<li>H2 Database 1.1.117</li>
	<li>h2-1.1.117.jar</li>
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
		<p><strong>.;C:\Program Files\H2\bin\h2-1.1.117.jar</strong></p>
		</td>
	</tr>
</table>

<p>&nbsp;</p>

<p><strong><u>DB-Scripts</u></strong><u> </u></p>
<pre class="brush: sql">
CREATE TABLE employeedetails (EMPNAME varchar(20));

INSERT INTO employeedetails (EMPNAME) VALUES ('EMPNAME1'); 
</pre>


<p><strong>Simple java program to connect Derby Database
with java using JDBC</strong></p>
<p><strong>&nbsp;</strong></p>

<p><strong>ConnectDerby.java</strong></p>
<pre class="brush: java">
/*
 * ConnectH2DB.java
 */
package com.javaworkspace.connecth2db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 * @author www.javaworkspace.com
 * 
 */
public class ConnectH2DB {
	public static void main(String[] args) {

		Connection connection = null;
		ResultSet resultSet = null;
		Statement statement = null;

		try {
			Class.forName("org.h2.Driver");
			connection = DriverManager.getConnection(
					"jdbc:h2:C:\\H2DB\\database\\EMPLOYEEDB", "sa", "");
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
<p>"sa" is the default username.</p>
<p>You may encounter this error "Database may be already in use:
Locked by another process. Possible solutions: close all other
connection(s);" To avoid this close the connection by clicking the
Disconnect Icon at the top left in the H2 Console and try once again.</p>
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