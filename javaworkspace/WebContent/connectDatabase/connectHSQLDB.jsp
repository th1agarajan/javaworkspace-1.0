<div id="tutorialLinks">

	<h2>Connect Java with HSQLDB Tutorial</h2>

	<p>
		<strong><u>Overview</u></strong>
	</p>
	<p>HSQLDB (HyperSQL DataBase) is the leading SQL relational
		database engine written in Java. It has a JDBC driver and supports a
		rich subset of ANSI-92 SQL (BNF tree format) plus many SQL:2008
		enhancements. It offers a small, fast database engine which offers
		both in-memory and disk-based tables and supports embedded and server
		modes.</p>

	<p>The product is currently being used as a database and
		persistence engine in many Open Source Software projects and even in
		commercial projects and products. In its current version it is
		extremely stable and reliable. It is best known for its small size,
		ability to execute completely in memory, its flexibility and speed.</p>

	<p>
		<strong>For Windows users only</strong><br>
	<p>
		<strong><u>Pre-Requisites:</u></strong>
	</p>

	<ol>
		<li>jdk1.6.0_11(Works with previous versions of JDK) can be
			downloaded from <a href="http://www.java.com/en/download/index.jsp"
			target="_blank">here</a>
		</li>
		<li>hsqldb-1.9.0-rc4 can be downloaded from <a
			href="http://sourceforge.net/projects/hsqldb/files/" target="_blank">here</a></li>
		<li>JDBC Driver - hsqldb.jar (available in the
			hsqldb-1.9.0-rc4.zip)</li>
	</ol>

	<p>
		<strong><u>Environment Variables:</u></strong>
	</p>
	<p>Enter Variable name and Variable value which is mentioned below.</p>
	<table border="1" cellspacing="0" cellpadding="0">
		<tr>
			<td width="139">
				<p align="right">
					<strong>Variable name:</strong>
				</p>
			</td>
			<td width="451">
				<p>
					<strong>JAVA_HOME</strong>
				</p>
			</td>
		</tr>
		<tr>
			<td width="139">
				<p align="right">
					<strong>Variable value:</strong>
				</p>
			</td>
			<td width="451" valign="top">
				<p>
					<strong>C:\Program Files\Java\jdk1.6.0_11</strong>
				</p>
			</td>
		</tr>
	</table>
	<br />
	<table border="1" cellspacing="0" cellpadding="0">
		<tr>
			<td width="139">
				<p align="right">
					<strong>Variable name:</strong>
				</p>
			</td>
			<td width="451">
				<p>
					<strong>PATH</strong>
				</p>
			</td>
		</tr>
		<tr>
			<td width="139">
				<p align="right">
					<strong>Variable value:</strong>
				</p>
			</td>
			<td width="451" valign="top">
				<p>
					<strong>C:\Program Files\Java\jdk1.6.0_11\bin</strong>
				</p>
			</td>
		</tr>
	</table>
	<br />
	<table border="1" cellspacing="0" cellpadding="0">
		<tr>
			<td width="139">
				<p align="right">
					<strong>Variable name:</strong>
				</p>
			</td>
			<td width="451" valign="top">
				<p>
					<strong>CLASSPATH</strong>
				</p>
			</td>
		</tr>
		<tr>
			<td width="139">
				<p align="right">
					<strong>Variable value:</strong>
				</p>
			</td>
			<td width="451" valign="top">
				<p>
					<strong>.;C:\hsqldb-1.9.0-rc4\hsqldb\lib\hsqldb.jar</strong>
				</p>
			</td>
		</tr>
	</table>

	<p>&nbsp;</p>

	<p>
		<strong><u>DB-Scripts</u></strong><u> </u>
	</p>
	<p>
		<strong><u>HSQL Database Manager</u></strong>
	</p>
	<p>
		HSQL Database Manager is a general-purpose database tool (Similar to
		Toad, SQLyog..) that can be used with any database engine that has a
		JDBC driver. It comes by default with HSQLDB download. To execute
		Swing version of the Database Manager Go to command prompt and type<br>
		java org.hsqldb.util.DatabaseManagerSwing<br> (Make sure that
		hsqldb.jar is in the CLASSPATH)<br> It should be something like<br>
		C:\>java org.hsqldb.util.DatabaseManagerSwing<br>
	</p>
	<p>&nbsp;</p>
	<pre class="brush: sql">
CREATE TABLE employeedetails (EMPNAME varchar(20));

INSERT INTO employeedetails (EMPNAME) VALUES ('EMPNAME1');  
INSERT INTO employeedetails (EMPNAME) VALUES ('EMPNAME2');  
INSERT INTO employeedetails (EMPNAME) VALUES ('EMPNAME3'); 
</pre>

	<p>&nbsp;</p>
	<p>
		<strong>Simple java program to connect HyperSQL DataBase with
			java using JDBC</strong>
	</p>
	<p>
		<strong>&nbsp;</strong>
	</p>
	<p>
		<strong>ConnectHSQLDB.java</strong>
	</p>
<pre class="brush: java">
/**
 * ConnectHSQLDB.java
 */
package com.javaworkspace.connecthsqldb;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 * @author www.javaworkspace.com
 * 
 */
public class ConnectHSQLDB {
	public static void main(String[] args) {

		Connection connection = null;
		ResultSet resultSet = null;
		Statement statement = null;

		try {
			Class.forName("org.hsqldb.jdbcDriver");
			connection = DriverManager.getConnection(
					"jdbc:hsqldb:file:C:\\HyperSQLDB\\EMPLOYEEDB", "SA", "");
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
	<p>
		<strong>&nbsp;</strong>
	</p>
	<p>"SA" is the default username.</p>


	<p>
		<a href="http://www.javaworkspace.com/connectdatabase/connectMysql.do">How
			to connect Java with MySQL using JDBC driver</a><br /> <a
			href="http://www.javaworkspace.com/connectdatabase/connectOracle.do">How
			to connect Java with Oracle using JDBC driver</a><br /> <a
			href="http://www.javaworkspace.com/createExecutableJar.do">Create
			Executable File In Java</a><br /> <a
			href="http://www.javaworkspace.com/setClasspath.do">Click Here To
			Know How To Set Classpath</a><br /> <a
			href="http://www.javaworkspace.com/pagerTags.do">Pager Tag
			Tutorial</a><br /> <a
			href="http://www.javaworkspace.com/howToInstallMySQL.do">How To
			Install MySQL</a><br /> <a
			href="http://www.javaworkspace.com/javaMail.do">Send E-mail
			through java program</a><br /> <a
			href="http://www.javaworkspace.com/changeTomcatPortNumber.do">Change
			Tomcat Port Number</a>
	</p>

</div>