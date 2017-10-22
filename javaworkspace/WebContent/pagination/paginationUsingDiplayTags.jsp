<div id="tutorialLinks">

	<h2>Pagination Using Display Tags</h2>
	<p>
		<strong><u>Overview</u></strong>
	</p>
	<p>The display tag library is an open source suite of custom tags
		that provide high-level web presentation patterns which will work in
		an MVC model. The library provides a significant amount of
		functionality while still being easy to use.</p>

	<p>
		<strong><u>Pre-Requisites:</u></strong>
	</p>
	<ul type="disc">
		<li>jdk1.6.0_11&nbsp;(&nbsp;works with previous versions of JDK)</li>
		<li>DisplayTag1.2</li>
	</ul>
	<p>
		<strong><u>Download Location:</u></strong><br />
	</p>
	<p>
		<strong><u>Binary file</u></strong>
	</p>
	<p>
		<a target="_blank"
			href="http://sourceforge.net/projects/displaytag/files/display%20tag%20library/displaytag-1.2-bin.zip">http://sourceforge.net/projects/displaytag/files/display%20tag%20library/displaytag-1.2-bin.zip</a><br />
	</p>
	<p>
		<strong><u>Source Code Downloads</u></strong><br />
	</p>
	<p>
		<a target="_blank"
			href="http://sourceforge.net/projects/displaytag/files/display%20tag%20library/displaytag-1.2-src.zip">http://sourceforge.net/projects/displaytag/files/display%20tag%20library/displaytag-1.2-src.zip</a><br />
	</p>
	<p>
		<strong><u>Download Pages</u></strong>
	</p>
	<ol start="1" type="1">
		<li><a target="_blank"
			href="http://sourceforge.net/projects/displaytag/files/">http://sourceforge.net/projects/displaytag/files/</a>
		</li>
		<li><a target="_blank"
			href="http://displaytag.sourceforge.net/1.2/download.html">http://displaytag.sourceforge.net/1.2/download.html</a></li>
	</ol>
	<p>
		<strong><u>Required .jar files</u></strong>
	</p>
	<p>
		<br /> If you would like to make use of the display taglib in your
		own application, do the following:
	</p>
	<ul>
		<li>Drop the displaytag-<em>version</em>.jar file in your
			application WEB-INF/lib directory
		</li>
		<li>Make sure that following libraries are in your WEB-INF/lib
			directory (or made available via the classpath to your application
			server). You can download a copy of everything from jakarta or you
			can grab them from the example webapp in the binary distribution. The
			following is the list of dependencies:</li>
	</ul>
	<ol>
		<li>commons-beanutils-1.7.0.jar</li>
		<li>commons-collections-3.1.jar</li>
		<li>commons-lang-2.3.jar</li>
		<li>displaytag-1.2.jar</li>
		<li>displaytag-export-poi-1.2.jar(optional excel export module)</li>
		<li>itext-1.3.jar(optional, for pdf/rtf export)</li>
		<li>jcl104-over-slf4j-1.4.2.jar</li>
		<li>jstl-1.1.2.jar</li>
		<li>log4j-1.2.13.jar</li>
		<li>poi-3.2-FINAL.jar</li>
		<li>slf4j-api-1.4.2.jar</li>
		<li>slf4j-log4j12-1.4.2.jar</li>
		<li>standard-1.0.6.jar</li>
	</ol>
	<p>
		<strong><u>Steps to run the sample web application</u></strong>
	</p>
	<p>Add this JAR files to your project build path</p>
	<ul>
		<li>Download the binary distributions from the <a target="_blank"
			href="http://sourceforge.net/project/showfiles.php?group_id=73068">SourceForge
				file server</a> (<a target="_blank"
			href="http://sourceforge.net/projects/displaytag/files/display%20tag%20library/displaytag-1.2-bin.zip">Click
				here to download</a>)
		</li>
	</ul>
	<ul>
		<li>Extract the .zip file into some location. Locate the file
			with the name "displaytag-examples-1.2.war".</li>
	</ul>
	<ul>
		<li>Deploy the sample web application
			(displaytag-examples-1.2.war) to your application server or web
			server.  Deploying is nothing but placing the war file inside webapps
			folder (C:\apache-tomcat-6.0.18\webapps\) and restarting the server.
			It varies according to the server.</li>
	</ul>
	<p>&nbsp;</p>
	<ul>
		<li>In browser type <a target="_blank"
			href="http://localhost:8080/displaytag-examples-1.2/">http://localhost:8080/displaytag-examples-1.2/</a></li>
		<li>You can see all the examples in the left hand side. It
			confirms that you have successfully executed the program.</li>
	</ul>
	<p>If you are a beginner it will be confusing to understand
		everything in a single program. So we have provided a simple program.</p>


	<p>
		Save as <strong>index.jsp</strong><br /> Path<strong>
			(\webapps\displayTagExample\index.jsp)</strong>
	<pre class="brush: html">			
