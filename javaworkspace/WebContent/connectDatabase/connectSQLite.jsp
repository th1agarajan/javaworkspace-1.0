<div id="tutorialLinks">

	<br />

	<h2>Know How and Where Firefox 3 Bookmarks are Saved? &amp;
		Connect Java with SQLite using JDBC Tutorial</h2>

	<p>
		<strong><u>Overview</u></strong>
	</p>
	<p>SQLite is a software library that implements a self-contained,
		serverless, zero-configuration, transactional SQL database engine.
		SQLite is the most widely deployed SQL database engine in the world.
		The source code for SQLite is in the public domain.</p>

	<p>
		You can download SQLite DB from the <a
			href="http://www.sqlite.org/download.html" target="_blank">Downloads</a>
		page on this site.
	</p>

	<p>
		With the advent of <strong>Firefox</strong> <strong>3</strong>,
		everybody is talking about the <strong>new bookmark system</strong>.
		Most like it, while some don't. But the major confusion among the new
		people who have started using Firefox 3 is the question, <strong>where
			are the Firefox 3 bookmarks stored or saved?</strong>
	</p>
	<p>
		<br /> <img width="329" height="239"
			src="<%=request.getContextPath()%>/images/contents/sqlite/bookmark.gif"
			alt="Bookmarking in Firefox 3" />
	</p>
	<p>
		<br /> <strong>Where were bookmarks saved before?</strong>
	</p>
	<p>
		<br /> In <strong>Firefox 2</strong>, the <strong>bookmarks</strong>
		were stored in <strong>bookmarks.html</strong> file under C:\Documents
		and Settings\ComputerName\Application
		Data\Mozilla\Firefox\Profiles\4phmc6oj.default(Might be
		different)\Bookmarks.html<br /> Or<br /> %USERPROFILE%\Application
		Data\Mozilla\Firefox\Profiles\4phmc6oj.default\Bookmarks.html<br />
		(Make sure that you can see hidden files and folder because
		ApplicationData is a hidden folder)<br /> Even though you find this
		file in <strong>Firefox 3</strong>, you may find that it doesn't have
		the latest bookmarks you have added in Firefox. You may find only the
		imported bookmarks in that file. That's because&nbsp; Firefox 3
		bookmarks are not stored in the same way it was stored before. (<strong>Note:</strong>
		You can tweak Firefox 3 to save bookmarks in bookmarks.html also)<br />
	</p>
	<p>
		<strong>Where are bookmarks saved in Firefox 3 now?</strong><br /> It
		stores both the <strong>bookmarks</strong> and the <strong>history</strong>
		in the <strong>database</strong> with the help of <strong>SQLite
			Datbase</strong>. This is the reason why Firefox 3 is able to <strong>add
			tags</strong> to the bookmarks and the <strong>awesomebar</strong> is able to
		list the suggestions as per most visited links. SQLite database<br />
	</p>
	<p>
		bookmark system was added since Firefox 3 Alpha 5 - Mozilla
		Development Center.<br /> So in the same place where you found <strong>bookmarks.html</strong>,
		you will find <strong>places.sqlite</strong> and this is the <strong>database</strong>
		which handles all the Firefox 3 bookmarks.
	</p>
	<p>
		<br /> <strong>So what is JSON and what has to do with
			Bookmarks?</strong>
	</p>
	<p>
		<br /> <strong>JSON</strong> is <strong>JavaScript Object
			Notation</strong> which is a data-interchange format. In the same folder where
		you found <strong>places.sqlite</strong>, you will find a folder
		called <strong>bookmarkbackups</strong> which has backups of Firefox 3
		bookmarks. In case you lose your database or it gets corrupted, you
		can import these files through Bookmarks -&gt; Organize Bookmarks
		-&gt; Import and Backup -&gt; Import. So this just serves as your
		backup and this is not where primarily the Firefox 3 bookmarks are
		stored.
	</p>
	<p>
		<br /> <img width="512" height="303"
			src="<%=request.getContextPath()%>/images/contents/sqlite/restoreBookmark.gif"
			alt="Import Bookmarks in Firefox 3" /><br /> <strong>So
			now how to view bookmarks in places.sqlite?</strong>
	</p>
	<p>
		<br /> The best way is to install the <a
			href="https://addons.mozilla.org/en-US/firefox/addon/5817"
			target="_blank" title="SQLite Manager addon">SQLite Manager addon</a>
		which helps to view all the 11 tables that are present in the bookmark
		database. This includes table for <strong>history, favicons,
			keywords, bookmarks root</strong> etc. You can even execute SQL Queries,
		create database, create tables... etc using SQLite Manager add-on.
	</p>

	<div class="tutorialContent">
		<img
			src="<%=request.getContextPath()%>/images/contents/sqlite/sqliteManager.jpg"
			alt="SQLite Manager" width="576" height="289" border="0" />
	</div>

	<br />
	<p>
		Once you install the add-on, in Firefox browser click Tools -&gt;
		SQLite Manager. You will get a popup window. In that Click <strong>Database</strong>-&gt;<strong>Connect
			Database</strong> and browse to select <strong>places.sqlite</strong> or
		simply select the database name from the dropdown box at the center
		and click <strong>Go. </strong>You can even view the contents of the
		table using Execute SQL option.
	</p>

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
		<li>sqlite-3_6_17 can be downloaded from <a
			href="http://www.sqlite.org/download.html" target="_blank">here</a></li>
		<li>JDBC Driver - sqlitejdbc-v056.jar/sqlite-jdbc-3.7.2.jar can
			be downloaded from <br> <a
			href="http://sqlitebot.googlecode.com/files/sqlitejdbc-v056.jar"
			target="_blank">sqlitejdbc-v056.jar</a> <br> <a
			href="http://repo1.maven.org/maven2/org/xerial/sqlite-jdbc/3.7.2/sqlite-jdbc-3.7.2.jar"
			target="_blank">sqlite-jdbc-3.7.2.jar - mirror1</a> <br> <a
			href="http://www.java2s.com/Code/JarDownload/sqlite/sqlite-jdbc-3.7.2.jar.zip"
			target="_blank">sqlite-jdbc-3.7.2.jar - mirror2</a> <br> <a
			href="http://grepcode.com/snapshot/repo1.maven.org/maven2/org.xerial/sqlite-jdbc/3.7.2"
			target="_blank">Source code of sqlite-jdbc-3.7.2.jar can be
				downloaded here</a>
		</li>
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
					<strong>C:\Program Files\Java\jdk1.6.0_11\bin;C:\SQLite\</strong>
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
						Files\SQLiteDB\lib\sqlitejdbc-v056.jar</strong>
				</p>
			</td>
		</tr>
	</table>
	<br />
	<p>
		<strong>Simple Java program to connect SQLite Database with
			Java using JDBC</strong>
	</p>
	<p>
		<strong><u>DB-Scripts</u></strong><u> </u>
	</p>

	<p>SQLite uses dynamic typing. Content can be stored as INTEGER,
		REAL, TEXT, BLOB, VARCHAR or as NULL.</p>
	<br />

	<pre class="brush: sql">

