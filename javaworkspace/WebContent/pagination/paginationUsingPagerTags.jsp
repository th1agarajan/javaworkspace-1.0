<div id="tutorialLinks">
<h2>Pagination Using Pager Tags</h2>

<br />
<p><strong><u>Overview</u></strong></p>
<p>The Pager Tag Library is the easy and flexible way to implement
paging of large data sets in JavaServer Pages (JSP). It can emulate all
currently known paging styles with minimal effort. It also includes
re-usable index styles that emulate the search result navigators of
popular web sites such as GoogleSM, AltaVista® and Yahoo!. The Pager Tag
Library does most of the work for you by dynamically organizing your
data set into pages and generating a browsable index with virtually any
look desired. JSPTags.com offers JSP developers a directory of resources
related to JavaServer Pages, Servlets and Java. As the name JSPTags.com
implies, special interest is given to JSPTag Libraries. Many developers
are working with and designing new JSP Tag Libraries and JSPTags.com
will provide a source for news, release information and documentation.
The Pager Tag Library is distributed as a ready-to-run Web Application
Archive (WAR). You can deploy the distribution WAR file as-is to your
JavaServer Pages 1.1 compliant server. The WAR file may also be used as
the basis for a new web application or integrated into an existing web
application. Pager Tag Library can be downloaded from</p>

<p><strong><u>Pre-Requisites:</u></strong></p>
<ol type="disc">
	<li>jdk1.6.0_11&nbsp;(&nbsp;works with previous versions of JDK)</li>
	<li>Note: for previous versions of JDK. All the .java files should
	be compiled once again. Make sure that all the supporing files are in
	classpath. To explore more about classpath refer <a
		href="http://www.javaworkspace.com/setClasspath.do">Set Classpath</a></li>
	<li>pager-taglib.jar</li>
	<li>pager-src-jar (Optional)</li>
	<li>apache-tomcat-6.0.16 (Works with previous versions)</li>
</ol>

<p><strong><u>Download Location:</u></strong></p>

<ol start="1" type="1">
	<li><a
		href="http://jsptags.com/tags/navigation/pager/pager-taglib-2.0.war"
		target="_blank">Click here to download Pager Tag Demo application</a>
	</li>
	<li><a
		href="http://jsptags.com/tags/navigation/pager/download.jsp"
		target="_blank">Click here to go to download page</a></li>
	<li><a
		href="http://jsptags.com/tags/navigation/pager/pager-demo.jsp"
		target="_blank">Page Tag Library Demo in online</a></li>
</ol>

<p><strong><u>Required .jar files</u></strong><br />
<br />
If you would like to make use of the Pager Tag in your own application,
do the following:<br />

Drop the pager-taglib.jar file in your application WEB-INF/lib directory
Make sure that following libraries are in your WEB-INF/lib directory (or
made available via the classpath to your application server). You can
download a copy of everything from <a
	href="http://jsptags.com/tags/navigation/pager/download.jsp">http://jsptags.com/tags/navigation/pager/download.jsp</a>
or you can grab them from the example webapp in the binary distribution.
The following is the list of dependencies:</p>

<ol start="1" type="1">
	<li>pager-taglib.jar</li>
	<li>pager-src-jar (Optional)</li>
</ol>

<p><strong><u>Steps to run the sample web application</u></strong></p>

