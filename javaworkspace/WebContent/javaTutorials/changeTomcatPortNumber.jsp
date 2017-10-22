<div id="tutorialLinks">
	<h2>Change Apache Tomcat default Port 8080 to other Port number</h2>
	<p>
		<strong><u>Pre-Requisites:</u></strong>
	</p>
	<ul>
		<li>apache-tomcat-6.0.18 (works with previous versions of Tomcat)
		</li>
	</ul>
	<p>
		Tomcat will run by default on TCP/IP port number 8080.  But there can
		be situations where there are some other servers running on this same
		port forcing you to change the port of one of the servers. This
		article explains how to change the port number from 8080 to some other
		port number. <strong></strong><br /> <br /> <strong><u>Steps</u></strong>
	</p>
	<ul>
		<li>1. Navigate to</li>
	</ul>
	<p>C:\apache-tomcat-6.0.18\conf\server.xml</p>
	<p>(The place where you have installed tomcat)</p>
	<ul>
		<li>2. In server.xml file locate</li>
	</ul>
	<pre class="brush: xml">
<!-- Define a non-SSL Coyote HTTP/1.1 Connector on port 8080 -->
<Connector port="8080" maxThreads="150" minSpareThreads="25"
			maxSpareThreads="75" enableLookups="false" redirectPort="8443"
			acceptCount="100" debug="0" connectionTimeout="20000"
			disableUploadTimeout="true" />
<!-- Note : To disable connection timeouts, set connectionTimeout value to 0 -->
</pre>
	<p align="center">
		<strong>Or</strong>
	</p>
	<pre class="brush: xml">
<Connector port="8080" protocol="HTTP/1.1" connectionTimeout="20000"
			redirectPort="8443" />
</pre>
	<p>&nbsp;</p>
	<p>(You can find something similar to the above snippet in
		server.xml.  It varies according to tomcat version)</p>
	<p>
		change <strong>Connector port="8080" to Connector port="8081"</strong>
		or some other port number. Make sure that the port number in not used
		by some other application.
	</p>
	<ul>
		<li>3. Save and restart tomcat.</li>
		<li>4 .Now try running with the new port number i.e. <a
			href="http://localhost:8081">http://localhost:8081</a></li>
	</ul>

	<h1>Mappings of IP addresses to hostnames</h1>
	<p>(Change localhost to some other name)</p>
	<br>
	<p>
		<strong><u>Operationg System:</u></strong> <br />
	</p>

	<ul>
		<li>Windows XP</li>
	</ul>
	<p>
		<strong><u>Steps</u></strong>
	</p>
	<ul>
		<li>1. Navigate to</li>
	</ul>
	<p>
		C:\WINDOWS\system32\drivers\etc&nbsp;<br /> <br /> Or
	</p>
	<p>start-&gt;All Programs-&gt;Run-&gt; type 'drivers'  (Without
		quotes)-&gt;etc</p>
	<ul>
		<li>2. Open the file <strong>host</strong> with a text editor and
			change
		</li>
	</ul>

	<table border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFCC"
		align="center">
		<tr valign="middle">
			<td width="200" valign="middle">127.0.0.1       localhost</td>
		</tr>
		<tr>
			<td align="center">To</td>
		</tr>
		<tr>
			<td>127.0.0.1       projectname</td>
		</tr>
	</table>
	<br>
	<ul>
		<li>3. Restart Tomcat and Try <a href="http://projectname:8080/">http://projectname:8080/</a></li>
	</ul>
	<p>&nbsp;</p>
	<p>
		# host file contains the mappings of IP addresses (in our case
		127.0.0.1) to <br /> #host names (localhost). Each<br /> # entry
		should be kept on an individual line. The IP address should<br /> #
		be placed in the first column followed by the corresponding host name.<br />
		# The IP address and the host name should be separated by at least one<br />
		# space.<br /> #<br /> # Additionally, comments (such as these) may
		be inserted on individual<br /> # lines or following the machine name
		denoted by a '#' symbol.<br /> #<br /> # For example:<br /> #<br />
		#      102.54.94.97     rhino.acme.com          # source server<br />
		#       38.25.63.10     x.acme.com              # x client host
	</p>

	<br>

	<p>
		<strong><u>Relate Links:</u></strong>
	</p>
	<p>
		<a href="http://www.javaworkspace.com/createExecutableJar.do">http://www.javaworkspace.com/createExecutableJar.do</a><br />
		<a href="http://www.javaworkspace.com/privacyPolicyGenerator.do">http://www.javaworkspace.com/privacyPolicyGenerator.do</a><br />
		<a href="http://www.javaworkspace.com/openPayPalAccount.do">http://www.javaworkspace.com/openPayPalAccount.do</a><br />
		<a href="http://www.javaworkspace.com/addSocialBookmarkingService.do">http://www.javaworkspace.com/addSocialBookmarkingService.do</a>
		<a
			href="http://www.javaworkspace.com/listOfOnlineAdvertisingPrograms.do">Online
			Advertising Programs</a><br /> <a
			href="http://www.javaworkspace.com/javaMail.do">http://www.javaworkspace.com/javaMail.do</a>
	</p>
</div>