CREATE TABLE employeedetails (EMPNAME varchar(20)); 

INSERT INTO employeedetails (EMPNAME) VALUES ('EMPNAME1'); 
</pre>

	<p>&nbsp;</p>

	<p>SQLite does not enforce the length of a VARCHAR. You can declare
		a VARCHAR(10) and SQLite will be happy to let you put 500 characters
		in it. And it will keep all 500 characters intact - it never
		truncates.</p>

	<p>&nbsp;</p>
	<pre class="brush: sql">
C:\SQLite&gt;sqlite3 EMPLOYEE.db
SQLite version 3.6.17
Enter ".help" for instructions
Enter SQL statements terminated with a ";"
sqlite&gt; CREATE TABLE employeedetails (EMPNAME varchar(20));
sqlite&gt; INSERT INTO employeedetails (EMPNAME) VALUES ('EMPNAME1');
sqlite&gt; INSERT INTO employeedetails (EMPNAME) VALUES ('EMPNAME2');
sqlite&gt; INSERT INTO employeedetails (EMPNAME) VALUES ('EMPNAME3');
sqlite&gt; SELECT EMPNAME FROM employeedetails;
EMPNAME1
EMPNAME2
EMPNAME3
sqlite&gt;
</pre>

	<p>Creating Database in SQLite is simple. In Command Prompt
		Navigate to the place where you want to create database, then type
		"sqlite3 EMPLOYEE.db". This will create database with the name
		EMPLOYEE.db, but make sure that you have sqlite3.exe in the same
		folder (it is not required if the path of sqlite3.exe is mentioned in
		PATH)i.e. in my case I am having sqlite3.exe inside C:\SQLite&gt;
		(C:\SQLite\sqlite3.exe).</p>

	<p>
		If you don't know the place where database is created then in command
		prompt\sqlite3.exe window type <b>.datbases</b>This will show the
		place where the database is created. The default location is
		D:\Users\username(usename by which you login in to the
		system)\databaseName.db (Windows7).
	</p>

	<p>
		<strong>&nbsp;</strong>
	</p>
	<p>
		<strong>ConnectSQLite.java</strong>
	</p>
<pre class="brush: java">
/**
 * ConnectSQLite.java
 */
package com.javaworkspace.connectsqlite;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 * @author www.javaworkspace.com
 * 
 */
public class ConnectSQLite {
	public static void main(String[] args) {

		Connection connection = null;
		ResultSet resultSet = null;
		Statement statement = null;

		try {
			Class.forName("org.sqlite.JDBC");
			connection = DriverManager
					.getConnection("jdbc:sqlite:C:\\SQLite\\EMPLOYEE.db");
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