&lt;%@ page language=&quot;java&quot; contentType=&quot;text/html; charset=ISO-8859-1&quot;
	pageEncoding=&quot;ISO-8859-1&quot;%&gt;
&lt;!DOCTYPE html PUBLIC &quot;-//W3C//DTD HTML 4.01 Transitional//EN&quot; &quot;http://www.w3.org/TR/html4/loose.dtd&quot;&gt;
&lt;html&gt;
&lt;head&gt;
&lt;meta http-equiv=&quot;Content-Type&quot; content=&quot;text/html; charset=ISO-8859-1&quot;&gt;
&lt;title&gt;DisplayTag Example - www.javaworkspace.com&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;h1&gt;DisplayTag Example - &lt;a href=&quot;http://www.javaworkspace.com&quot;
	target=&quot;_blank&quot;&gt;www.javaworkspace.com&lt;/a&gt;&lt;/h1&gt;
&lt;form method=&quot;post&quot; action=&quot;Controller&quot;&gt;&lt;input type=&quot;submit&quot;
	value=&quot;Get Report&quot;&gt;&lt;/form&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
	<br />

	<p>
		Save as <strong>Controller.java</strong><br /> Path<strong>
			(\webapps\displayTagExample\WEB-INF\classes\com\javaworkspace\displaytag\controller\Controller.java)</strong>
	</p>

<pre class="brush: java">
/*
 * Controller.java
 */
package com.javaworkspace.displaytag.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.javaworkspace.displaytag.dto.StudentDetailsDTO;

/**
 * @author www.javaworkspace.com
 * 
 */
public class Controller extends HttpServlet {
	static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		List list = new ArrayList();
		HttpSession httpSession = request.getSession();

		/*
		 * Hard-coded sample data. Normally this would come from a real data
		 * source such as a database
		 */

		list.add(new StudentDetailsDTO("Mark", "John", 25, "India"));
		list.add(new StudentDetailsDTO("Harry", "Scott", 35, "England"));
		list.add(new StudentDetailsDTO("Nathan", "Ridley", 12, "America"));
		list.add(new StudentDetailsDTO("Tom", "Hanks", 55, "France"));
		list.add(new StudentDetailsDTO("Roger", "Chris", 65, "Germany"));
		list.add(new StudentDetailsDTO("Antony", "Jason", 45, "Denmark"));

		httpSession.setAttribute("studentDetails", list);
		RequestDispatcher dispatcher = request
				.getRequestDispatcher("reportUsingDisplayTag.jsp");
		// RequestDispatcher dispatcher = request
		// .getRequestDispatcher("reportWithoutPagination.jsp");
		// RequestDispatcher dispatcher = request
		// .getRequestDispatcher("simpleReport.jsp");
		dispatcher.forward(request, response);
	}
}
</pre>
	<br />
	<p>
		Save as <strong>StudentDetailsDTO.java</strong><br /> Path<strong>
			(\webapps\displayTagExample\WEB-INF\classes\com\javaworkspace\displaytag\dto\StudentDetailsDTO.java)</strong>
	</p>

	<pre class="brush: java">
/**
 * StudentDetailsDTO.java
 */
package com.javaworkspace.displaytag.dto;

import java.io.Serializable;

/**
 * @author www.javaworkspace.com
 * 
 */
public class StudentDetailsDTO implements Serializable {

	private String studentName;
	private String fatherName;
	private int age;
	private String country;

	public StudentDetailsDTO(String studentName, String fatherName, int age,
			String country) {
		this.studentName = studentName;
		this.fatherName = fatherName;
		this.age = age;
		this.country = country;
	}

