<div id="tutorialLinks">

	<h2>How to configure zip version of Tomcat</h2>
	<p>I always prefer .zip version of Tomcat. The advantage of zip
		version over .exe version of tomcat is as follows</p>

	<ul>
		<li>Silent install. In some organizantions the developers won't
			be given admin rights to install .exe files. zip version is quite
			simple. Just download it and unzip it.</li>
		<li>Tomcat installation is not listed in add or remove programs.</li>
		<li>You don't get the annoying tomcat start/stop button in task
			bar.(Some might like this). In zip version you have to manually click
			startup.bat and shutdown.bat (You have the shortcust in desktop).</li>
	</ul>


	<p>
		<strong><u>Requirements:</u></strong>
	</p>
	<p>
		Download zip version of tomcat(apache-tomcat-7.0.41.zip) from <a
			href="http://mirror.tcpdiag.net/apache/tomcat/tomcat-7/v7.0.41/bin/apache-tomcat-7.0.41.zip"
			target="_blank">apache tomcat website</a>.<br> Download
		jdk-6u2-windows-i586-p.exe from Oracle website.
	</p>
	<p>Here in this tutorial I am using apache-tomcat-7.0.41 and jdk1.6
		update2. You can even use .exe version of apache-tomcat-7.0.41 and
		other version of jdk(but for apache-tomcat-7.0.41 the minimum
		requirement is jdk 1.5).</p>
	<p>
		First you need to set path for java. To know the difference between
		path and classpath <a
			href="http://www.javaworkspace.com/setClasspath.do">Click here.</a><br>
		&nbsp;<br> Right click <strong>My Computer</strong> and click <strong>properties</strong>.
		You will be getting System Properties window. In that click <strong>Advanced-&gt;Environment
			variables. </strong>In User variables for &ldquo;yoursystemname&rdquo;. Click
		New
	</p>
	<p>
		In Variable name and in Variable value type as follows. <br> (In
		my case I have installed java and tomcat in c colon. In your case it
		might be in different colon. So change it accordingly. You might have
		installed jdk 1.5 then in that case navigate to <strong>C:\Program
			Files\Java\jdk1.5\bin </strong>and copy the things what you are getting in
		address bar.
	</p>


	<table border="1" cellspacing="0" cellpadding="0">
		<tr>
			<td width="139" align="right">Variable name:</td>
			<td width="451">&nbsp;&nbsp;JAVA_HOME</td>
		</tr>
		<tr valign="middle">
			<td width="139" align="right">Variable value:</td>
			<td width="451">&nbsp;&nbsp;C:\Program Files\Java\jdk1.6.0_11</td>
		</tr>
	</table>
	<br />
	<table border="1" cellspacing="0" cellpadding="0">
		<tr>
			<td width="139" align="right">Variable name:</td>
			<td width="451">&nbsp;&nbsp;CATALINA_HOME</td>
		</tr>
		<tr valign="middle">
			<td width="139" align="right">Variable value:</td>
			<td width="451">&nbsp;&nbsp;C:\apache-tomcat-6.0.18</td>
		</tr>
	</table>
	<br />
	<table border="1" cellspacing="0" cellpadding="0">
		<tr>
			<td width="139" align="right">Variable name:</td>
			<td width="451">&nbsp;&nbsp;PATH</td>
		</tr>
		<tr valign="middle">
			<td width="139" align="right">Variable value:</td>
			<td width="451">&nbsp;&nbsp;%PATH%;%JAVA_HOME%\bin;%CATALINA_HOME%\bin</td>
		</tr>
	</table>
	<br />
	<table border="1" cellspacing="0" cellpadding="0">
		<tr>
			<td width="139" align="right">Variable name:</td>
			<td width="451">&nbsp;&nbsp;CLASSPATH</td>
		</tr>
		<tr valign="middle">
			<td width="139" align="right">Variable value:</td>
			<td width="451">&nbsp;&nbsp;.;%CATALINA_HOME%\lib\servlet-api.jar;</td>
		</tr>
	</table>

	<br />
	<p>
		(In some versions of tomcat the lib folder will be inside commons
		folder in that case it will be<br> Variable value:<strong>
			.;%CATALINA_HOME%\common\lib\servlet-api.jar</strong>)
	</p>
	<p>
		The first entry of CLASSPATH must be a <strong>(.) </strong>period,
		which denotes the current directory.&nbsp;
	</p>
	<p>
		 <strong><u>See also:</u></strong>
	</p>
	<p>
		<a href="http://www.javaworkspace.com/pagerTags.do">Pagination
			using Pager Tags</a><br /> <a
			href="http://www.javaworkspace.com/displayTags.do">Pagination
			using Display Tags</a><br /> <a
			href="http://www.javaworkspace.com/hibernate/firstHibernateProgram.do">First
			Hibernate Progarm</a><br /> <a
			href="http://www.javaworkspace.com/hibernate/manyToOneAssociation.do">Many
			To One Association</a><br /> <a
			href="http://www.javaworkspace.com/hibernate/oneToOneAssociation.do">One
			To One Association</a><br /> <a
			href="http://www.javaworkspace.com/hibernate/oneToManyAssociation.do">One
			To Many Association</a>
	</p>
</div>