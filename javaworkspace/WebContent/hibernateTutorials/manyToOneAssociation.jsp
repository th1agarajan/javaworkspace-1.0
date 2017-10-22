<div id="tutorialLinks">

<p align="right"><strong>Updated On: Monday, August 3, 2009
</strong></p>

<p align="right"><strong>Created On: Sunday, July 26, 2009</strong></p>

<h1>Many To One Association</h1>
<p><strong><U>Pre-Requisites:</U></strong></p>
<ol>
	<li>jdk1.6.0_11 ( works with previous versions of JDK)</li>
	<li>MySQL Server 5.1</li>
</ol>
<p><strong><U>Required .jar files</U></strong><strong><U>
</U></strong></p>
<ol type="disc">
	<li>hibernate3.jar</li>
	<li>antlr.jar</li>
	<li>cglib.jar</li>
	<li>commons-collections.jar</li>
	<li>commons-logging.jar</li>
	<li>dom4j.jar</li>
	<li>ehcache.jar</li>
	<li>jta.jar</li>
	<li>log4j.jar</li>
	<li>mysql-connector-java-3.0.11-stable-bin.jar</li>
</ol>
<p>Add this JAR files to your project build path</p>
<p><strong><U>Queries</U></strong></p>
<p><strong>CREATE DATABASE hibernatetutorials;</strong></p>
<p>Tables will be created automatically by Hibernate.<br />
(<strong>&lt;property
name=&quot;hibernate.hbm2ddl.auto&quot;&gt;update&lt;/property&gt;</strong>)</p>
<p><strong><U>Configuring Hibernate</U></strong></p>
<p>Before Hibernate can retrieve and persist objects for us, we need
to tell it the settings about our application. For example, which kind
of objects are persistent objects? Which kind of database are we using?
How to connect to the database?</p>
<p>There are three ways to configure Hibernate in total:
programmatic configuration, XML<br />
configuration and properties file configuration. Here we are going to
discuss about XML configuration.</p>
<p>Save as <strong>hibernate.cfg.xml</strong><br />
Path<strong> (\src\hibernate.cfg.xml)</strong></p>
<table cellspacing="0" cellpadding="0" border="1">
	<tbody>
		<tr>
			<td width="578" bgcolor="#ffff99">
			<p>&lt;?xml version=&quot;1.0&quot;
			encoding=&quot;UTF-8&quot;?&gt;<br />
			&lt;!DOCTYPE hibernate-configuration PUBLIC<br />
			&quot;-//Hibernate/Hibernate Configuration DTD//EN&quot;<br />
			&quot;http://hibernate.sourceforge.net/hibernate-configuration-3.0.dtd&quot;&gt;</p>
			<p>&lt;hibernate-configuration&gt;<br />
			&lt;session-factory&gt;<br />
			&lt;property name=&quot;hibernate.connection.driver_class&quot;&gt;<br />
			com.mysql.jdbc.Driver<br />
			&lt;/property&gt;<br />
			&lt;property name=&quot;hibernate.connection.url&quot;&gt;<br />
			jdbc:mysql://localhost/hibernateTutorials<br />
			&lt;/property&gt;<br />
			&lt;property
			name=&quot;connection.username&quot;&gt;root&lt;/property&gt;<br />
			&lt;property
			name=&quot;connection.password&quot;&gt;root&lt;/property&gt;<br />
			&lt;property name=&quot;show_sql&quot;&gt;true&lt;/property&gt;<br />
			&lt;property name=&quot;dialect&quot;&gt;<br />
			org.hibernate.dialect.MySQLDialect<br />
			&lt;/property&gt;<br />
			&lt;property
			name=&quot;hibernate.hbm2ddl.auto&quot;&gt;update&lt;/property&gt;<br />
			&lt;property
			name=&quot;connection.autocommit&quot;&gt;true&lt;/property&gt;<br />
			&lt;!-- Mapping files --&gt;<br />
			&lt;mapping
			resource=&quot;com/javaworkspace/shop/Movies.hbm.xml&quot; /&gt;<br />
			&lt;mapping
			resource=&quot;com/javaworkspace/shop/Director.hbm.xml&quot; /&gt;<br />
			&lt;/session-factory&gt;<br />
			&lt;/hibernate-configuration&gt;</p>
			</td>
		</tr>
	</tbody>
