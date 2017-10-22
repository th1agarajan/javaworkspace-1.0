<div id="tutorialLinks">

	<h2>Create Executable Jar File</h2>

	<p>
		<strong><u>Pre-Requisites:</u></strong>
	</p>
	<ul>
		<li>jdk1.6.0_11&nbsp;(&nbsp;works with previous versions of JDK
			and J2sdk)</li>
	</ul>
	<p>
		<strong>&nbsp;</strong><strong><u>Installed location:</u></strong>
	</p>
	<ul>
		<li>jdk1.6.0_11 -&gt;   C:\Program Files\Java\jdk1.6.0_11\</li>
	</ul>
	<p>
		<strong><u>Environment Variables:</u></strong>
	</p>
	<p>Enter Variable name and Variable value which is mentioned below.</p>

	<table border="1" cellspacing="0" cellpadding="0">
		<tr valign="middle">
			<td width="139" align="right">Variable name:</td>
			<td width="451"><strong>&nbsp;&nbsp;JAVA_HOME</strong></td>
		</tr>
		<tr valign="middle">
			<td width="139" align="right">Variable value:</td>
			<td width="451"><strong>&nbsp;&nbsp;C:\Program
					Files\Java\jdk1.6.0_11</strong></td>
		</tr>
	</table>
	<br />
	<table border="1" cellspacing="0" cellpadding="0">
		<tr>
			<td width="139" align="right">Variable name:</td>
			<td width="451"><strong>&nbsp;&nbsp;PATH</strong></td>
		</tr>
		<tr valign="middle">
			<td width="139" align="right">Variable value:</td>
			<td width="451"><strong>&nbsp;&nbsp;C:\Program
					Files\Java\jdk1.6.0_11\bin</strong></td>
		</tr>
	</table>
	<p>&nbsp;</p>
	<p>
		<strong><u>Steps to create directory structure</u></strong>
	</p>
	<p>
		<strong>Figure: 1 </strong>
	</p>
	<p>
		<strong><img width="550" height="445"
			src="images/contents/directoryStructure.jpg" /></strong>
	</p>
	<p>We want to separate the source from the generated files, so our
		java sources files will be in src folder. All generated files should
		be under build folder. In</p>
	<p>
		build folder we have two folders classes and jar. We'll place .class
		files inside classes folder and .jar files inside jar folder. Refer <strong>Figure:
			1 </strong>(com\javaworkspace\executablejar is our package name).
	</p>
	<ol>
		<li>Using any text editor. Create a java file
			(ExecutableJar.java) inside the folder
			E:\01javaworkspace\src\com\javaworkspace\executablejar\</li>
	</ol>
	<p>&nbsp;</p>
	<p>
		Simple java program to execute windows programs<br /> (You can even
		use HelloWorld program to create executable jar file)
	</p>
	<p>
		<strong><u>ExecutableJar.java</u></strong>
	</p>
	<p>&nbsp;</p>

	<pre class="brush: java">
/**
 * ExecutableJar.java
 */
package com.javaworkspace.executablejar;

/**
 * @author www.javaworkspace.com
 */
public class ExecutableJar {

