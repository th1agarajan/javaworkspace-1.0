<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>

<h2>PATH and CLASSPATH</h2>

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
<br>
<strong><u>Difference between CLASSPATH and PATH</u></strong>
<p>In PATH Environment variable you need to specify only
	.bat,.exe(Executable files that Operating System Uses).</p>

<p>In CLASSPATH environment you need to specify only .class files
	(i.e., jar, zip files &ndash; Inside jar, zip files you will find only
	java classes) i.e. you are helping Java Virtual Machine (JVM) to find
	Java class files</p>
<p>For running java application you need to set PATH alone. For
	versions above jdk 1.5, JAVA_HOME itself is enough. No need to set
	CLASSPATH.</p>
<p>
	<strong><u>How to set PATH</u></strong>
</p>
<p>
	<strong><u>Shortcut for Environment Variables</u></strong>
</p>
<p>
	<strong>Figure: 1 </strong>
</p>
<div class="tutorialContent">
	<img src="images/contents/WindowPause.jpg" />
</div>
<br />
<p>
	Click <b>Window key + Pause/Break</b> key
</p>
<p>
	<strong>(OR)</strong>
</p>
<p>
	Right click <strong>My Computer</strong> and click <strong>properties</strong>.
	You will get System Properties window. In that click <strong>Advanced-&gt;Environment
		variables. </strong>In User variables for &ldquo;yoursystemname&rdquo;. Click
	New
