<div id="tutorialLinks">

<p align="right"><strong>Updated On: Wednesday, August 19,
2009 </strong></p>
<p align="right"><strong>Created Date: Tuesday, August 18,
2009</strong></p>
<br />

<h1>Connect DB2</h1>
<p><strong><u>For DB2</u></strong></p>
<p><strong>For Windows users only</strong><br>
<p><strong><u>Pre-Requisites:</u></strong></p>
<ol>
	<li>jdk1.6.0_11</li>
	<li>DB2 Database</li>
	<li>db2jcc.jar</li>
	<li>db2jcc_license_cu.jar</li>
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
		<p><strong>.;C:\DB2Driver\lib\db2jcc.jar;C:\DB2Driver\lib\db2jcc_license_cu.jar</strong></p>
		</td>
	</tr>
</table>
<p>&nbsp;</p>
<p><strong><u>Simple java program to connect DB2 with
java using JDBC</u></strong></p>
<p><strong><u>DB-Scripts</u></strong><u> </u></p>

<pre class="brush: sql">
CREATE TABLE employeedetails (
  EMPNAME varchar(20) DEFAULT NULL
);

INSERT   INTO employeedetails (EMPNAME)
   VALUES ('EMPNAME');
</pre>

<p><strong>&nbsp;</strong></p>
<p><strong><u>Program to connect Java with DB2</u></strong></p>
<p><strong>&nbsp;</strong></p>
<p><strong>ConnectDB2.java</strong></p>

<pre class="brush: java">
/**
 * ConnectDB2.java
 */
package com.javaworkspace.connectdb2;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 * @author www.javaworkspace.com
 * 
 */
public class ConnectDB2 {
	public static void main(String[] args) {
		Connection connection = null;
		ResultSet resultSet = null;
		Statement statement = null;

		try {
			Class.forName("com.ibm.db2.jcc.DB2Driver");
			connection = DriverManager.getConnection(
					"jdbc:db2://localhost:5021/EMPLOYEE", "username",
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