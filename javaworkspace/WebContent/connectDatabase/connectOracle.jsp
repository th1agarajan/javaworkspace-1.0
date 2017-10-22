<div id="tutorialLinks">

<h2>Connect Java with Oracle 10g Tutorial</h2>

<p><strong>For Windows users only</strong><br>
<p><strong><u>Pre-Requisites:</u></strong></p>
<ol>
	<li>jdk1.6.0_11</li>
	<li>Oracle 10g</li>
	<li>ojdbc14.jar</li>
</ol>

If you want to access oracle10g via JDBC you need to set CLASSPATH
environment variable to find the ojdbc14.jar file provided by Oracle.
The file is located in:&nbsp; <strong>E:\oracle\product\10.1.0\Db_1\jdbc\lib\ojdbc14.jar&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</strong>beneath you Oracle home directory, or it&rsquo;s available for download
from <a href="http://technet.oracle.com">http://technet.oracle.com</a>
or <a href="http://www.findjar.com/">http://www.findjar.com/</a><br>
If you are using older version of JDK(1.2 or below). You need to set
CLASSPATH for classes12.zip<br>
<strong>E:\oracle\product\10.1.0\Db_1\jdbc\lib\classes12.zip</strong><br>
<strong><u>Step:1</u></strong><br>
<strong><u>Setting CLASSPATH</u></strong><br>
1. Right click the My Computer icon. In that click properties<br>
2. You will see a window System Properties. In that window click
Advanced<br>
3. You will see a button Environment Variables. Click that button.<br>
4. In the popup window you will see User variables for XXXXXX (your
name) and System variable. Select the New button which is below the User
variables for XXXXX.<br>
5.&nbsp; You will see the window New User Variable. In Variable name
type CLASSPATH and in Variable value type <strong>.;E:\oracle\product\10.1.0\Db_1\jdbc\lib\ojdbc14.jar</strong><br>
The first entry must be a period, which denotes the current directory.
The second entry must be the directory for the ojdbc14.jar or
classess12.zip (jdk 1.2 or below).<br>
If CLASSPATH is not set correctly, you will get a NoClassDefFoundError
error when you run a compile class.<br>
<strong>NOTE</strong><br>
Be sure to use a version of the JDK that is compatible with the Oracle
release you are using.&nbsp; If you use a new release of the JDK with an
older release of Oracle&rsquo;s drivers, you may encounter &ldquo;access
violation&rdquo; errors when executing your programs.<br>
<strong>Step 2</strong><br>
The PATH environment variable should already be set for JDK
<p><strong>Step 3</strong></p>
<p>JDK is already provided by Oracle itself(You can even use your
own JDK). If you install Oracle10g It comes automatically. It lies in</p>
<p><strong>E:\oracle\product\10.1.0\Db_1\jdk(I have
installed oracle in E: in your case it might be c: or d: &hellip;.)</strong></p>
<p><strong><u>Setting PATH</u></strong><br>
1. Right click the My Computer icon. In that click properties<br>
2. You will see a window System Properties. In that window click
Advanced<br>
3. You will see a button Environment Variables. Click that button.<br>
4. In the popup window you will see User variables for XXXXXX (your
name) and System variable. Select the New button which is below the User
variables for XXXXX.<br>
5.&nbsp; You will see the window New User Variable. In Variable name
type PATH and in Variable value type <br>
<strong>E:\oracle\product\10.1.0\Db_1\jdk\bin;</strong><br>
Click ok. You have finished setting PATH and CLASSPATH.</p>
For further reading on path and classpath refer <a
	href="http://www.javaworkspace.com/setClasspath.do">Click Here To
Know How To Set Classpath</a><br />
<a href="http://www.javaworkspace.com/howToInstallMySQL.do">Click
Here To Know How To Install MySQL</a><br />