<p>Add this JAR files to your project build path</p>
<ol type="disc">
	<li>Download the binary distributions from the <a
		href="http://jsptags.com/tags/navigation/pager/pager-taglib-2.0.war">http://jsptags.com/tags/navigation/pager/pager-taglib-2.0.war</a></li>
	<li>Deploy the sample web application (pager-taglib-2.0.war to
	your application server or web server.&nbsp; Deploying is nothing but
	placing the war file inside webapps folder
	(C:\apache-tomcat-6.0.18\webapps\) and restarting the server. It varies
	according to the server.</li>
	<li>In browser type <a
		href="http://localhost:8080/pager-taglib-2.0/">http://localhost:8080/pager-taglib-2.0/</a></li>
	<li>You can see the demo and documentation link in the left hand
	side. It confirms that you have successfully executed the program.
	Click demo link to see the demo.</li>
</ol>

<p>If you are a beginner it will be confusing to understand the
sample program. So we have provided a simple program.</p>


<p>Save as <strong>index.jsp</strong><br />
Path<strong> (\webapps\PagerTags\index.jsp)</strong>
			
<pre class="brush: html">			
&lt;%@ page language=&quot;java&quot; contentType=&quot;text/html; charset=ISO-8859-1&quot;
	pageEncoding=&quot;ISO-8859-1&quot;%&gt;
&lt;!DOCTYPE html PUBLIC &quot;-//W3C//DTD HTML 4.01 Transitional//EN&quot; &quot;http://www.w3.org/TR/html4/loose.dtd&quot;&gt;
&lt;html&gt;
&lt;head&gt;
&lt;meta http-equiv=&quot;Content-Type&quot; content=&quot;text/html; charset=ISO-8859-1&quot;&gt;
&lt;title&gt;Pager Example - www.javaworkspace.com&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;h1&gt;PagerTag Example - &lt;a href=&quot;http://www.javaworkspace.com&quot;
	target=&quot;_blank&quot;&gt;www.javaworkspace.com&lt;/a&gt;&lt;/h1&gt;
&lt;form method=&quot;post&quot; action=&quot;Controller&quot;&gt;&lt;input type=&quot;submit&quot;
	value=&quot;Get Report&quot;&gt;&lt;/form&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>			
<br />

<p>Save as <strong>Controller.java</strong><br />
Path<strong>
(\webapps\PagerTags\WEB-INF\classes\com\javaworkspace\pagertag\controller\Controller.java)</strong></p>

<pre class="brush: java">
/*
 * Controller.java
 */
package com.javaworkspace.pagertag.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.javaworkspace.pagertag.dto.StudentDetailsDTO;

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
				.getRequestDispatcher("reportWithPagination.jsp");
		dispatcher.forward(request, response);
	}
}
</pre>

<br />
<p>Save as<strong>StudentDetailsDTO.java</strong><br />
Path<strong>
(\webapps\PagerTags\WEB-INF\classes\com\javaworkspace\pagertag\dto\StudentDetailsDTO.java)</strong></p>

<pre class="brush: java">
/**
 * StudentDetailsDTO.java
 */
package com.javaworkspace.pagertag.dto;

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
</pre> <br />
<p>Save as <strong>reportWithPagination.jsp</strong><br />
Path<strong>
(\webapps\PagerTags\reportWithPagination.jsp)</strong></p>

<pre class="brush: html">
&lt;%@ taglib uri=&quot;http://jsptags.com/tags/navigation/pager&quot; prefix=&quot;pg&quot;%&gt;
&lt;%@ page language=&quot;java&quot; contentType=&quot;text/html; charset=ISO-8859-1&quot;
	pageEncoding=&quot;ISO-8859-1&quot;%&gt;
&lt;%@page import=&quot;java.util.List&quot;%&gt;
&lt;%@page import=&quot;com.javaworkspace.pagertag.dto.StudentDetailsDTO&quot;%&gt;

&lt;!DOCTYPE html PUBLIC &quot;-//W3C//DTD HTML 4.01 Transitional//EN&quot; &quot;http://www.w3.org/TR/html4/loose.dtd&quot;&gt;
&lt;html&gt;
&lt;head&gt;
&lt;meta http-equiv=&quot;Content-Type&quot; content=&quot;text/html; charset=ISO-8859-1&quot;&gt;
&lt;title&gt;Pager Tag Tutorial - www.javaworkspace.com&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;

&lt;%
	String style = &quot;simple&quot;;
	String position = &quot;top&quot;;
	int maxPageItems = 2;
	int maxIndexPages = 5;
	List list = (List) session.getAttribute(&quot;studentDetails&quot;);
%&gt;

