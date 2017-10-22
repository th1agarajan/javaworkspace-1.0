<div id="tutorialLinks">

	<h2>Connect Java with MS SQL Server Tutorial</h2>

	<p>
		<strong><u>For MS SQL Server 2005</u></strong>
	</p>
	<p>
		<strong>For Windows users only</strong><br>
	<p>
		<strong><u>Pre-Requisites:</u></strong>
	</p>

	<ol>
		<li>jdk1.6.0_11</li>
		<li>MS SQL Server 2005</li>
		<li>sqljdbc.jar/ jtds-1.2.2.jar</li>
	</ol>


	<p>
		<strong>&nbsp;</strong>
	</p>
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
					<strong>.;C:\MysqlDriver\lib\sqljdbc.jar</strong>
				</p>
			</td>
		</tr>
	</table>
	<p align="center">
		<strong>Or</strong>
	</p>
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
					<strong>.;C:\MysqlDriver\lib\jtds-1.2.2.jar</strong>
				</p>
			</td>
		</tr>
	</table>
	<p>
		<strong>Simple java program to connect MS SQL Server with
			java using JDBC</strong>
	</p>
	<p>
		<strong><u>DB-Scripts</u></strong><u> </u>
	</p>
	<p>
		Create database with the name <strong>Employee</strong>.
	</p>
	<p>
		<strong>CREATE TABLE EmployeeDetails(EmpName varchar(20) NOT
			NULL);</strong>
	</p>
	<p>
		<strong>INSERT INTO EmployeeDetails(EmpName) VALUES('test1');<br />
			INSERT INTO EmployeeDetails(EmpName) VALUES('test2');<br /> INSERT
			INTO EmployeeDetails(EmpName) VALUES('test3');
		</strong>
	</p>
	<p>&nbsp;</p>
	<p>
		<strong><u>Program to connect Java with MS SQL Server
				using sqljdbc driver</u></strong>
	</p>

	<p>
		<strong>&nbsp;</strong>
	</p>
	<p>
		<strong>ConnectMSSQL.java</strong>
	</p>
	<pre class="brush: java">
/**
 * ConnectMSSQL.java
 */
package com.javaworkspace.connectmssql;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 * @author www.javaworkspace.com
 * 
 */
public class ConnectMSSQL {
	public static void main(String[] args) {
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			Connection connection = DriverManager
					.getConnection(
							"jdbc:sqlserver://localhost:1433;databaseName=EMPLOYEE;selectMethod=cursor",
							"username", "password");

			System.out.println("DATABASE NAME IS:"
					+ connection.getMetaData().getDatabaseProductName());
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
</pre>
	<p>
		<strong>&nbsp;</strong>
	</p>

	<p>
		<strong>Connect using JDTS driver</strong>
	</p>

<pre class="brush: java">
/**
 * ConnectMSSQL.java
 */
package com.javaworkspace.connectmssql;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 * @author www.javaworkspace.com
 * 
 */
public class ConnectMSSQL {
	public static void main(String[] args) {
		try {
			Class.forName("net.sourceforge.jtds.jdbc.Driver");
			Connection connection = DriverManager
					.getConnection(
							"jdbc:jtds:sqlserver://localhost:1433;databaseName=EMPLOYEE;sendStringParametersAsUnicode=false",
							"username", "password");
			System.out.println("DATABASE NAME IS:"
					+ connection.getMetaData().getDatabaseProductName());
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
</pre>

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