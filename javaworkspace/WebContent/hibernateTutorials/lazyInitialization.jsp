<div id="tutorialLinks">

<p align="right"><strong>Updated On: Wednesday, August 05,
2009 </strong></p>

<p align="right"><strong>Created On: Sunday, July 26, 2009</strong></p>
<h1>Lazy Initialization</h1>

<p><strong><u>Pre-Requisites:</u></strong></p>
<ol>
	<li>
	<p>Lazy Initialization is the continuation of <a
		href="http://www.javaworkspace.com/manyToOneAssociation.do">Many
	To One Association</a>(http://www.javaworkspace.com/manyToOneAssociation.do)
	example. So try executing the "Many To One Association" first and look
	in to this.</p>
	</li>
</ol>
<p><strong><u>What is Lazy initialization</u></strong>?</p>
<p>In Many-to-one association we saw how to insert data into
database. Now in this program we are going to see how to retrieve data
from database.</p>
<p>Here in the below program we are creating session object and
passing the object to <strong>getName</strong> method. The return type
of the method is of type Movies. I am just printing the name of the
movie using Movie object and I am retrieving the object of Director
class using movies.getDirector() method. In turn I am using the
Director's object to retrieve the name of the Director. We can get the
movie name and director's name from the below program. We are not using
the Movies object returned by <strong>getName</strong> method.</p>
<p><strong><u>Step:1</u></strong></p>
<p>Save as<font color="#000000"> TestProgram1.java</font><br />
Path<strong> (\src\com\javaworkspace\shop - Same place where we
placed TestProgram.java in Many To One Association)</strong></p>
<table border="1" cellpadding="0" cellspacing="0">
	<tbody>
		<tr>
			<td width="578" bgcolor="#ffff99">
			<div class="tutorialContent"><PRE>
			<DIV
				STYLE="FONT-FAMILY: Courier New; FONT-SIZE: 12px; COLOR: #000000; BACKGROUND-COLOR: #FFFF99">
<FONT COLOR=#808000>/**
  * TestProgram1.java
 */</FONT>
<FONT COLOR=#800000><B>package</B></FONT> com.javaworkspace.shop;

<FONT COLOR=#800000><B>import</B></FONT> org.hibernate.Hibernate;
<FONT COLOR=#800000><B>import</B></FONT> org.hibernate.Session;
<FONT COLOR=#800000><B>import</B></FONT> org.hibernate.SessionFactory;
<FONT COLOR=#800000><B>import</B></FONT> org.hibernate.cfg.Configuration;

<FONT COLOR=#808000>/**
  * @author www.javaworkspace.com
  *
 */</FONT>
<FONT COLOR=#800000><B>public</B></FONT> <FONT COLOR=#800000><B>class</B></FONT> TestProgram1 {

	<FONT COLOR=#800000><B>public</B></FONT> <FONT COLOR=#800000><B>static</B></FONT> <FONT
				COLOR=#800000><B>void</B></FONT> main(String[] args) {
		<FONT COLOR=#808000>		// TODO Auto-generated method stub</FONT>

		Session session = <FONT COLOR=#800000><B>null</B></FONT>;
		Configuration configuration = <FONT COLOR=#800000><B>new</B></FONT> Configuration().configure();
		SessionFactory sessionFactory = configuration.buildSessionFactory();
		session = sessionFactory.openSession();
		TestProgram1 testProgram = <FONT COLOR=#800000><B>new</B></FONT> TestProgram1();
		Movies movies = testProgram.getName(session);
	<FONT COLOR=#808000>	// System.out.println("Movie Name:" + movies.getName());</FONT>
	<FONT COLOR=#808000>	// Director director = movies.getDirector();</FONT>
	<FONT COLOR=#808000>	// If you access the Director Object outside the getName() method, an</FONT>
	<FONT COLOR=#808000>	// exception will occur. This is called Lazy Initialization.</FONT>
	<FONT COLOR=#808000>	// System.out.println("Director Name:"+director.getDirectorName());</FONT>
	}

	<FONT COLOR=#800000><B>public</B></FONT> Movies getName(Session session) {
		<FONT COLOR=#800000><B>long</B></FONT> id = <FONT COLOR=#800000>1l</FONT>;
		Movies movies = <FONT COLOR=#800000><B>null</B></FONT>;
		<FONT COLOR=#800000><B>try</B></FONT> {
			movies = (Movies) session.get(Movies.<FONT COLOR=#800000><B>class</B></FONT>, id);
			<FONT COLOR=#808000>// Hibernate.initialize(movies.getDirector());</FONT>
			System.out.println(<FONT COLOR=#000080>"Movie Name:"</FONT> + movies.getName());
			Director director = movies.getDirector();
			System.out.println(<FONT COLOR=#000080>"Director Name:"</FONT> + director.getDirectorName());
			session.flush();
			<FONT COLOR=#800000><B>return</B></FONT> movies;
		} <FONT COLOR=#800000><B>catch</B></FONT> (Exception e) {
			e.printStackTrace();
		} <FONT COLOR=#800000><B>finally</B></FONT> {
			session.close();
		}
		<FONT COLOR=#800000><B>return</B></FONT> movies;
	}
}
</DIV></PRE></div>
			</td>
		</tr>
	</tbody>
