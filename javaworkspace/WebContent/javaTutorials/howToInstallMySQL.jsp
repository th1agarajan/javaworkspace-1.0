<div id="tutorialLinks">

	<h2>How To Install MySQL</h2>

	<p>
		<strong><u>Pre-Requisites:</u></strong>
	</p>

	<table width="95%" border="0">
		<tr>
			<td valign="top">
				<ul>
					<li>MySQL Server 5.1&nbsp;(&nbsp;any versions)</li>
				</ul>
				<p>
					<strong>&nbsp;</strong><strong><u>Installed location:</u></strong>
				</p>
				<ul>
					<li>MySQL Server 5.1 -&gt;   C:\Program Files\MySQL\MySQL
						Server 5.1</li>
				</ul>
			</td>
		</tr>
	</table>

	<p>
		<strong>Installing MySQL</strong>
	</p>
	<p>
		This task describes how to install a MySQL database for use with Java
		Workspace Tutorials.<br /> 1. Browse to the MySQL download site:
		http://dev.mysql.com/downloads<br /> 2. Locate and select the
		appropriate package for your platform.<br /> MySQL 5.0.67 or higher.<br />
		3. If prompted, specify a location on your system in which to download
		and install MySQL.<br /> 4. Browse to where you downloaded MySQL, and
		double-click the installer file(Setup.exe).<br /> The MySQL Server
		Setup wizard guides you through the MySQL installation, followed by
		the<br /> Configuration wizard.<br /> 5. At the Welcome window,
		click <strong>Next</strong>.<br /> 6. Select the <strong>Typical
		</strong>setup type, and click <strong>Next</strong>.<br /> 7. Click <strong>Install</strong>,
		and click <strong>Next -&gt; Once again Next</strong>.<br /> 8. Skip
		the MySQL registration(not in all the versions).<br /> 9. In the
		Wizard Completed window, click <strong>Finish</strong>(Make sure that
		"Configure the MySQL server now" check box is selected .)<br /> The
		MySQL Server Setup wizard closes, and the MySQL Server Instance
		Configuration wizard<br /> opens.
	</p>
	<p>&nbsp;</p>
	<p>
		<strong>Configuring MySQL</strong>
	</p>
	<p>
		The MySQL configuration wizard starts immediately after the MySQL
		Server Setup wizard closes. This<br /> section describes how to
		configure MySQL to work with Java Workspace Tutorials.
	</p>
	<p>
		1. In the Welcome window, click <strong>Next</strong>.<br /> 2.
		Select <strong>Detailed Configuration(if you are not aware of
			any thing then choose Standard Configuration)</strong>, and click <strong>Next</strong>(If
		you are a beginner you can select Standard Configuration this will set
		the default settings and this will take you directly to step 9 - You
		can even reconfigure once again).<br /> 3. Select <strong>Server
			Machine</strong>, and click <strong>Next</strong>.<br /> For production use,
		choose <strong>Dedicated MySQL Server Machine</strong>. The option
		selected determines<br /> the memory allocation.<br /> 4. For
		database use, select <strong>Transactional Database Only</strong>, and
		click <strong>Next</strong>.<br /> This creates a database that uses
		InnoDB as its storage engine.<br /> 5. Accept the default drive and
		path for the <strong>InnoDB tablespace </strong>settings, and click <strong>Next</strong>.<br />
		6. To set the approximate number of concurrent connections to the
		server, select <strong>Decision Support</strong><br /> <strong>(DSS)
			OLAP, </strong>and click <strong>Next</strong>.(Optionally you can select
		Manual Setting and increase the Concurrent connections).<br /> 7.
		Accept the default networking options (<strong>Enable TCP/IP
			Networking</strong>, <strong>Port Number 3306</strong>), and the<br />
		default server SQL mode (<strong>Enable Strict Mode</strong>), and
		click <strong>Next</strong>.<br /> 8. Select <strong>Best
			Support for Multilingualism</strong>, and click <strong>Next</strong>.<br />
		This sets the default character set to be UTF-8.<br /> 9. (Windows)
		Select <strong>Install as Windows Service </strong>and <strong>Include
			Bin Directory in Windows PATH</strong>, and<br /> click <strong>Next</strong>.<br />
		10. Set the following security options:<br /> a. Select <strong>Modify
			Security Settings</strong>.<br /> b. Type the root password admin, and then
		retype the password.<br /> 11. Click <strong>Next</strong>.<br />
		12. Click <strong>Execute</strong>.<br /> A message informs you the
		configuration is complete and MySQL is installed.<br /> 13. Click <strong>Finish</strong>.<br />
		(Note: Sometimes you may get error at Apply Security Settings or at
		Start Service and Apply Security Settings. (The security settings code
		could not be applied to the database because the connection has failed
		with the following error - some error no). This will happen only when
		you uninstall and reinstall MySQL. When you uninstall MySQL it won't
		delete data folder which is inside "C:\Program Files\MySQL\MySQL
		Server 5.1\data". So delete the entire folder MySQL from Program Files
		and try installing a fresh copy of MySQL once again then follow the
		steps which is mentioned in <strong>Configuring MySQL</strong>. (Some
		times you may not be able to delete MySQL folder which is inside
		"C:\Program Files". This is because MySQL might be running in the
		background. So to avoid that
	</p>
	<ol start="1" type="1">
		<li>Go to Control Panel -&gt; Administrative Tools -&gt; Services
			(Short cut: start-&gt; Run -&gt; Type "services.msc") .</li>
		<li>Look of MySQL in the list and click that. Then <strong>stop</strong>
			the process by clicking Stop button and click <strong>ok</strong></li>
		<li>In task manager (Ctrl+Alt+Del) look for mysqld.exe in
			Processes Tab. Then click End process. Now try deleting MySQL folder
			from Program Files.  </li>
	</ol>
	<p>&nbsp;</p>
	<p>MySQL is set up. Next, you can verify that MySQL is correctly
		installed.</p>
	<p>
		<strong>Verifying the MySQL installation</strong>
	</p>
	<p>Once you have installed MySQL, this task describes how to verify
		that it was installed correctly.</p>
	<p>
		1. Open a command prompt.<br /> 2. At the prompt, enter mysql -u root
		-p.<br /> 3. Type the password that you set during the installation,
		and press ENTER.<br /> Information about the installed MySQL version
		displays. If no errors are reported, MySQL is installed and running.
	</p>
	<ol start="4" type="1">
		<li>At the mysql&gt; prompt, type exit to exit MySQL.</li>
		<li>You can even test using Start-&gt;All
			Programs-&gt;MySQL-&gt;MySQL Server 5.1-&gt; MySQL Command Line
			Client. Then type your password and check.</li>
	</ol>
	<p>You have installed MySQL successfully.</p>

</div>