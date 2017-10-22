<div id="tutorialLinks">

	<h2>First Hibernate Program</h2>

	<p>
		<strong><u>Pre-Requisites:</u></strong>
	</p>
	<ol>
		<li>jdk1.6.0_11&nbsp;(&nbsp;works with previous versions of JDK)</li>
		<li>MySQL Server 5.1</li>
	</ol>
	<p>
		<strong><u>Required .jar files</u></strong><strong><u> </u></strong>
	</p>
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
	<p>
		<strong><u>Queries</u></strong>
	</p>
	<p>
		<strong>CREATE DATABASE firstHibernateTutorial;</strong>
	</p>
	<p>
		Tables will be created automatically by Hibernate.<br /> (<strong>&lt;property
			name=&quot;hibernate.hbm2ddl.auto&quot;&gt;update&lt;/property&gt;</strong>)
	</p>
	<p>
		<strong><u>Configuring Hibernate</u></strong>
	</p>
	<p>Before Hibernate can retrieve and persist objects for us, we
		need to tell it the settings about our application. For example, which
		kind of objects are persistent objects? Which kind of database are we
		using? How to connect to the database?</p>
	<p>
		There are three ways to configure Hibernate in total: programmatic
		configuration, XML<br /> configuration and properties file
		configuration. Here we are going to discuss about XML configuration.
	</p>
	<p>
		Save as <strong>hibernate.cfg.xml</strong><br /> Path<strong>
			(\src\hibernate.cfg.xml)</strong>
	</p>

	<pre class="brush: html">
&lt;?xml version="1.0" encoding="UTF-8"?&gt;
&lt;!DOCTYPE hibernate-configuration PUBLIC
"-//Hibernate/Hibernate Configuration DTD//EN"
"http://hibernate.sourceforge.net/hibernate-configuration-3.0.dtd"&gt;

&lt;hibernate-configuration&gt;
	&lt;session-factory&gt;
		&lt;property name="hibernate.connection.driver_class"&gt;
			com.mysql.jdbc.Driver
		&lt;/property&gt;
		&lt;property name="hibernate.connection.url"&gt;
			jdbc:mysql://localhost/firstHibernateTutorial
		&lt;/property&gt;
		&lt;property name="connection.username"&gt;root&lt;/property&gt;
		&lt;property name="connection.password"&gt;root&lt;/property&gt;
		&lt;property name="show_sql"&gt;true&lt;/property&gt;
		&lt;property name="dialect"&gt;
			org.hibernate.dialect.MySQLDialect
		&lt;/property&gt;
		&lt;property name="hibernate.hbm2ddl.auto"&gt;update&lt;/property&gt;
		&lt;property name="connection.autocommit"&gt;true&lt;/property&gt;
		&lt;!-- Mapping files --&gt;
		&lt;mapping resource="com/javaworkspace/bookshop/Publisher.hbm.xml" /&gt;
	&lt;/session-factory&gt;
&lt;/hibernate-configuration&gt;
</pre>

	<p>&nbsp;</p>
	<p>
		<strong>Different dialets for different databases</strong>
	</p>

	<ol>
		<li>DB2 - org.hibernate.dialect.DB2Dialect</li>
		<li>HypersonicSQL - org.hibernate.dialect.HSQLDialect</li>
		<li>Informix - org.hibernate.dialect.InformixDialect</li>
		<li>Ingres - org.hibernate.dialect.IngresDialect</li>
		<li>Interbase - org.hibernate.dialect.InterbaseDialect</li>
		<li>Pointbase - org.hibernate.dialect.PointbaseDialect</li>
		<li>PostgreSQL - org.hibernate.dialect.PostgreSQLDialect</li>
		<li>Mckoi SQL - org.hibernate.dialect.MckoiDialect</li>
		<li>Microsoft SQL Server - org.hibernate.dialect.SQLServerDialect</li>
		<li>MySQL - org.hibernate.dialect.MySQLDialect</li>
		<li>Oracle (any version) - org.hibernate.dialect.OracleDialect</li>
		<li>Oracle 9 - org.hibernate.dialect.Oracle9Dialect</li>
		<li>Progress - org.hibernate.dialect.ProgressDialect</li>
		<li>FrontBase - org.hibernate.dialect.FrontbaseDialect</li>
		<li>SAP DB - org.hibernate.dialect.SAPDBDialect</li>
		<li>Sybase - org.hibernate.dialect.SybaseDialect</li>
		<li>Sybase Anywhere - org.hibernate.dialect.SybaseAnywhereDialect</li>
	</ol>

	<p>Hibernate will generate SQL statements for accessing the
		database behind the scene. We can set the "show_sql" property to true
		in the XML configuration file for printing the SQL statements to
		stdout(Standard Output):</p>
	<p>&lt;property name=&quot;show_sql&quot;&gt;true&lt;/property&gt;</p>
	<p>
		Save as <strong>log4j.properties </strong>(not mandatory for running
		this program)<br /> Path<strong> (\src\log4j.properties)</strong>
	</p>

	<pre class="brush: java">