<p><strong>&nbsp;</strong></p>
<p><strong>Testing your Connection</strong></p>
<p>Oracle provides a sample program called JdbcCheckup.java that you
can use to verify your JDBC configuration. This file may be in a zip
file (demo.zip on the E:\oracle\product\10.1.0\Db_1\jdbc\demo.zip.&nbsp;
After unzipping you will get
E:\oracle\product\10.1.0\Db_1\jdbc\demo\samples\generic\. You will need
to extract it before running the program. Go to the directory where the
sample file is, then compile and execute the JdbcCheckup.iava class:</p>
<p>javac&nbsp; JdbcCheckup.java<br>
Java JdbcCheckup</p>
<p>&nbsp;</p>
<p>NOTE</p>
<p><em>Java commands are case sensitive. When you execute
jdbcCheckup, you are prompted for usename, password, and connect string
for a database. That connection Information will be used to attempt a
connection; if successful, that attempt will return the following
output:</em></p>
<p>&nbsp;</p>
<p>Connecting to the database...Connecting&hellip;<br>
&nbsp;connected. <br>
Hello World. <br>
Your JDBC Installation is correct.</p>
<p>If you don't receive feedback telling you that your Installation
is correct, you need to check your configuration. Common problems
include incorrectly set environment variables (PATH and CLASSPATH) and
mismatched versions of database connection drivers. It you change the
environment variable values, you need to shut down and restart the
command windows for the changes to take effect.<strong> </strong><br>
<strong>If you are not able to find demo.zip then try the below
programs.</strong></p>
<p><strong>&nbsp;</strong></p>
<p><strong>Sample programs</strong>
<p><strong>&nbsp;</strong></p>
<strong>Sample program: 1</strong>
<p><strong>&nbsp;</strong></p>
<p><strong>ConnectOracle.java</strong></p>

<pre class="brush: java">
/**
 * ConnectOracle.java
 */
package com.javaworkspace.connectoracle;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 * @author www.javaworkspace.com
 * 
 */
public class ConnectOracle {

	public static void main(String[] args) {

		try {
			DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
			System.out.println("Connecting to the database...");
			Connection connection = DriverManager.getConnection(
					"jdbc:oracle:thin:@localhost:1521:orcl", "scott", "tiger");
			Statement statement = connection.createStatement();
			ResultSet resultset = statement.executeQuery("select 'Connected' from dual");
			resultset.next();
			String s = resultset.getString(1);
			System.out.println(s);
			statement.close();
			connection.close();
		} catch (Exception e) {
			System.out.println("The exception raised is:" + e);
		}
	}

}
</pre>

<p>connection=DriverManager.getConnection(&quot;jdbc:oracle:thin:@localhost:1521:orcl&quot;,&quot;scott&quot;,&quot;tiger&quot;);<br>
In the above line, username is &ldquo;scott&rdquo; and password is
&ldquo;tiger&rdquo;.<br>
Thin is the JDBC driver<br>
1521 is the default port number which the connection is to be
established and orcl is the database name.</p>
<p><strong>Sample program: 2 </strong>
<p><strong>&nbsp;</strong></p>
<p><strong>ConnectOracle.java</strong></p>
<pre class="brush: java">
/**
 * ConnectOracle.java
 */
package com.javaworkspace.connectoracle;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 * @author www.javaworkspace.com
 * 
 */
public class ConnectOracle {
	public static void main(String[] args) {
		try {
			DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
			Connection connection = DriverManager.getConnection(
					"jdbc:oracle:thin:@localhost:1521:orcl", "scott", "t");

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

<p><strong>DB Scripts</strong></p>


<p><strong><u>Relate Links:</u></strong></p>

<p><a href="http://www.javaworkspace.com/connectdatabase/connectSqlserver.do">How
to connect Java with SQLServer using JDBC driver</a><br />
<a href="http://www.javaworkspace.com/connectdatabase/connectMysql.do">How to
connect Java with MySQL using JDBC driver</a><br />
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