	public String getStudentName() {
		return studentName;
	}

	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}

	public String getFatherName() {
		return fatherName;
	}

	public void setFatherName(String fatherName) {
		this.fatherName = fatherName;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}
}
</pre>
	<br />
	<p>
		Save as <strong>reportUsingDisplayTag.jsp</strong><br /> Path<strong>
			(\webapps\displayTagExample\reportUsingDisplayTag.jsp)</strong>
	</p>

	<pre class="brush: html">
&lt;%@ taglib uri=&quot;http://displaytag.sf.net&quot; prefix=&quot;display&quot;%&gt;
&lt;%@ page language=&quot;java&quot; contentType=&quot;text/html; charset=ISO-8859-1&quot;
	pageEncoding=&quot;ISO-8859-1&quot;%&gt;
&lt;!DOCTYPE html PUBLIC &quot;-//W3C//DTD HTML 4.01 Transitional//EN&quot; &quot;http://www.w3.org/TR/html4/loose.dtd&quot;&gt;
&lt;html&gt;
&lt;head&gt;
&lt;link rel=&quot;stylesheet&quot; href=&quot;css/displaytag.css&quot; type=&quot;text/css&quot;&gt;
&lt;link rel=&quot;stylesheet&quot; href=&quot;css/screen.css&quot; type=&quot;text/css&quot;&gt;
&lt;link rel=&quot;stylesheet&quot; href=&quot;css/site.css&quot; type=&quot;text/css&quot;&gt;

&lt;meta http-equiv=&quot;Content-Type&quot; content=&quot;text/html; charset=ISO-8859-1&quot;&gt;
&lt;title&gt;Report Using DisplayTag - www.javaworkspace.com&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;

&lt;display:table name=&quot;sessionScope.studentDetails&quot; pagesize=&quot;2&quot;
	export=&quot;true&quot; sort=&quot;list&quot;&gt;
	&lt;display:column property=&quot;studentName&quot; title=&quot;Student Name&quot;
		sortable=&quot;true&quot; headerClass=&quot;sortable&quot; /&gt;
	&lt;display:column property=&quot;fatherName&quot; title=&quot;Father Name&quot;
		sortable=&quot;true&quot; headerClass=&quot;sortable&quot; /&gt;
	&lt;display:column property=&quot;age&quot; title=&quot;Age&quot; sortable=&quot;true&quot;
		headerClass=&quot;sortable&quot; /&gt;
	&lt;display:column property=&quot;country&quot; title=&quot;Country&quot; sortable=&quot;true&quot;
		headerClass=&quot;sortable&quot; /&gt;
&lt;/display:table&gt;

&lt;/body&gt;
&lt;/html&gt;
</pre>
	<br />
	<p>
		Save as <strong>web.xml</strong><br /> Path<strong>
			(\WEB-INF\web.xml)</strong>
	</p>

	<pre class="brush: xml">
<?xml version="1.0" encoding="UTF-8"?>
<web-app xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
			xmlns="http://java.sun.com/xml/ns/javaee"
			xmlns:web="http://java.sun.com/xml/ns/javaee/web-app_2_5.xsd"
			xsi:schemaLocation="http://java.sun.com/xml/ns/javaee http://java.sun.com/xml/ns/javaee/web-app_2_5.xsd"
			id="WebApp_ID" version="2.5">
	<display-name>DisplayTag</display-name>
	<welcome-file-list>
		<welcome-file>index.html</welcome-file>
		<welcome-file>index.htm</welcome-file>
		<welcome-file>index.jsp</welcome-file>
		<welcome-file>default.html</welcome-file>
		<welcome-file>default.htm</welcome-file>
		<welcome-file>default.jsp</welcome-file>
	</welcome-file-list>
	<servlet>
		<description>
			Display Tag Example www.javaworkspace.com
		</description>
		<display-name>Controller</display-name>
		<servlet-name>Controller</servlet-name>
		<servlet-class>
			com.javaworkspace.displaytag.controller.Controller
		</servlet-class>
	</servlet>
	<servlet-mapping>
		<servlet-name>Controller</servlet-name>
		<url-pattern>/Controller</url-pattern>
	</servlet-mapping>