	public static void main(String[] args) {
		Runtime runtime = Runtime.getRuntime();
		Process process = null;

		try {
			process = runtime.exec("freecell");
		} catch (Exception e) {
			System.out.println("Error executing freecell.");
		}
	}
}
</pre>

	<p>&nbsp;</p>
	<p>
		<strong><u>Note:</u></strong>
	</p>
	<p>Instead of freecell you can give any of the windows programs
		like notepad, sol (for solitaire game)</p>
	<ol>
		<li>Now we try compiling and running the program. Refer <strong>Figure:
				2</strong></li>
	</ol>
	<p>
		<strong><u>Steps</u></strong>
	</p>
	<ol>

		<li><strong>E:\01javaworkspace&gt;javac&nbsp;-sourcepath&nbsp;src&nbsp;-d&nbsp;build\classes
				src\com\javaworkspace\executablejar\ExecutableJar.java</strong></li>
		<li><strong>E:\01javaworkspace&gt;java&nbsp;-cp&nbsp;build\classes&nbsp;com.javaworkspace.<br>
				executablejar.ExecutableJar
		</strong></li>
		<li><strong>E:\01javaworkspace&gt;echo&nbsp;Main-Class:&nbsp;com.javaworkspace.<br>
				executablejar.ExecutableJar&gt;myManifest
		</strong></li>
		<li><strong>E:\01javaworkspace&gt;jar&nbsp;cfm&nbsp;<br>
				build\jar\Game.jar&nbsp;myManifest&nbsp;-C&nbsp;build\classes .
		</strong></li>
		<li><strong>E:\01javaworkspace&gt;java -jar
				build\jar\Game.jar</strong></li>
		<li><strong>E:\01javaworkspace&gt;jar&nbsp;tf&nbsp;build\jar\Game.jar</strong></li>

		<p>
			<strong>META-INF/</strong><br /> <strong>META-INF/MANIFEST.MF</strong><br />
			<strong>com/</strong><br /> <strong>com/javaworkspace/</strong><br />
			<strong>com/javaworkspace/executablejar/</strong><br /> <strong>com/javaworkspace/executablejar/ExecutableJar.class</strong>
		</p>
		<li><strong>E:\01javaworkspace&gt;</strong></li>
	</ol>
	<p>
		<strong>&nbsp;</strong><strong><u>Step: 1</u></strong>
	</p>
	<p>We are just compiling the ExecutableJar.java</p>
	<p>
		<span class="style1"><strong>-sourcepath
				&lt;path&gt;    Specify where to find input source files</strong><br /> <strong>-d
				&lt;directory&gt;             Specify where to place generated class
				files</strong></span>
	</p>
	<p>This step will just create .class file and places inside
		build\classes folder. You can do the same by simply navigating to</p>
	<p>
		<strong>E:\01javaworkspace\src\com\javaworkspace\executablejar&gt;javac
			ExecutableJar.java</strong>
	</p>
	<p>The above command will create .class file inside the same
		folder. Just cut the .class file and paste that inside</p>
	<div class="tutorialContent">
		<strong>E:\01javaworkspace\build\classes\com\javaworkspace\executablejar\ExecutableJar.class</strong>
	</div>
	<p>
		<strong><u>Step: 2</u></strong>
	</p>
	<p>
		<strong>We are testing weather the program is working or not.
			If your attempt is success you will get freecell game open.</strong>
	</p>
	<p>
		<span class="style1"><strong>-cp &lt;class search path
				of directories and zip/jar files&gt; </strong></span>
	</p>
	<p>
		<br /> <strong><u>Step: 3</u></strong><br /> <br /> We are creating
		Manifest file with the name myManifest(Refer figure:2). Instead of
		using echo command you even create a text file with any text editor
		with
	</p>
	<p>
		<strong>Main-Class:
			com.javaworkspace.executablejar.ExecutableJar</strong>
	</p>
	<p>in first line and save as myManifest.txt</p>
	<p>
		<strong><u>Note:</u></strong><br /> <br /> Do not have blanks around
		the &gt; - sign in the echo Main-Class instruction because it would
		falsify it. There should be a empty line after first line.<br /> <br />
		<strong>Figure: 2</strong>
	</p>
	<p>
		<strong><img width="550" height="259"
			src="images/contents/manifestFile.jpg" /></strong>
	</p>
	<p>
		<strong>&nbsp;</strong>
	</p>
	<p>
		<strong><u>Step: 4</u></strong>
	</p>
	<p>
		<strong>E:\01javaworkspace&gt;jar cfm build\jar\Game.jar
			myManifest -C build\classes .</strong> 
	<p>
		<strong><u>Note:</u></strong><br /> <br /> Don't forget to specify
		the . (period) after classes. This will make all the contents of the
		folder to be placed inside jar.
	</p>
	<p>
		<span class="style1"><strong>-c  create new archive</strong><br />
			<strong>-f  specify archive file name(here Game.jar is our
				archive name)</strong><br /> <strong>-m  include manifest
				information from specified manifest file</strong><br /> <strong> -C 
				change to the specified directory and include the following file</strong><br />
			<strong>If any file is a directory then it is processed
				recursively.</strong><br /> <strong>The manifest file name and the
				archive file name needs to be specified</strong><br /> <strong>in
				the same order the 'm' and 'f' flags are specified.</strong></span>
	</p>
	<p>
		<strong>&nbsp;</strong>
	</p>
	<p>
		<strong><u>Step: 5</u></strong>
	</p>
	<p>Run the program by double clicking Game.jar or by</p>
	<p>
		<strong>E:\01javaworkspace&gt;java -jar build\jar\Game.jar</strong>
	</p>
	<p>
		<strong><u>Step: 6</u></strong>
	</p>
	<p>
		<strong>E:\01javaworkspace&gt;jar tf build\jar\Game.jar</strong>
	</p>
	<p>
		<span class="style1"><strong>-t  list table of
				contents for archive</strong><br /> <strong>-f  specify archive
				file name</strong></span>
	</p>
	<p>This will display the content of Game.jar file</p>
	<p>
		<strong>Figure: 3 </strong>
	</p>

	<div class="tutorialContent">
		<img src="images/contents/commandPromptExecutableJar.jpg" />
	</div>
	<br>
	<p>
		<strong>For further reading:</strong><br /> <a
			href="http://java.sun.com/docs/books/tutorial/deployment/jar/"
			target="_blank">http://java.sun.com/docs/books/tutorial/deployment/jar/</a>
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
	<p>
		<strong><u>External links</u></strong>
	</p>

</div>
