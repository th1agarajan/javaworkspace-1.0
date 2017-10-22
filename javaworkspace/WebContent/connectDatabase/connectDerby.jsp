<div id="tutorialLinks">

	<h2>Connect Java with Derby Tutorial</h2>

	<p>
		<strong><u>Overview</u></strong>
	</p>
	<p>Java DB is Sun's supported version of Apache Derby and contains
		the same binaries as Apache Derby. It is a relational database
		management system (RDBMS). Data is stored and queried via SQL or JDBC.</p>

	<p>
		You can download Java DB from the <a
			href="http://developers.sun.com/javadb/downloads/index.jsp"
			target="_blank">Downloads</a> page on this site. Java DB is also
		bundled as part of Sun's JDK 6 as well as in GlassFish.
	</p>

	<p>
		<strong>For Windows users only</strong><br>
	<p>
		<strong><u>Pre-Requisites:</u></strong>
	</p>

	<ol>
		<li>jdk1.6.0_11(Works with previous versions of JDK)</li>
		<li>Derby 10.4.1.3</li>
		<li>derby.jar</li>
		<li>derbytools.jar</li>
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
					<strong>.;C:\Program
						Files\Sun\JavaDB\lib\derby.jar;C:\Program
						Files\Sun\JavaDB\lib\derbytools.jar</strong>
				</p>
			</td>
		</tr>
	</table>
	<br>
	<p>
		<strong>Simple java program to connect Derby Database with
			java using JDBC</strong>
	</p>
	<p>
		<strong><u>DB-Scripts</u></strong><u> </u>
	</p>

<pre class="brush: sql">
connect 'jdbc:derby:EMPLOYEE;create=true';

CREATE TABLE employeedetails (EMPNAME varchar(20) DEFAULT NULL); 

INSERT INTO employeedetails (EMPNAME) VALUES ('EMPNAME1'); 
</pre>

	<p>&nbsp;</p>

	<p>
		<strong>&nbsp;</strong>
	</p>
	<p>
		<strong>ConnectDerby.java</strong>
	</p>
<pre class="brush: java">
/**
 * ConnectDerby.java
 */
package com.javaworkspace.connectderby;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 * @author www.javaworkspace.com
 * 
 */
public class ConnectDerby {
	public static void main(String[] args) {

		Connection connection = null;
		ResultSet resultSet = null;
		Statement statement = null;

		try {
			Class.forName("org.apache.derby.jdbc.EmbeddedDriver");
			connection = DriverManager
					.getConnection("jdbc:derby:C:/DerbyDatabase/EMPLOYEE");
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
	<p>You may encounter this error "Another instance of Derby may have
		already booted the database C:\DerbyDatabase\EMPLOYEE." To avoid this
		close the connection by exit command and try once again.</p>
	<p>
		The exit command quits out of ij and, in embedded mode, shuts down the
		Derby database: <br> ij&gt; exit;
	</p>


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