</p>
<p>In Variable name and in Variable value type as follows.</p>
<p>
	(In my case I have installed java in C colon. In your case it might be
	in different colon. So change it accordingly. You might have installed
	jdk 1.5 then in that case navigate to <strong>C:\Program
		Files\Java\jdk1.5\bin </strong>and copy the things what you are having in
	address bar(Shortcut key is Alt+D) to Variable value.
</p>

<table>
	<tr>
		<td>Variable name:</td>
		<td>JAVA_HOME</td>
	</tr>
	<tr>
		<td>Variable value:</td>
		<td>C:\Program Files\Java\jdk1.6.0_11</td>
	</tr>
</table>
<br />
<table>
	<tr>
		<td>Variable name:</td>
		<td>PATH</td>
	</tr>
	<tr>
		<td>Variable value:</td>
		<td>%PATH%;%JAVA_HOME%\bin</td>
	</tr>
</table>

<p>&nbsp;</p>

<p>Don't know what is %PATH%,%JAVA_HOME%? then click</p>
<p>
	<html:link action="/percentagePath">
		<bean:message key="link.percentagePath" />
	</html:link>
</p>

<p>
	<strong>Verify JDK:</strong>
</p>

<P>Use the java -version command, as shown below, to verify the
	installed release:</P>

<pre class="brush: java">
D:\&gt;java -version
java version "1.6.0_11"
Java(TM) SE Runtime Environment (build 1.6.0_11-b03)
Java HotSpot(TM) Client VM (build 11.0-b16, mixed mode, sharing)
</pre>

<P>The output you see may be different from what is shown above
	because the java -version command outputs vendor-specific information;
	however, if you don't see what looks like valid version information,
	then STOP! And don't proceed until you resolve that problem.</P>

<p>
	<strong>Note:</strong>
</p>
<ol>
	<li>Setting path doesn't require the computer to be restarted.</li>
	<li>After setting the path, <strong>close the command
			prompt and open a new command prompt</strong> and try typing java and javac to
		test.
	</li>
</ol>

<p>
	Navigate to <strong>C:\Program Files\Java\jdk1.6.0_11\bin </strong>and
	see what it is inside that folder. You will find .exe files.
</p>
<p>
	Inside that folder you will find <strong>javac.exe, java.exe,
		javap.exe, javah.exe, javadoc.exe appletviewer.exe</strong>&hellip;&hellip;
</p>

<p>
	<strong><u>Why we are setting PATH:</u></strong>
</p>
<p>
	These .exe files can be accessed only from <strong>C:\Program
		Files\Java\jdk1.6.0_11\bin </strong>folder. Even you can run java programs
	without setting path. The thing is you need to type you program inside
	<strong>C:\Program Files\Java\jdk1.6.0_11\bin </strong>folder. Because
	java.exe, javac.exe&hellip;. are available only inside this folder.
</p>
<p>
	We need to set path because we need to access .java.exe,
	javac.exe&hellip;..(all the files which are required to run java
	program) any where in your computer i.e., c colon, d colon, e
	colon&hellip; . If we set PATH then all the .exe files which are inside
	<strong>C:\Program Files\Java\jdk1.6.0_11\bin </strong>folder will be
	available throughout all the drives. So you can have java programs any
	where in your computer.
</p>
<p>
	<strong><u>Why we are setting CLASSPATH:</u></strong><br> &nbsp;<br>
	For running java programs it not necessary to set CLASSPATH. It is
	necessary only when you use classes from third party .jar files. Here
	in this example I am taking the example of JDBC driver for MySQL.
</p>
<p>
	<strong>mysql-connector-java-3.0.11-stable-bin.jar</strong>
</p>
<p>If you extract the above jar file, you can find Driver.class,
	Connection interface, ResultSet interface... etc inside
	&ldquo;com.mysql.jdbc&rdquo; package.</p>
<p>
	Class.forName(&ldquo;com.mysql.jdbc.Driver&rdquo;);<br> Connection
	cn=DriverManager.getConnection(&quot;String&quot;,&quot;username&quot;,&quot;password&rdquo;);
</p>
<p>We need these classes and interfaces in all the drives. That is
	the reason behind setting CLASSPATH.</p>
<p>
	You can even create a java class file with a method and you can set
	that class file in CLASSPATH, So that you can access that method in all
	the drives.<br> &nbsp;<br> D:\test\add\ClassPathTest.java
</p>
<p>
	Create a folder test inside d: and inside test create one more folder
	with the name add.<br> And copy the below program and name the
	program as ClassPathTest.java
</p>

<pre class="brush: java">
/**
 * ClassPathTest.java
 */
package add;

/**
 * @author www.javaworkspace.com
 * 
 */
public class ClassPathTest {
	public int add(int a, int b) {
		return a + b;
	}
}
</pre>

<p>Compile the program using</p>
<p>
	<strong>D:\test\add&gt;javac ClassPathTest.java</strong><br> <strong>D:\test\add&gt;</strong>
</p>
<p>
	Right click <strong>My Computer</strong> and click <strong>properties</strong>.
	You will be getting System Properties window. In that click <strong>Advanced-&gt;Environment
		variables. </strong>In User variables for &ldquo;yoursystemname&rdquo;. Click
	New if no CLASSPATH doesn&rsquo;t already exist. If CLASSPATH already
	exist click edit and append
</p>
<p>
	<strong>Variable name:&nbsp; </strong>CLASSPATH<br> <strong>Variable
		value: </strong>.;C:\apache-tomcat-6.0.14\lib\servlet-api.jar;D:\test
</p>
<p>&nbsp;</p>
<p>
	Type the below program any where in your computer for e.g.<br> In
	E:\Test.java I have my program
</p>

<pre class="brush: java">
/*
 * Test.java
 */
import add.ClassPathTest;

/**
 * @author www.javaworkspace.com
 * 
 */
class Test {
	public static void main(String[] args) {
		ClassPathTest classPathTest = new ClassPathTest();
		System.out.println(classPathTest.add(5, 7));
	}
}
</pre>

<p>Run Test.java</p>
<p>
	<strong>E:\&gt;javac Test.java</strong>
</p>
<p>
	<strong>E:\&gt;java Test</strong><br> <strong>12</strong>
</p>
<p>
	<strong>E:\&gt;</strong>
</p>
<p>You will be getting the output as 12.</p>
<p>Try copying the above program(Test.java) any where in you
	computer and try executing it.</p>
<p>
	<strong><u>How to make above program as .jar file and
			access &nbsp;</u></strong>
</p>
<p>
	Go to D:\test&gt; and make jar file of you file ClassPathTest. <br>
	For creating jar files you need to give &ldquo;<strong>jar cvf
		javaworkspace.jar .</strong>&rdquo; At last I have given .(period) because all
	the files which is inside D:\test&gt; will be made as jar file instead
	you can give as &ldquo;<strong>jar cvf javaworkspace.jar
		.class</strong>&rdquo;
</p>
<p>
	<strong>D:\&gt;cd test</strong>
</p>
<p>
	<strong>D:\test&gt;jar cvf javaworkspace.jar .</strong><br> <strong>added
		manifest</strong><br> <strong>adding: add/(in = 0) (out=
		0)(stored 0%)</strong><br> <strong>adding:
		add/ClassPathTest.class(in = 260) (out= 194)(deflated 25%)</strong><br> <strong>adding:
		add/ClassPathTest.java(in = 105) (out= 85)(deflated 19%)</strong>
</p>
<p>
	<strong>D:\test&gt;</strong>
</p>
<p>Now copy that jar file(javaworkspace.jar) in any folder. In my
	case I am copying inside C:\Program Files\Java\jdk1.6.0_11\lib\</p>
<p>In Environment Variable</p>
<p>
	<strong><u>Remove the already existing D:\test</u></strong>
</p>
<p>Enter Variable name and Variable value which is mentioned below.</p>

<table>
	<tr>
		<td>Variable name:</td>
		<td><strong>CLASSPATH</strong></td>
	</tr>
	<tr>
		<td>Variable value:</td>
		<td><strong>.;C:\apache-tomcat-6.0.14\lib\servlet-api.jar;D:\test</strong></td>
	</tr>
</table>
<br />
<p>Now change that as</p>
<table>
	<tr>
		<td>Variable name:</td>
		<td><strong>CLASSPATH</strong></td>
	</tr>
	<tr>
		<td>Variable value:</td>
		<td><strong>.;C:\apache-tomcat-6.0.14\lib\servlet-api.jar;C:\Program
				Files\Java\jdk1.6.0_11\lib\javaworkspace.jar</strong></td>
	</tr>
</table>
<p>&nbsp;</p>
<p>That&rsquo;s it. You can access ClassPathTest any where. What you
	have to do is copy javaworkspace.jar in a pendrive and copy that in
	your friends system and set classpath for that and type only Test.java
	file and run. You will be getting output. Like this some one has
	written some classes and interface and packed in to a jar file called
	servlet-api.jar, mysql-connector-java-3.0.11-stable-bin.jar&hellip;
	etc.., and given to you. So you are setting classpath for the jar file.
	And by creating object for the class which is present inside the .jar
	file you are accessing the methods.</p>
<p>
	<strong>For queries mail us at:&nbsp;<a
		href="mailto:javaworkspace@gmail.com">javaworkspace@gmail.com</a></strong>
</p>