</table>
<br />
<p> <strong>The output of the program will be:</strong></p>
<p>Hibernate: select movies0_.ID as ID0_, movies0_.IMDBNO as
IMDBNO0_0_, movies0_.MUSIC as MUSIC0_0_, movies0_.NAME as NAME0_0_,
movies0_.DIRECTOR_ID as DIRECTOR5_0_0_ from Movies movies0_ where
movies0_.ID=?</p>
<p>Movie Name:name1</p>
<p>Hibernate: select director0_.ID as ID0_, director0_.DIRECTOR_NAME
as DIRECTOR2_1_0_, director0_.AWARDS as AWARDS1_0_ from Director
director0_ where director0_.ID=?<br />
</p>
<p>Director Name:Mani Ratnam (the data is insert from the previous
example Many To One Association)</p>
<p><strong><u>Step:2</u></strong></p>
<p>I am going to modify the above program slightly. I am just
commenting all the lines in getName method other than</p>
<p><strong>movies = (Movies) session.get(Movies.class, id);</strong></p>
<p>Now I am going use the <strong>getName</strong> method.</p>
<p><strong>Movies movies = testProgram.getName(session);<br />
System.out.println(&quot;Movie Name:&quot; + movies.getName());</strong></p>
<p>This will print the movie name.</p>
<table border="1" cellpadding="0" cellspacing="0">
	<tbody>
		<tr>
			<td width="578" bgcolor="#ffff99">
			<div class="tutorialContent"><PRE>
			<DIV
				STYLE="FONT-FAMILY: Courier New; FONT-SIZE: 12px; COLOR: #000000; BACKGROUND-COLOR: #FFFF99">
<FONT COLOR=#808000>/**
  * TestProgram1.java
 */</FONT>
<FONT COLOR=#800000><B>package</B></FONT> com.javaworkspace.shop;

<FONT COLOR=#800000><B>import</B></FONT> org.hibernate.Hibernate;
<FONT COLOR=#800000><B>import</B></FONT> org.hibernate.Session;
<FONT COLOR=#800000><B>import</B></FONT> org.hibernate.SessionFactory;
<FONT COLOR=#800000><B>import</B></FONT> org.hibernate.cfg.Configuration;

<FONT COLOR=#808000>/**
  * @author www.javaworkspace.com
  *
 */</FONT>