</web-app>
</pre>

	<ul>
		<li><a href="downloads/displayTagExample.zip" target="_blank"
			class="downloadLink">Click here to download the javaworkspace
				sample program.</a></li>
		<li>For file size constraint we are not providing the necessary
			jar files in displayTagExample</li>
		<li>Copy all the library files from sample web application and
			paste it inside your WEB-INF\lib folder (javaworkspace sample
			program).</li>
		<li>Some of the jar files are optional. But at this moment copy
			all the .jar files.</li>
		<li>In Controller.java uncomment any one to get the report
			accordingly.</li>
	</ul>
	<p>
		            RequestDispatcher dispatcher = request <br />
		.getRequestDispatcher(&quot;reportUsingDisplayTag.jsp&quot;); <br />
		// RequestDispatcher dispatcher = request <br /> //
		.getRequestDispatcher(&quot;reportWithoutPagination.jsp&quot;); <br />
		// RequestDispatcher dispatcher = request <br /> //
		.getRequestDispatcher(&quot;simpleReport.jsp&quot;);
	</p>

	<div class="tutorialContent">
		<img src="images/contents/displayTag.jpg"
			alt="DisplayTag - www.javaworkspace.com" />
	</div>

	<ul>
		<li>By clicking on the column title. You can sort the records.</li>
	</ul>
	<p>
		&lt;display:table name=&quot;sessionScope.studentDetails&quot;
		pagesize=&quot;2&quot; <br /> export=&quot;true&quot;
		sort=&quot;list&quot;&gt; <br /> &lt;display:column
		property=&quot;studentName&quot; title=&quot;Student Name&quot; <br />
		sortable=&quot;true&quot; headerClass=&quot;sortable&quot; /&gt; <br />
		&lt;/display:table&gt;
	</p>
	<ul>
		<li>Change the pagesize attribute with any number. By changing
			the pagesize you can determine the number of records per page.</li>
		<li>If you don't want any of the reporting options you can remove
			that by editing displaytag.properties file.</li>
	</ul>

	<p>
		Save as <strong>displaytag.properties</strong><br /> Path<strong>
			(displayTagExample\WEB-INF\classes)</strong>
	</p>

	<pre class="brush: java">
#sort.behavior=list
#sort.amount=list
#basic.empty.showtable=true
#basic.msg.empty_list=No results matched your criteria.
#paging.banner.placement=top
#paging.banner.onepage=<span class="pagelinks"></span>
export.types=csv excel xml pdf rtf
export.excel=true
export.csv=true
export.xml=true
export.pdf=true
export.rtf=true
export.excel.class=org.displaytag.export.excel.DefaultHssfExportView
export.pdf.class=org.displaytag.export.DefaultPdfExportView
export.rtf.class=org.displaytag.export.DefaultRtfExportView
# if set, file is downloaded instead of opened in the browser window
#export.[mymedia].filename=
</pre>

	<p>If you don't want rtf format, then change export.rtf= false. You
		can change all the values according to your requirements.</p>
	<ul>
		<li>Edit displaytag.css to change the border size, table size,
			background... etc.</li>
	</ul>
	<p>
		<strong><u>Further Reading:</u></strong>
	</p>
	<p>Main Page:</p>
	<p>
		<a target="_blank" href="http://displaytag.sourceforge.net/1.2/">http://displaytag.sourceforge.net/1.2/</a>
	</p>
	<p>&nbsp;</p>

	<p>
		<strong><u>Relate Links:</u></strong>
	</p>
	<p>
		<a href="http://www.javaworkspace.com/createExecutableJar.do">Create
			Executable File In Java</a><br /> <a
			href="http://www.javaworkspace.com/privacyPolicyGenerator.do">Generate
			Private Policy online</a><br /> <a
			href="http://www.javaworkspace.com/pagerTags.do">Pager Tag
			Tutorial</a><br /> <a
			href="http://www.javaworkspace.com/addSocialBookmarkingService.do">Add
			Social Bookmark</a><br /> <a
			href="http://www.javaworkspace.com/javaMail.do">Send E-mail
			through java program</a><br /> <a
			href="http://www.javaworkspace.com/changeTomcatPortNumber.do">Change
			Tomcat Port Number</a>
	</p>

</div>