</table>
<p> </p>
<p>Hibernate will generate SQL statements for accessing the database
behind the scene. We can set the &quot;show_sql&quot; property to true
in the XML configuration file for printing the SQL statements to
stdout(Standard Output):</p>
<p>&lt;property name=&quot;show_sql&quot;&gt;true&lt;/property&gt;</p>
<p>Save as <strong>log4j.properties </strong>(not mandatory for
running this program)<br />
Path<strong> (\src\log4j.properties)</strong></p>
<table cellspacing="0" cellpadding="0" border="1">
	<tbody>
		<tr>
			<td width="578" bgcolor="#ffff99">
			<p>### direct log messages to stdout ### <br />
			log4j.appender.stdout=org.apache.log4j.ConsoleAppender <br />
			log4j.appender.stdout.Target=System.out <br />
			log4j.appender.stdout.layout=org.apache.log4j.PatternLayout <br />
			log4j.appender.stdout.layout.ConversionPattern=%d{yyyy-MM-dd
			HH:mm:ss} %5p %c<strong>{1}</strong>:%L - %m%n <br />
			### direct messages to file hibernate.log ### <br />
			#log4j.appender.file=org.apache.log4j.FileAppender <br />
			#log4j.appender.file.File=hibernate.log <br />
			#log4j.appender.file.layout=org.apache.log4j.PatternLayout <br />
			#log4j.appender.file.layout.ConversionPattern=%d{yyyy-MM-dd HH:mm:ss}
			%5p %c{1}:%L - %m%n <br />
			log4j.rootLogger=error, stdout <br />
			log4j.logger.org.hibernate.SQL=debug <br />
			log4j.logger.org.hibernate.type=debug</p>
			</td>
		</tr>
	</tbody>
</table>
<p> </p>
<p>Hibernate use a logging library called &quot;Log4j&quot; to log
the SQL statements and parameters.<br />
Create a properties file named &quot;log4j.properties&quot; in the
source root folder. This file is used for configuring the Log4j library.</p>
<p>In the below program we are going to insert id (automatically
generated), CODE (unique), PUBLISHER_NAME, ADDRESS in to PUBLISHER
table.</p>
<p>Save as <strong>Movies.java</strong><br />
Path<strong> (src\com\javaworkspace\shop\Movies.java)</strong></p>
<table cellspacing="0" cellpadding="0" border="1">
	<tbody>
		<tr>
			<td width="578" bgcolor="#ffff99"><PRE>
			<DIV
				STYLE="FONT-FAMILY: Courier New; FONT-SIZE: 12px; COLOR: #000000; BACKGROUND-COLOR: #FFFF99">
<FONT COLOR=#000000><B>package</B></FONT> com.javaworkspace.shop;

<FONT COLOR=#0000FF>/**
  * @author www.javaworkspace.com
 
 */</FONT>
