<div id="tutorialLinks">

	<h2>Add Plug-ins For Eclipse</h2>
	<p>
		<strong><u>Pre-Requisites:</u></strong>
	</p>
	<ul>
		<li>jdk1.6.0_11</li>
		<li>Eclipse 3.3.2</li>
	</ul>

	<p>
		<strong><u>Installed location:</u></strong>
	</p>
	<p>
		jdk1.6.0_11                 -&gt;   C:\Program Files\Java\jdk1.6.0_11\<br />
		Eclipse 3.3.2               -&gt;    C:\eclipse 3.3.2\eclipse.exe
	</p>
	<p>&nbsp;</p>
	<p>
		<strong><u>Places where plug-ins should be copied</u></strong>
	</p>
	<p>
		features                     -&gt;    C:\eclipse 3.3.2\features <br />
		plugins                       -&gt;    C:\eclipse 3.3.2\plugins
	</p>
	<p>&nbsp;</p>
	<p>
		<strong><u>Environment Variables:</u></strong>
	</p>
	<p>
		<strong>Enter Variable name and Variable value which is
			mentioned below. </strong>
	</p>
	<p>
		<strong>&nbsp;</strong>
	</p>
	<table border="1" cellspacing="5" cellpadding="0">
		<tr>
			<td width="139" align="right"><strong>Variable name:</strong></td>
			<td width="451"><strong>JAVA_HOME</strong></td>
		</tr>
		<tr>
			<td width="139" align="right"><strong>Variable value:</strong></td>
			<td width="451" valign="top"><strong>C:\Program
					Files\Java\jdk1.6.0_11</strong></td>
		</tr>
	</table>
	<p>
		<strong><u>&nbsp;</u></strong>
	</p>
	<p>
		<strong><u>Steps to install plug-ins for eclipse</u></strong>
	</p>
	<ul>
		<li>Before installing any plug-ins you should stop Eclipse and
			Tomcat if they're already running.</li>
		<li>There are umpteen number of free and commercial plug-ins
			available in the market. You can download one of them from <strong><a
				href="http://www.eclipseplugincentral.com/">http://www.eclipseplugincentral.com/</a>.</strong>
		</li>
		<li>It is important to pick the one that matches your eclipse
			version. So check the compatibility before downloading.</li>
		<li>Download any plug-in and extract it in any of the folder
			temporarily. Once you extract will get two folders</li>
		<ul>
			<li>features (for some plug-ins you may not get this)</li>
			<li>plugins</li>
		</ul>
		<li>Copy the contents of plugins folder to C:\eclipse
			3.3.2\plugins\  and copy the contents of features folder (if
			available) to C:\eclipse 3.3.2\features\</li>
		<li>Start Eclipse. You can check whether the plug-in is installed
			or not from navigating through Help -&gt; About Eclipse Platform
			-&gt; Plug-in-Details. You can see the plug-in listed, for some
			plug-ins you will get the plug-in logo. If the plug-in is not listed
			then, close eclipse and navigate to the place where you have
			installed eclipse from command Prompt (Refer: <strong>figure
				1</strong>). Start eclipse using clean command.
		</li>
	</ul>
	<p>
		C:eclipse 3.3.2&gt;eclipse -clean<br />
	</p>
	<p>
		<b>Figure 1</b><br /> <img
			src="images/contents/AddPluginsForEclipse.jpg"
			alt="Start eclipse using clean command" width="429" height="271" />
	</p>
	<p>
		<strong><u>Difference between Eclipse and MyEclipse</u></strong><br />
	</p>
	<p>
		MyEclipse is a plug-in (commercial) for Eclipse. To install MyEclipse
		You need to download Eclipse, MyEclipse plug-in and you have to add
		the plug-in as mentioned above. You can download MyEclipse plug-in and
		add to the eclipse which you using already. If you don't have both
		Eclipse and MyEclipse plug-in. Then you can download a Eclipse which
		is pre installed with MyEclipse plug-in from MyEclipse.<br /> It is
		better not to use MyEclipse because it is commercial and no company
		(rarely used) will prefer MyEclipse. But it is user friendly and no
		configuration required to run springs, hibernate, jsf... etc. You can
		achieve the same functionality of MyEclipse by downloading free
		plug-ins. But you have to configure on your own. 
	</p>

	<p>
		<strong><u>Download plug-in using Update Manager</u></strong><br />
	</p>
	<p>
		You can download plug-ins directly into eclipse using Update Manager<br />
		Help-&gt;Software Updates-&gt;Find and Install-&gt;Select for new
		feature to install-&gt;New Remote Site-&gt;Enter name (any thing which
		describe the plug-in) and URL accordingly (sample given below).
	</p>
	<table border="1" cellspacing="5" cellpadding="0">
		<tr>
			<td width="139" align="right"><strong>Name:</strong></td>
			<td width="451"><strong>SpringIDE</strong></td>
		</tr>
		<tr>
			<td width="139">
				<p align="right">
					<strong>URL:</strong>
				</p>
			</td>
			<td width="451" valign="top"><strong><a
					href="http://springide.org/updatesite">http://springide.org/updatesite</a></strong>
			</td>
		</tr>
	</table>
	<p>
		(You can get the update manager URL from plug-in provider website)<br />
		Restart eclipse or close eclipse and Start eclipse using clean
		command.
	</p>
	<p>
		<strong><u>Relate Links:</u></strong>
	</p>
	<p>
		<a href="http://www.javaworkspace.com/createExecutableJar.do">http://www.javaworkspace.com/createExecutableJar.do</a><br />
		<a href="http://www.javaworkspace.com/termsOfServiceGenerator.do">http://www.javaworkspace.com/termsOfServiceGenerator.do</a><br />
		<a href="http://www.javaworkspace.com/openPayPalAccount.do">http://www.javaworkspace.com/openPayPalAccount.do</a><br />
		<a href="http://www.javaworkspace.com/hostYourWebSite.do">http://www.javaworkspace.com/hostYourWebSite.do</a><br />
		<a
			href="http://www.javaworkspace.com/listOfOnlineAdvertisingPrograms.do">Online
			Advertising Programs</a><br /> <a
			href="http://www.javaworkspace.com/tipsAndTricks.do">http://www.javaworkspace.com/tipsAndTricks.do</a>
	</p>

	<p>
		<strong>For queries mail us at:&nbsp;<a
			href="mailto:javaworkspace@gmail.com">javaworkspace@gmail.com</a></strong>
	</p>
</div>