<FONT COLOR=#800000><B>public</B></FONT> <FONT COLOR=#800000><B>class</B></FONT> TestProgram1 {

	<FONT COLOR=#800000><B>public</B></FONT> <FONT COLOR=#800000><B>static</B></FONT> <FONT
				COLOR=#800000><B>void</B></FONT> main(String[] args) {
		Session session = <FONT COLOR=#800000><B>null</B></FONT>;
		Configuration configuration = <FONT COLOR=#800000><B>new</B></FONT> Configuration().configure();
		SessionFactory sessionFactory = configuration.buildSessionFactory();
		session = sessionFactory.openSession();
		TestProgram1 testProgram = <FONT COLOR=#800000><B>new</B></FONT> TestProgram1();
		Movies movies = testProgram.getName(session);
		System.out.println(<FONT COLOR=#000080>"Movie Name:"</FONT> + movies.getName());
	<FONT COLOR=#808000>	// Director director = movies.getDirector();</FONT>
	<FONT COLOR=#808000>	// If you access the Director Object outside the getName() method, an</FONT>
	<FONT COLOR=#808000>	// exception will occur. This is called Lazy Initialization.</FONT>
	<FONT COLOR=#808000>	// System.out.println("Director Name:"+director.getDirectorName());</FONT>
	}

	<FONT COLOR=#800000><B>public</B></FONT> Movies getName(Session session) {
		<FONT COLOR=#800000><B>long</B></FONT> id = <FONT COLOR=#800000>1l</FONT>;
		Movies movies = <FONT COLOR=#800000><B>null</B></FONT>;
		<FONT COLOR=#800000><B>try</B></FONT> {
			movies = (Movies) session.get(Movies.<FONT COLOR=#800000><B>class</B></FONT>, id);
		<FONT COLOR=#808000>	// Hibernate.initialize(movies.getDirector());</FONT>
		<FONT COLOR=#808000>	//System.out.println("Movie Name:" + movies.getName());</FONT>
		<FONT COLOR=#808000>	//Director director = movies.getDirector();</FONT>
		<FONT COLOR=#808000>	//System.out.println("Director Name:" + director.getDirectorName());</FONT>
			session.flush();
			<FONT COLOR=#800000><B>return</B></FONT> movies;
		} <FONT COLOR=#800000><B>catch</B></FONT> (Exception e) {
			e.printStackTrace();
		} <FONT COLOR=#800000><B>finally</B></FONT> {
			session.close();
		}
		<FONT COLOR=#800000><B>return</B></FONT> movies;
	}
}
</DIV></PRE></div>
			</td>
		</tr>
	</tbody>
</table>
<br />
<p> <strong>The output of the program will be:</strong></p>
<p>Hibernate: select movies0_.ID as ID0_, movies0_.IMDBNO as
IMDBNO0_0_, movies0_.MUSIC as MUSIC0_0_, movies0_.NAME as NAME0_0_,
movies0_.DIRECTOR_ID as DIRECTOR5_0_0_ from Movies movies0_ where
movies0_.ID=?</p>
<p>Movie Name:name1</p>
<p><strong><u>Step:3</u></strong></p>
<p>Now I am going to access the director object through <strong>movies.getDirector()
</strong>outside the getName method, an exception will occur.</p>
<p>Director director = movies.getDirector();<br />
System.out.println(&quot;Director
Name:&quot;+director.getDirectorName());</p>
<p>Hibernate will not load our director object from database until
the first access. In Hibernate, this is called &quot;lazy
initialization&quot; which can avoid unnecessary database queries and
thus enhance the performance. Since the director is accessed outside the
session (which has been closed), an exception was thrown.</p>
<table border="1" cellpadding="0" cellspacing="0">
	<tbody>
		<tr>
			<td width="578" bgcolor="#ffff99">
			<div class="tutorialContent"><PRE>
			<DIV
				STYLE="FONT-FAMILY: Courier New; FONT-SIZE: 12px; COLOR: #000000; BACKGROUND-COLOR: #FFFF99">
<FONT COLOR=#808000>/**
  * TestProgram1.java
 */</FONT>
<FONT COLOR=#800000><B>package</B></FONT> com.javaworkspace.shop;

<FONT COLOR=#800000><B>import</B></FONT> org.hibernate.Hibernate;
<FONT COLOR=#800000><B>import</B></FONT> org.hibernate.Session;
<FONT COLOR=#800000><B>import</B></FONT> org.hibernate.SessionFactory;
<FONT COLOR=#800000><B>import</B></FONT> org.hibernate.cfg.Configuration;

<FONT COLOR=#808000>/**
  * @author www.javaworkspace.com
 
 */</FONT>