<FONT COLOR=#000000><B>public</B></FONT> <FONT COLOR=#000000><B>class</B></FONT> Movies {

	<FONT COLOR=#000000><B>private</B></FONT> Long id;
	<FONT COLOR=#000000><B>private</B></FONT> String imdbno;
	<FONT COLOR=#000000><B>private</B></FONT> String music;
	<FONT COLOR=#000000><B>private</B></FONT> String name;
	<FONT COLOR=#000000><B>private</B></FONT> Director director;

	<FONT COLOR=#000000><B>public</B></FONT> Long getId() {
		<FONT COLOR=#000000><B>return</B></FONT> id;
	}

	<FONT COLOR=#000000><B>public</B></FONT> <FONT COLOR=#000000><B>void</B></FONT> setId(Long id) {
		<FONT COLOR=#000000><B>this</B></FONT>.id = id;
	}

	<FONT COLOR=#000000><B>public</B></FONT> String getImdbno() {
		<FONT COLOR=#000000><B>return</B></FONT> imdbno;
	}

	<FONT COLOR=#000000><B>public</B></FONT> <FONT COLOR=#000000><B>void</B></FONT> setImdbno(String imdbno) {
		<FONT COLOR=#000000><B>this</B></FONT>.imdbno = imdbno;
	}

	<FONT COLOR=#000000><B>public</B></FONT> String getMusic() {
		<FONT COLOR=#000000><B>return</B></FONT> music;
	}

	<FONT COLOR=#000000><B>public</B></FONT> <FONT COLOR=#000000><B>void</B></FONT> setMusic(String music) {
		<FONT COLOR=#000000><B>this</B></FONT>.music = music;
	}

	<FONT COLOR=#000000><B>public</B></FONT> String getName() {
		<FONT COLOR=#000000><B>return</B></FONT> name;
	}

	<FONT COLOR=#000000><B>public</B></FONT> <FONT COLOR=#000000><B>void</B></FONT> setName(String name) {
		<FONT COLOR=#000000><B>this</B></FONT>.name = name;
	}

	<FONT COLOR=#000000><B>public</B></FONT> Director getDirector() {
		<FONT COLOR=#000000><B>return</B></FONT> director;
	}

	<FONT COLOR=#000000><B>public</B></FONT> <FONT COLOR=#000000><B>void</B></FONT> setDirector(Director director) {
		<FONT COLOR=#000000><B>this</B></FONT>.director = director;
	}
}
</DIV></PRE></td>
		</tr>
	</tbody>
</table>
<br />
<p>Save as <strong>Movies.hbm.xml</strong><br />
Path<strong> (src/com/javaworkspace/shop/Movies.hbm.xml)</strong></p>
<table cellspacing="0" cellpadding="0" border="1">
	<tbody>
		<tr>
			<td width="578" bgcolor="#ffff99">
			<p>&lt;?xml version=&quot;1.0&quot;
			encoding=&quot;UTF-8&quot;?&gt;<br />
			&lt;!DOCTYPE hibernate-mapping PUBLIC<br />
			&quot;-//Hibernate/Hibernate Mapping DTD 3.0//EN&quot;<br />
			&quot;http://hibernate.sourceforge.net/hibernate-mapping-3.0.dtd&quot;&gt;<br />
			&lt;hibernate-mapping package=&quot;com.javaworkspace.shop&quot;&gt;<br />
			&lt;class name=&quot;Movies&quot; table=&quot;Movies&quot;&gt;<br />
			&lt;id column=&quot;ID&quot; name=&quot;id&quot;
			type=&quot;long&quot;&gt;<br />
			&lt;generator class=&quot;native&quot;&gt;&lt;/generator&gt;<br />
			&lt;/id&gt;<br />
			&lt;property name=&quot;imdbno&quot; type=&quot;string&quot;&gt;<br />
			&lt;column name=&quot;IMDBNO&quot;&gt;&lt;/column&gt;<br />
			&lt;/property&gt;<br />
			&lt;property name=&quot;music&quot; type=&quot;string&quot;&gt;<br />
			&lt;column name=&quot;MUSIC&quot;&gt;&lt;/column&gt;<br />
			&lt;/property&gt;<br />
			&lt;property name=&quot;name&quot; type=&quot;string&quot;&gt;<br />
			&lt;column name=&quot;NAME&quot;&gt;&lt;/column&gt;<br />
			&lt;/property&gt;<br />
			&lt;many-to-one name=&quot;director&quot; class=&quot;Director&quot;<br />
			column=&quot;DIRECTOR_ID&quot;&gt;<br />
			&lt;/many-to-one&gt;<br />
			&lt;/class&gt;<br />
			&lt;/hibernate-mapping&gt;</p>
			</td>
		</tr>
	</tbody>
</table>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>Save as <strong>Director.java</strong><br />
Path<strong> (src/com/javaworkspace/shop/Director.java)</strong></p>
<table cellspacing="0" cellpadding="0" border="1">
	<tbody>
		<tr>
			<td width="578" bgcolor="#ffff99"><PRE>
			<DIV
				STYLE="FONT-FAMILY: Courier New; FONT-SIZE: 12px; COLOR: #000000; BACKGROUND-COLOR: #FFFF99">