&lt;center&gt;&lt;pg:pager items=&quot;&lt;%= list.size()%&gt;&quot; index=&quot;center&quot;
	maxPageItems=&quot;&lt;%= maxPageItems %&gt;&quot; maxIndexPages=&quot;&lt;%= maxIndexPages %&gt;&quot;
	isOffset=&quot;&lt;%= true %&gt;&quot; export=&quot;offset,currentPageNumber=pageNumber&quot;
	scope=&quot;request&quot;&gt;
	&lt;%-- keep track of preference --%&gt;
	&lt;pg:param name=&quot;style&quot; /&gt;
	&lt;pg:param name=&quot;position&quot; /&gt;
	&lt;pg:param name=&quot;index&quot; /&gt;
	&lt;pg:param name=&quot;maxPageItems&quot; /&gt;
	&lt;pg:param name=&quot;maxIndexPages&quot; /&gt;

	&lt;table width=&quot;90%&quot; cellspacing=&quot;4&quot; cellpadding=&quot;4&quot; border=&quot;1&quot;&gt;

		&lt;tr bgcolor=&quot;#FFCE00&quot;&gt;
			&lt;td&gt;&lt;strong&gt;Student Name&lt;/strong&gt;&lt;/td&gt;
			&lt;td&gt;&lt;strong&gt;Father Name&lt;/strong&gt;&lt;/td&gt;
			&lt;td&gt;&lt;strong&gt;Age&lt;/strong&gt;&lt;/td&gt;
			&lt;td&gt;&lt;strong&gt;Country&lt;/strong&gt;&lt;/td&gt;
		&lt;/tr&gt;

		&lt;%
			for (int i = offset.intValue(), l = Math.min(i
								+ maxPageItems, list.size()); i &lt; l; i++) {
		%&gt;&lt;pg:item&gt;
			&lt;tr&gt;
				&lt;%
					StudentDetailsDTO studentDetailsDTO = (StudentDetailsDTO) list
												.get(i);
										out.println(&quot;&lt;td&gt;&quot;
												+ studentDetailsDTO.getStudentName()
												+ &quot;&lt;/td&gt;&quot;);
										out.println(&quot;&lt;td&gt;&quot;
												+ studentDetailsDTO.getFatherName()
												+ &quot;&lt;/td&gt;&quot;);
										out.println(&quot;&lt;td&gt;&quot; + studentDetailsDTO.getAge()
												+ &quot;&lt;/td&gt;&quot;);
										out.println(&quot;&lt;td&gt;&quot;
												+ studentDetailsDTO.getCountry()
												+ &quot;&lt;/td&gt;&quot;);
				%&gt;
			&lt;/tr&gt;
		&lt;/pg:item&gt;
		&lt;%
			}
		%&gt;
	&lt;/table&gt;
	&lt;hr&gt;

	&lt;pg:index&gt;
		&lt;!--&lt;jsp:include page=&quot;/WEB-INF/jsp/alltheweb.jsp&quot; flush=&quot;true&quot; /&gt;--&gt;
		&lt;!--&lt;jsp:include page=&quot;/WEB-INF/jsp/altavista.jsp&quot; flush=&quot;true&quot; /&gt;--&gt;
		&lt;jsp:include page=&quot;/WEB-INF/jsp/google.jsp&quot; flush=&quot;true&quot; /&gt;
		&lt;!--&lt;jsp:include page=&quot;/WEB-INF/jsp/jsptags.jsp&quot; flush=&quot;true&quot; /&gt;--&gt;
		&lt;!--&lt;jsp:include page=&quot;/WEB-INF/jsp/lycos.jsp&quot; flush=&quot;true&quot; /&gt;--&gt;
		&lt;!--&lt;jsp:include page=&quot;/WEB-INF/jsp/texticon.jsp&quot; flush=&quot;true&quot; /&gt;--&gt;
		&lt;!--&lt;jsp:include page=&quot;/WEB-INF/jsp/yahoo.jsp&quot; flush=&quot;true&quot; /&gt;--&gt;
		&lt;!--&lt;jsp:include page=&quot;/WEB-INF/jsp/simple.jsp&quot; flush=&quot;true&quot; /&gt;--&gt;
	&lt;/pg:index&gt;

&lt;/pg:pager&gt;&lt;/center&gt;

&lt;/body&gt;
&lt;/html&gt;
</pre>

<br />
<p>Save as <strong>web.xml</strong><br />
Path<strong> (\WEB-INF\web.xml)</strong></p>

<pre class="brush: xml">
<?xml version="1.0" encoding="UTF-8"?>

<web-app xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	xmlns="http://java.sun.com/xml/ns/javaee"
	xmlns:web="http://java.sun.com/xml/ns/javaee/web-app_2_5.xsd"
	xsi:schemaLocation="http://java.sun.com/xml/ns/javaee http://java.sun.com/xml/ns/javaee/web-app_2_5.xsd"
	id="WebApp_ID" version="2.5">

	<display-name>Pager Tag</display-name>

	<welcome-file-list>
		<welcome-file>index.jsp</welcome-file>
	</welcome-file-list>

	<servlet>
		<description>
			Pager Tag Example www.javaworkspace.com
		</description>
		<display-name>Controller</display-name>
		<servlet-name>Controller</servlet-name>
		<servlet-class>
			com.javaworkspace.pagertag.controller.Controller
		</servlet-class>
	</servlet>

	<servlet-mapping>
		<servlet-name>Controller</servlet-name>
		<url-pattern>/Controller</url-pattern>
	</servlet-mapping>