<FONT COLOR=#800000><B>public</B></FONT> <FONT COLOR=#800000><B>class</B></FONT> TestProgram1 {

	<FONT COLOR=#800000><B>public</B></FONT> <FONT COLOR=#800000><B>static</B></FONT> <FONT
				COLOR=#800000><B>void</B></FONT> main(String[] args) {
		<FONT COLOR=#808000>		// TODO Auto-generated method stub</FONT>

		Session session = <FONT COLOR=#800000><B>null</B></FONT>;
		Configuration configuration = <FONT COLOR=#800000><B>new</B></FONT> Configuration().configure();
		SessionFactory sessionFactory = configuration.buildSessionFactory();
		session = sessionFactory.openSession();
		TestProgram1 testProgram = <FONT COLOR=#800000><B>new</B></FONT> TestProgram1();
		Movies movies = testProgram.getName(session);
		System.out.println(<FONT COLOR=#000080>"Movie Name:"</FONT> + movies.getName());
		Director director = movies.getDirector();
	<FONT COLOR=#808000>	// If you access the Director Object outside the getName() method, an</FONT>
	<FONT COLOR=#808000>	// exception will occur. This is called Lazy Initialization.</FONT>
		System.out.println(<FONT COLOR=#000080>"Director Name:"</FONT>+director.getDirectorName());
	}

	<FONT COLOR=#800000><B>public</B></FONT> Movies getName(Session session) {
		<FONT COLOR=#800000><B>long</B></FONT> id = <FONT COLOR=#800000>1l</FONT>;
		Movies movies = <FONT COLOR=#800000><B>null</B></FONT>;
		<FONT COLOR=#800000><B>try</B></FONT> {
			movies = (Movies) session.get(Movies.<FONT COLOR=#800000><B>class</B></FONT>, id);
	<FONT COLOR=#808000>		// Hibernate.initialize(movies.getDirector());</FONT>
	<FONT COLOR=#808000>		//System.out.println("Movie Name:" + movies.getName());</FONT>
	<FONT COLOR=#808000>		//Director director = movies.getDirector();</FONT>
	<FONT COLOR=#808000>		//System.out.println("Director Name:" + director.getDirectorName());</FONT>
			session.flush();
			<FONT COLOR=#800000><B>return</B></FONT> movies;
		} <FONT COLOR=#800000><B>catch</B></FONT> (Exception e) {
			e.printStackTrace();
		} <FONT COLOR=#800000><B>finally</B></FONT> {
			session.close();
		}
		<FONT COLOR=#800000><B>return</B></FONT> movies;
	}
}
</DIV></PRE></div>
			</td>
		</tr>
	</tbody>
</table>
<br />
<p> <strong>The output of the program will be:</strong></p>
<p>Hibernate: select movies0_.ID as ID0_, movies0_.IMDBNO as
IMDBNO0_0_, movies0_.MUSIC as MUSIC0_0_, movies0_.NAME as NAME0_0_,
movies0_.DIRECTOR_ID as DIRECTOR5_0_0_ from Movies movies0_ where
movies0_.ID=?</p>
<p><strong>Exception in thread &quot;main&quot;
org.hibernate.LazyInitializationException: could not initialize proxy -
the owning Session was closed</strong><br />
at
org.hibernate.proxy.AbstractLazyInitializer.initialize(AbstractLazyInitializer.java:53)<br />
at
org.hibernate.proxy.AbstractLazyInitializer.getImplementation(AbstractLazyInitializer.java:80)<br />
at
org.hibernate.proxy.CGLIBLazyInitializer.intercept(CGLIBLazyInitializer.java:133)<br />
at
com.javaworkspace.shop.Director$$EnhancerByCGLIB$$d42bb89c.getDirectorName(&lt;generated&gt;)<br />
at com.javaworkspace.shop.TestProgram1.main(TestProgram1.java:30)</p>
<p>Movie Name:name1</p>
<p><strong><u>Step:4</u></strong></p>
<p><strong>Solution</strong></p>
<p>If we want the director object to be accessed outside the
session, we have to initialize the director explicitly, we can call the
method Hibernate.initialize() fro this task. This will force the
director object to be loaded from the database.</p>
<table border="1" cellpadding="0" cellspacing="0">
	<tbody>
		<tr>
			<td width="578" bgcolor="#ffff99">
			<div class="tutorialContent"><PRE>
			<DIV
				STYLE="FONT-FAMILY: Courier New; FONT-SIZE: 12px; COLOR: #000000; BACKGROUND-COLOR: #FFFF99">
<FONT COLOR=#808000>/**
  * TestProgram1.java
 */</FONT>
<FONT COLOR=#800000><B>package</B></FONT> com.javaworkspace.shop;

<FONT COLOR=#800000><B>import</B></FONT> org.hibernate.Hibernate;
<FONT COLOR=#800000><B>import</B></FONT> org.hibernate.Session;
<FONT COLOR=#800000><B>import</B></FONT> org.hibernate.SessionFactory;
<FONT COLOR=#800000><B>import</B></FONT> org.hibernate.cfg.Configuration;