<FONT COLOR=#0000FF>/**
  * Director.java
 */</FONT>
<FONT COLOR=#000000><B>package</B></FONT> com.javaworkspace.shop;

<FONT COLOR=#0000FF>/**
  * @author www.javaworkspace.com
 
 */</FONT>
<FONT COLOR=#000000><B>public</B></FONT> <FONT COLOR=#000000><B>class</B></FONT> Director {

	<FONT COLOR=#000000><B>private</B></FONT> Long id;
	<FONT COLOR=#000000><B>private</B></FONT> String directorName;
	<FONT COLOR=#000000><B>private</B></FONT> String awards;

	<FONT COLOR=#000000><B>public</B></FONT> Long getId() {
		<FONT COLOR=#000000><B>return</B></FONT> id;
	}

	<FONT COLOR=#000000><B>public</B></FONT> <FONT COLOR=#000000><B>void</B></FONT> setId(Long id) {
		<FONT COLOR=#000000><B>this</B></FONT>.id = id;
	}

	<FONT COLOR=#000000><B>public</B></FONT> String getDirectorName() {
		<FONT COLOR=#000000><B>return</B></FONT> directorName;
	}

	<FONT COLOR=#000000><B>public</B></FONT> <FONT COLOR=#000000><B>void</B></FONT> setDirectorName(String directorName) {
		<FONT COLOR=#000000><B>this</B></FONT>.directorName = directorName;
	}

	<FONT COLOR=#000000><B>public</B></FONT> String getAwards() {
		<FONT COLOR=#000000><B>return</B></FONT> awards;
	}

	<FONT COLOR=#000000><B>public</B></FONT> <FONT COLOR=#000000><B>void</B></FONT> setAwards(String awards) {
		<FONT COLOR=#000000><B>this</B></FONT>.awards = awards;
	}
}
</DIV></PRE></td>
		</tr>
	</tbody>
</table>
<br />
<p>Save as <strong>Director.hbm.xml</strong><br />
Path<strong> (src\com\javaworkspace\shop\Director.hbm.xml)</strong></p>
<table cellspacing="0" cellpadding="0" border="1">
	<tbody>
		<tr>
			<td width="578" bgcolor="#ffff99">
			<p>&lt;?xml version=&quot;1.0&quot;
			encoding=&quot;UTF-8&quot;?&gt;<br />
			&lt;!DOCTYPE hibernate-mapping PUBLIC<br />
			&quot;-//Hibernate/Hibernate Mapping DTD 3.0//EN&quot;<br />
			&quot;http://hibernate.sourceforge.net/hibernate-mapping-3.0.dtd&quot;&gt;</p>
			<p>&lt;hibernate-mapping
			package=&quot;com.javaworkspace.shop&quot;&gt;<br />
			&lt;class name=&quot;Director&quot; table=&quot;Director&quot;&gt;<br />
			&lt;id name=&quot;id&quot; column=&quot;ID&quot;
			type=&quot;long&quot;&gt;<br />
			&lt;generator class=&quot;native&quot;&gt;&lt;/generator&gt;<br />
			&lt;/id&gt;<br />
			&lt;property name=&quot;directorName&quot;
			type=&quot;string&quot;&gt;<br />
			&lt;column name=&quot;DIRECTOR_NAME&quot; length=&quot;30&quot;
			unique=&quot;true&quot;&gt;&lt;/column&gt;<br />
			&lt;/property&gt;<br />
			&lt;property name=&quot;awards&quot; type=&quot;string&quot;&gt;<br />
			&lt;column name=&quot;AWARDS&quot;
			length=&quot;30&quot;&gt;&lt;/column&gt;<br />
			&lt;/property&gt;<br />
			&lt;/class&gt;<br />
			&lt;/hibernate-mapping&gt;</p>
			</td>
		</tr>
	</tbody>