</web-app>
</pre>

<a class="downloadLink"
	href="http://www.javaworkspace.com/downloads/PagerTagExample.war"
	target="_blank">Click here to download the source code of javaworkspace sample program</a>

<p>&nbsp;</p>

<p>There are lots of pagination styles (google, altavista,
alltheweb, lycos, yahoo...) available in WEB-INF\jsp\ folder. Choose any
one of the paging style. In reportWithPagination.jsp uncomment any one
of the style which you want. You can even delete the remaining styles.
For some pagination styles (google) it requires internet connection (not
mandatory). (Optional: You can download those images and paste in images
folder and change the links which is pointing to google site to your
images folder).</p>

<p>&nbsp;</p>

<p>&lt;!--&lt;jsp:include
page=&quot;/WEB-INF/jsp/alltheweb.jsp&quot; flush=&quot;true&quot;
/&gt;--&gt; <br />
&lt;!--&lt;jsp:include page=&quot;/WEB-INF/jsp/altavista.jsp&quot;
flush=&quot;true&quot; /&gt;--&gt; <br />
&lt;jsp:include page=&quot;/WEB-INF/jsp/google.jsp&quot;
flush=&quot;true&quot; /&gt; <br />
&lt;!--&lt;jsp:include page=&quot;/WEB-INF/jsp/jsptags.jsp&quot;
flush=&quot;true&quot; /&gt;--&gt; <br />
&lt;!--&lt;jsp:include page=&quot;/WEB-INF/jsp/lycos.jsp&quot;
flush=&quot;true&quot; /&gt;--&gt; <br />
&lt;!--&lt;jsp:include page=&quot;/WEB-INF/jsp/texticon.jsp&quot;
flush=&quot;true&quot; /&gt;--&gt; <br />
&lt;!--&lt;jsp:include page=&quot;/WEB-INF/jsp/yahoo.jsp&quot;
flush=&quot;true&quot; /&gt;--&gt; <br />
&lt;!--&lt;jsp:include page=&quot;/WEB-INF/jsp/simple.jsp&quot;
flush=&quot;true&quot; /&gt;--&gt;<br />
</p>

<p><strong><u>Figure:1</u></strong></p>

<img src="images/contents/pagerTag.jpg"
	alt="Pager Tag - www.javaworkspace.com" />

<p>&nbsp;</p>

<ol>
	<li>In some browsers the output may slightly vary.</li>
	<li>Change the maxPageItems and maxIndexPages with any number. By
	changing the maxPageItems you can determine the number of records per
	page.</li>
	<li>If you use older versions of tomcat then you need to add the
	below code in web.xml.</li>
</ol>

<p>&lt;taglib&gt;<br />
&lt;taglib-uri&gt; http://jsptags.com/tags/navigation/pager
&lt;/taglib-uri&gt;<br />
&lt;taglib-location&gt; /WEB-INF/jsp/pager-taglib.tld
&lt;/taglib-location&gt;<br />
&lt;/taglib&gt;</p>
<p>(Inside &lt;web-app&gt;)</p>

<p><strong><u>Further Reading:</u></strong></p>
<p><a href="http://jsptags.com/index.jsp">http://jsptags.com/index.jsp</a></p>

<p>&nbsp;</p>

<p><strong><u>Relate Links:</u></strong></p>
<p><a href="http://www.javaworkspace.com/createExecutableJar.do">Create Executable File In Java</a><br />
<a href="http://www.javaworkspace.com/privacyPolicyGenerator.do">Generate Private Policy online</a><br />
<a href="http://www.javaworkspace.com/displayTags.do">Display Tag Tutorial</a><br />
<a href="http://www.javaworkspace.com/addSocialBookmarkingService.do">Add Social Bookmark</a><br />
<a href="http://www.javaworkspace.com/javaMail.do">Send E-mail through java program</a><br />
<a href="http://www.javaworkspace.com/changeTomcatPortNumber.do">Change Tomcat Port Number</a></p>

</div>