<FONT COLOR=#808000>/**
  * @author www.javaworkspace.com
 
 */</FONT>
<FONT COLOR=#800000><B>public</B></FONT> <FONT COLOR=#800000><B>class</B></FONT> TestProgram1 {

	<FONT COLOR=#800000><B>public</B></FONT> <FONT COLOR=#800000><B>static</B></FONT> <FONT
				COLOR=#800000><B>void</B></FONT> main(String[] args) {
		<FONT COLOR=#808000>		// TODO Auto-generated method stub</FONT>

		Session session = <FONT COLOR=#800000><B>null</B></FONT>;
		Configuration configuration = <FONT COLOR=#800000><B>new</B></FONT> Configuration().configure();
		SessionFactory sessionFactory = configuration.buildSessionFactory();
		session = sessionFactory.openSession();
		TestProgram1 testProgram = <FONT COLOR=#800000><B>new</B></FONT> TestProgram1();
		Movies movies = testProgram.getName(session);
		System.out.println(<FONT COLOR=#000080>"Movie Name:"</FONT> + movies.getName());
		Director director = movies.getDirector();
	<FONT COLOR=#808000>	// If you access the Director Object outside the getName() method, an</FONT>
	<FONT COLOR=#808000>	// exception will occur. This is called Lazy Initialization.</FONT>
		System.out.println(<FONT COLOR=#000080>"Director Name:"</FONT> + director.getDirectorName());
	}

	<FONT COLOR=#800000><B>public</B></FONT> Movies getName(Session session) {
		<FONT COLOR=#800000><B>long</B></FONT> id = <FONT COLOR=#800000>1l</FONT>;
		Movies movies = <FONT COLOR=#800000><B>null</B></FONT>;
		<FONT COLOR=#800000><B>try</B></FONT> {
			movies = (Movies) session.get(Movies.<FONT COLOR=#800000><B>class</B></FONT>, id);
			Hibernate.initialize(movies.getDirector());
	<FONT COLOR=#808000>		// System.out.println("Movie Name:" + movies.getName());</FONT>
	<FONT COLOR=#808000>		// Director director = movies.getDirector();</FONT>
	<FONT COLOR=#808000>		// System.out.println("Director Name:" +</FONT>
	<FONT COLOR=#808000>		// director.getDirectorName());</FONT>
			session.flush();
			<FONT COLOR=#800000><B>return</B></FONT> movies;
		} <FONT COLOR=#800000><B>catch</B></FONT> (Exception e) {
			e.printStackTrace();
		} <FONT COLOR=#800000><B>finally</B></FONT> {
			session.close();
		}
		<FONT COLOR=#800000><B>return</B></FONT> movies;
	}
}
</DIV></PRE></div>
			</td>
		</tr>
	</tbody>
</table>
<br />
<p> <strong>The output of the program will be:</strong></p>
<p>Hibernate: select movies0_.ID as ID0_, movies0_.IMDBNO as
IMDBNO0_0_, movies0_.MUSIC as MUSIC0_0_, movies0_.NAME as NAME0_0_,
movies0_.DIRECTOR_ID as DIRECTOR5_0_0_ from Movies movies0_ where
movies0_.ID=?</p>
<p>Hibernate: select director0_.ID as ID0_, director0_.DIRECTOR_NAME
as DIRECTOR2_1_0_, director0_.AWARDS as AWARDS1_0_ from Director
director0_ where director0_.ID=?</p>
<p>Movie Name:name1<br />
Director Name:Mani Ratnam</p>
<p> <strong><u>Relate Links:</u></strong></p>
<p><a href="http://www.javaworkspace.com/hibernate/firstHibernateProgram.do">First
Hibernate Progarm</a><br />
<a href="http://www.javaworkspace.com/hibernate/manyToOneAssociation.do">Many
To One Association</a><br />
<a href="http://www.javaworkspace.com/hibernate/oneToOneAssociation.do">One To
One Association</a><br />
<a href="http://www.javaworkspace.com/hibernate/oneToManyAssociation.do">One
To Many Association</a><br />
<a href="http://www.javaworkspace.com/hibernate/manyToManyAssociation.do">Many
To Many Association</a><br />
<a href="http://www.javaworkspace.com/hibernate/collectionTypesInHibernate.do">Collection
Types In Hibernate</a></p>


</div>