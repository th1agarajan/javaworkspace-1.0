<div id="tutorialLinks"><!-- 
	Author : Thiagarajan.RM
	Copyright © 2009 javaworkspace.com
	Contact Us:	E-Mail : javaworkspace@gmail.com
	Created Date: Tuesday, August 18, 2009
	Updated On: Thursday, October 08, 2009
 -->

<h2>Connect Advantage Database Server 9.1</h2>
<p><strong><u>For Advantage Database Server 9.1</u></strong></p>
<p><strong>For Windows users only</strong><br>
<p><strong><u>Pre-Requisites:</u></strong></p>
<ol>
	<li>jdk1.6.0_11</li>
	<li>Advantage Database Server 9.1</li>
	<li>adsjdbc.jar</li>
	<li>Advantage Database Server, JDBC drivers and related product
	can be downloaded from <a
		href="http://devzone.advantagedatabase.com/dz/content.aspx?Key=20"
		target="_blank">Click here to download</a></li>
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
		<p><strong>.;C:\ADSDriver\lib\adsjdbc.jar</strong></p>
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
);

INSERT   INTO employee.employeedetails (EMPNAME)
   VALUES ('EMPNAME');
</pre>

<p><strong>&nbsp;</strong></p>
<p><strong><u>Program to connect Java with ADS</u></strong></p>
<p><strong>&nbsp;</strong></p>
<p><strong>ConnectADS.java</strong></p>

<pre class="brush: java">
/**
 * ConnectADS.java
 */
package com.javaworkspace.connectads;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 * @author www.javaworkspace.com
 * 
 */
public class ConnectADS {
	public static void main(String[] args) {
		Connection connection = null;
		ResultSet resultSet = null;
		Statement statement = null;
		
		try {
			Class.forName("com.extendedsystems.jdbc.advantage.ADSDriver");
			connection = DriverManager.getConnection(
					"jdbc:extendedsystems:advantage://localhost:6262;catalog=C:\\yourDatbase\\data;TableType=cdx;LockType=proprietary", "AdsSys", "no");
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