### direct log messages to stdout ###
log4j.appender.stdout=org.apache.log4j.ConsoleAppender
log4j.appender.stdout.Target=System.out
log4j.appender.stdout.layout=org.apache.log4j.PatternLayout
log4j.appender.stdout.layout.ConversionPattern=%d{yyyy-MM-dd HH:mm:ss} %5p %c{1}:%L - %m%n
### direct messages to file hibernate.log ###
#log4j.appender.file=org.apache.log4j.FileAppender
#log4j.appender.file.File=hibernate.log
#log4j.appender.file.layout=org.apache.log4j.PatternLayout
#log4j.appender.file.layout.ConversionPattern=%d{yyyy-MM-dd HH:mm:ss} %5p %c{1}:%L - %m%n
log4j.rootLogger=error, stdout
log4j.logger.org.hibernate.SQL=debug
log4j.logger.org.hibernate.type=debug
</pre>

	<p>&nbsp;</p>
	<p>
		Hibernate use a logging library called "Log4j" to log the SQL
		statements and parameters.<br /> Create a properties file named
		"log4j.properties" in the source root folder. This file is used for
		configuring the Log4j library.
	</p>
	<p>In the below program we are going to insert id (automatically
		generated), CODE (unique), PUBLISHER_NAME, ADDRESS in to PUBLISHER
		table.</p>
	<p>
		Save as <strong>Publisher.hbm.xml</strong><br /> Path<strong>
			(src\com\javaworkspace\bookshop\Publisher.hbm.xml)</strong>
	</p>

	<pre class="brush: html">
&lt;?xml version="1.0" encoding="UTF-8"?&gt;
&lt;!DOCTYPE hibernate-mapping PUBLIC
"-//Hibernate/Hibernate Mapping DTD 3.0//EN"
"http://hibernate.sourceforge.net/hibernate-mapping-3.0.dtd"&gt;

&lt;hibernate-mapping package="com.javaworkspace.bookshop"&gt;
	&lt;class name="Publisher" table="PUBLISHER"&gt;

		&lt;id name="id" type="long" column="ID"&gt;
			&lt;generator class="native" /&gt;
		&lt;/id&gt;

		&lt;property name="code" type="string"&gt;
			&lt;column name="CODE" length="4" not-null="true"
				unique="true" /&gt;
		&lt;/property&gt;
		&lt;property name="name" type="string"&gt;
			&lt;column name="PUBLISHER_NAME" length="100" not-null="true" /&gt;
		&lt;/property&gt;
		&lt;property name="address" type="string"&gt;
			&lt;column name="ADDRESS" length="200" /&gt;
		&lt;/property&gt;
	&lt;/class&gt;
&lt;/hibernate-mapping&gt;
</pre>
	<br />
	<p>
		Save as <strong>Publisher.java</strong><br /> Path<strong>
			(src\com\javaworkspace\bookshop\Publisher.java)</strong>
	</p>

	<pre class="brush: java">
/*
 * Publisher.java
 */
package com.javaworkspace.bookshop;

/**
 * @author www.javaworkspace.com
 * 
 */
public class Publisher {

	private Long id;
	private String code;
	private String name;
	private String address;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}
}
</pre>
	<br />
	<p>
		Save as <strong>FirstHibernateProgram</strong><strong>.java</strong><br />
		Path<strong>
			(src\com\javaworkspace\bookshop\FirstHibernateProgram.java)</strong>
	</p>

	<pre class="brush: java">
/*
 * FirstHibernateProgram.java
 */
package com.javaworkspace.bookshop;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

/**
 * @author www.javaworkspace.com
 * 
 */
public class FirstHibernateProgram {

	/**
	 * @param args
	 */
	public static void main(String[] args) {

		Configuration configuration = new Configuration().configure();
		SessionFactory factory = configuration.buildSessionFactory();

		Session session = factory.openSession();

		try {
			Publisher publisher = new Publisher();
			publisher.setId(15l); // for long value suffix l at last
			publisher.setCode("SUN");
			publisher.setName("First Hibernate Example. www.javaworkspace.com");
			publisher.setAddress("Workspace");
			session.save(publisher);
			session.flush();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
	}
}
</pre>
	<br />
	<p>
		<strong>Declaring transactions</strong>
	</p>
	<p>For a series of update, it should better occur in a transaction.
		If anything is wrong during the update process, the transaction will
		be rolled back and all the changes will be discarded.</p>

	<pre class="brush: java">
		Session session = factory.openSession();
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			// Using the session to persist objects
			tx.commit();
		} catch (HibernateException e) {
			if (tx != null)
				tx.rollback();
			throw e;
		} finally {
			session.close();
		}
</pre>
	<br />
	<p>If you don't want to define transaction in your application, you
		can set the "autocommit" property to true (which is false by default)
		in your XML configuration file. In this case, each single update will
		be committed to the database immediately.</p>
	<p>
		<strong>&lt;property
			name=&quot;connection.autocommit&quot;&gt;true&lt;/property&gt;</strong>
	</p>
	<p>
		(Should be placed in <strong>hibernate.cfg.xml)</strong><br /> One
		more thing to notice for auto commit is that you must flush your
		session before closing it. It is because Hibernate won't write your
		changes to the database immediately. Instead, it will queue a number
		of statements to increase performance.
	</p>
	<p>
		<strong>session.flush();</strong>
	</p>
	<p>
		<strong><u>Relate Links:</u></strong>
	</p>
	<p>
		<a href="http://www.javaworkspace.com/privacyPolicyGenerator.do">http://www.javaworkspace.com/privacyPolicyGenerator.do</a><br />
		<a href="http://www.javaworkspace.com/termsOfServiceGenerator.do">http://www.javaworkspace.com/termsOfServiceGenerator.do</a><br />
		<a href="http://www.javaworkspace.com/openPayPalAccount.do">http://www.javaworkspace.com/openPayPalAccount.do</a><br />
		<a href="http://www.javaworkspace.com/hostYourWebSite.do">http://www.javaworkspace.com/hostYourWebSite.do</a><br />
		<a
			href="http://www.javaworkspace.com/listOfOnlineAdvertisingPrograms.do">Online
			Advertising Programs</a><br /> <a
			href="http://www.javaworkspace.com/tipsAndTricks.do">http://www.javaworkspace.com/tipsAndTricks.do</a>
	</p>

</div>