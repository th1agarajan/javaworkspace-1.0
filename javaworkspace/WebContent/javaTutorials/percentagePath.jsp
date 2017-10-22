<div id="tutorialLinks">

	<h1>%PATH%, %JAVA_HOME%</h1>

	<p>You might have seen %PATH%, %CLASSPATH%, %JAVA_HOME%,
		%ANT_HOME%, %MAVEN_HOME%, in .bat and in Environment Variables. What
		does % really refers. To know the answer, read below.</p>

	<table border="1" cellspacing="0" cellpadding="0">
		<tr>
			<td width="139" align="right">Variable name:</td>
			<td width="451">&nbsp;&nbsp;JAVA_HOME</td>
		</tr>
		<tr valign="middle">
			<td width="139" align="right">Variable value:</td>
			<td width="451">&nbsp;&nbsp;C:\Program Files\Java\jdk1.6.0_45</td>
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
			<td width="451">%JAVA_HOME%\bin</td>
		</tr>
	</table>

	<p>
		Before continuing, make sure that you know throughly about the
		difference between class path and path. If you don't know then follow
		the link <a href="http://www.javaworkspace.com/setClasspath.do">http://www.javaworkspace.com/setClasspath.do</a>.
	</p>

	<p>In the above table, I am just setting the PATH for Java. In PATH
		you need to specify the path of folder where .exe,.bat files are
		available. To compile a java program you need the executable file
		javac.exe and to run a java program you need the executable file
		java.exe</p>

	<p>
		<Strong>D:\Users\javaworkspace>javac Myprogram.java</Strong> - Here I
		am calling the .exe file javac.exe<br> <Strong>D:\Users\javaworkspace>java
			Myprogram</Strong> - Here I am calling the .exe file java.exe
	</p>

	<p>But both javac.exe, java.exe is available inside C:\Program
		Files\Java\jdk1.6.0_45\bin\. So javac.exe and java.exe is
		available\visible only in the bin folder i.e. If you have your .java
		program inside C:\Program Files\Java\jdk1.6.0_45\bin\. Then it is not
		necessary to set PATH. i.e.
	<p>
	<p>
		copy Myprogram.java inside C:\Program Files\Java\jdk1.6.0_45\bin\ and
		compile\run the code using <br> <Strong>C:\Program
			Files\Java\jdk1.6.0_45\bin>javac Myprogram.java</Strong><br> <Strong>C:\Program
			Files\Java\jdk1.6.0_45\bin>java Myprogram</Strong><br> It works perfectly
		because the required javac.exe and java.exe files are available in the
		same folder.
	</p>

	<p>Now copy Myprogram.java inside D:\Users\javaworkspace>. Make
		sure that PATH is not set. Run the program using</p>

	<p>
		<Strong>D:\Users\javaworkspace>javac Myprogram.java</Strong><br>
		<Strong>D:\Users\javaworkspace>java Myprogram</Strong>
	</p>

	<p>Windows cannot recognize javac and java since javac.exe and
		java.exe is visible/available/accessible only in C:\Program
		Files\Java\jdk1.6.0_45\bin\. To make those .exe files available across
		all the folder and all the drivers we are setting path. Windows will
		look for the requested .exe files in the same folder first. Then it
		checks for the .exe file in all the paths mentioned in the PATH
		environment variable. Since we didn't set any path in environment
		variable windows was not able to recognize javac and java.</p>

	<p>Now specify the path where you have javac.exe and java.exe in
		PATH environment variable using</p>

	<table border="1" cellspacing="0" cellpadding="0">
		<tr>
			<td width="139" align="right">Variable name:</td>
			<td width="451">PATH</td>
		</tr>
		<tr valign="middle">
			<td width="139" align="right">Variable value:</td>
			<td width="451">C:\Program Files\Java\jdk1.6.0_45\bin</td>
		</tr>
	</table>

	<p>Now run the same program using</p>

	<p>
		<Strong>D:\Users\javaworkspace>javac Myprogram.java</Strong><br>
		<Strong>D:\Users\javaworkspace>java Myprogram</Strong>
	</p>
	<p>Now it works like a charm. Windows will look for javac.exe,
		java.exe in the same folder i.e. D:\Users\javaworkspace. But it cannot
		find the files then it searches for javac.exe, java.exe in the paths
		mentioned in the PATH environment variable. i.e. it checks for
		javac.exe, java.exe in C:\Program Files\Java\jdk1.6.0_45\bin. It finds
		those two .exe file and the program is compiled and executed
		successfully.</p>

	<p>Let us see what % does in the below example</p>

	<strong>Method:1 - without %</strong>
	<table border="1" cellspacing="0" cellpadding="0">
		<tr>
			<td width="139" align="right"><strong>Variable name:</strong></td>
			<td width="451">&nbsp;&nbsp;PATH</td>
		</tr>
		<tr valign="middle">
			<td width="139" align="right"><strong>Variable value:</strong></td>
			<td width="451">C:\Program Files\Java\jdk1.6.0_45\bin</td>
		</tr>
	</table>
	<strong>Method:2 - using %</strong>
	<table border="1" cellspacing="0" cellpadding="0">
		<tr>
			<td width="139" align="right"><strong>Variable name:</strong></td>
			<td width="451">&nbsp;&nbsp;JAVA_HOME</td>
		</tr>
		<tr valign="middle">
			<td width="139" align="right"><strong>Variable value:</strong></td>
			<td width="451">&nbsp;&nbsp;C:\Program Files\Java\jdk1.6.0_45</td>
		</tr>
	</table>
	<br>
	<table border="1" cellspacing="0" cellpadding="0">
		<tr>
			<td width="139" align="right"><strong>Variable name:</strong></td>
			<td width="451">&nbsp;&nbsp;PATH</td>
		</tr>
		<tr valign="middle">
			<td width="139" align="right"><strong>Variable value:</strong></td>
			<td width="451">%JAVA_HOME%\bin</td>
		</tr>
	</table>


	<p>
		Both <strong>Method:1</strong> and <strong>Method:2</strong> behave
		same. But the later one has some advantages over the former. In
		method:1 I have directly mentioned the path of java.exe and javac.exe
		(nothing but the bin folder) in path variable. Whereas in method:2 I
		have mentioned the path variable as '%JAVA_HOME%\bin'. Once windows
		finds a variable within % ('%someVariable%'), then it starts looking
		for its value from environment variable. Here windows starts searching
		for JAVA_HOME in environment. Since we have mentioned JAVA_HOME
		variable (see JAVA_HOME variable in method:2) as C:\Program
		Files\Java\jdk1.6.0_45 windows finds it. In path variable %JAVA_HOME%
		will be replaced with C:\Program Files\Java\jdk1.6.0_45. So
		%JAVA_HOME%\bin will be replaced with C:\Program
		Files\Java\jdk1.6.0_45\bin.
	</p>

	<strong>To verify this</strong><br>
	<ul>
		<li>Open the command prompt (Press window key + R, then type cmd
			-> Enter ) and type echo %JAVA_HOME% and press enter. You should get
			the path in next line<br> <strong>D:\Users\thiagarajan>echo
				%JAVA_HOME%</strong><br> <strong>D:\Program
				Files\Java\jdk1.6.0_45</strong>

		</li>

		<li>The other way is to type %JAVA_HOME% in Run window (Press
			window key + R to get the Run window) and click Ok.<br> Windows
			will open the bin folder. If windows fails to open the %JAVA_HOME%
			location then you can easily identify that the path mentioned in
			%JAVA_HOME% variable is wrong and it is not available.
		</li>
	</ul>

	<h3>Advantages</h3>
	<table border="1" cellspacing="0" cellpadding="0">
		<tr>
			<td width="139" align="right"><strong>Variable name:</strong></td>
			<td width="451">&nbsp;&nbsp;CATALINA_HOME</td>
		</tr>
		<tr valign="middle">
			<td width="139" align="right"><strong>Variable value:</strong></td>
			<td width="451">C:\apache-tomcat-7.0.37</td>
		</tr>
	</table>
	<br>
	<table border="1" cellspacing="0" cellpadding="0">
		<tr>
			<td width="139" align="right"><strong>Variable name:</strong></td>
			<td width="451">&nbsp;&nbsp;PATH</td>
		</tr>
		<tr valign="middle">
			<td width="139" align="right"><strong>Variable value:</strong></td>
			<td width="451">%CATALINA_HOME%\bin</td>
		</tr>
	</table>
	<br>
	<table border="1" cellspacing="0" cellpadding="0">
		<tr>
			<td width="139" align="right"><strong>Variable name:</strong></td>
			<td width="451">&nbsp;&nbsp;CLASSPATH</td>
		</tr>
		<tr valign="middle">
			<td width="139" align="right"><strong>Variable value:</strong></td>
			<td width="451">%CATALINA_HOME%\lib\servlet-api.jar</td>
		</tr>
	</table>
	<p>If I update my Tomcat version from 7.0 to 8.0 then the only
		change I have to do is to update the CATALINA_HOME path, others(PATH
		AND CLASSPATH) remain same whereas if I mentione the absolute path of
		Tomcat location in both PATH (C:\apache-tomcat-8.0.37\bin) and
		CLASSPATH(C:\apache-tomcat-8.0.37\lib\servlet-api.jar) then I have to
		update both PATH and CLASSPATH.</p>

	<p>Moreover all the application servers and web servers use
		%JAVA_HOME% in their startup(startup.bat) scripts.</p>

	<strong>For queries mail us at:&nbsp;<a
		href="mailto:javaworkspace@gmail.com">javaworkspace@gmail.com</a>
	</strong>
</div>