</table>
<p>&nbsp;</p>
<p>Save as <strong>TestProgram</strong><strong>.java</strong><br />
Path<strong> (src/com/javaworkspace/shop/TestProgram.java)</strong></p>
<div class="tutorialContent">
<table cellspacing="0" cellpadding="0" border="1">
	<tbody>
		<tr>
			<td width="578" bgcolor="#ffff99"><PRE>
			<DIV
				STYLE="FONT-FAMILY: Courier New; FONT-SIZE: 12px; COLOR: #000000; BACKGROUND-COLOR: #FFFF99">
<FONT COLOR=#0000FF>/**
  * TestProgram.java
 */</FONT>
<FONT COLOR=#000000><B>package</B></FONT> com.javaworkspace.shop;

<FONT COLOR=#000000><B>import</B></FONT> org.hibernate.Session;
<FONT COLOR=#000000><B>import</B></FONT> org.hibernate.SessionFactory;
<FONT COLOR=#000000><B>import</B></FONT> org.hibernate.cfg.Configuration;

<FONT COLOR=#0000FF>/**
  * @author www.javaworkspace.com
 
 */</FONT>
<FONT COLOR=#000000><B>public</B></FONT> <FONT COLOR=#000000><B>class</B></FONT> TestProgram {

	<FONT COLOR=#000000><B>public</B></FONT> <FONT COLOR=#000000><B>static</B></FONT> <FONT
				COLOR=#000000><B>void</B></FONT> main(String[] args) {

		Configuration configuration = <FONT COLOR=#000000><B>new</B></FONT> Configuration().configure();
		SessionFactory sessionFactory = configuration.buildSessionFactory();

		Session session = <FONT COLOR=#000000><B>null</B></FONT>;

		<FONT COLOR=#000000><B>try</B></FONT> {
			session = sessionFactory.openSession();

			Director director = <FONT COLOR=#000000><B>new</B></FONT> Director();
			director.setDirectorName(<FONT COLOR=#000080>"Mani Ratnam"</FONT>);
			director.setAwards(<FONT COLOR=#000080>"National Award"</FONT>);
			session.save(director);

			Movies movies1 = <FONT COLOR=#000000><B>new</B></FONT> Movies();
			movies1.setImdbno(<FONT COLOR=#000080>"imdbno1"</FONT>);
			movies1.setMusic(<FONT COLOR=#000080>"music1"</FONT>);
			movies1.setName(<FONT COLOR=#000080>"name1"</FONT>);
			movies1.setDirector(director);

			Movies movies2 = <FONT COLOR=#000000><B>new</B></FONT> Movies();
			movies2.setImdbno(<FONT COLOR=#000080>"imdbno2"</FONT>);
			movies2.setMusic(<FONT COLOR=#000080>"music2"</FONT>);
			movies2.setName(<FONT COLOR=#000080>"name2"</FONT>);
			movies2.setDirector(director);

			session.save(movies1);
			session.save(movies2);
			session.flush();
		} <FONT COLOR=#000000><B>catch</B></FONT> (Exception e) {
			e.printStackTrace();
		} <FONT COLOR=#000000><B>finally</B></FONT> {
			session.close();
		}
	}
}
</DIV></PRE></td>
		</tr>
	</tbody>
</table>
</div>
<br />
<p><strong><U>Relate Links:</U></strong></p>
<p><a href="http://www.javaworkspace.com/privacyPolicyGenerator.do">http://www.javaworkspace.com/privacyPolicyGenerator.do</a><br />
<a href="http://www.javaworkspace.com/termsOfServiceGenerator.do">http://www.javaworkspace.com/termsOfServiceGenerator.do</a><br />
<a href="http://www.javaworkspace.com/openPayPalAccount.do">http://www.javaworkspace.com/openPayPalAccount.do</a><br />
<a href="http://www.javaworkspace.com/hostYourWebSite.do">http://www.javaworkspace.com/hostYourWebSite.do</a><br />
<a href="http://www.javaworkspace.com/listOfOnlineAdvertisingPrograms.do">Online Advertising Programs</a><br />
<a href="http://www.javaworkspace.com/tipsAndTricks.do">http://www.javaworkspace.com/tipsAndTricks.do</a></p>
</div>