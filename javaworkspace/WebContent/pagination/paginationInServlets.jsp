<div id="tutorialLinks">
	<h2>Pagination In Servlets</h2>
	<p>
		<strong><u>Pre-Requisites:</u></strong>
	</p>
	<ol type="disc">
		<li>jdk1.6.0_11&nbsp;(&nbsp;works with previous versions of JDK)</li>
		<li>apache-tomcat-6.0.16&nbsp;(&nbsp;works with previous versions
			of tomcat)</li>
	</ol>

	<p>
		<strong><u>Download Link:</u></strong>
	</p>
	<ul>
		<li><a href="downloads/PaginationInServlets.war" target="_blank"
			class="downloadLink">Click here to download the javaworkspace
				sample program.</a></li>
		<li>No additional Jar files are required to run the sample
			program</li>
	</ul>

	<p>
		By changing the <strong>maxEntriesPerPage</strong>(int
		maxEntriesPerPage = 3;) value in <strong>Controller.java</strong> we
		can change the number of records to be displayed in a page.
	</p>


	<p>
		<strong><u>How it works:</u></strong>
	</p>

	<p>Pagination in servlets example doesn't require any additional
		.jar files.</p>
	<ol start="1" type="1">
		<li>First we are populating a list(all records) with some values
			(Normally this would come from a database)</li>
		<li>Then we have to find the number of pages according to
			maxEntriesPerPage value. So we are dividing the list size with the
			maxEntriesPerPage, the quotient is the number of page count. If the
			remainder is not exactly zero then we are adding one with the page
			count.</li>
		<li>Then we are iterating a "for" loop by keeping starting value
			as 0 and ending value as page count. We are storing all the iterated
			value in another list and keeping the list (pages) object in session.</li>
		<li>In .jsp file we are iterating the list (pages) and we are
			displaying the page number as link and passing the page Number to
			Controller.java.</li>
		<li>In Controller.java we are populating another list(required
			fields along) with required data from the previous list(all records)
			by using <strong>offset</strong> and <strong>to</strong> values
		</li>
	</ol>
	<p>
		int offset = maxEntriesPerPage * (page - 1); <br /> int to =
		this.offset + this.length; (length is nothing but maxEntriesPerPage)
	</p>
	<p>
		Save as <strong>index.jsp</strong><br /> Path<strong>
			(\webapps\PaginationInServlets\index.jsp)</strong>
	<pre class="brush: html">
&lt;%@ page language=&quot;java&quot; contentType=&quot;text/html; charset=ISO-8859-1&quot;
	pageEncoding=&quot;ISO-8859-1&quot;%&gt;
&lt;!DOCTYPE html PUBLIC &quot;-//W3C//DTD HTML 4.01 Transitional//EN&quot; &quot;http://www.w3.org/TR/html4/loose.dtd&quot;&gt;
&lt;html&gt;
&lt;head&gt;
&lt;meta http-equiv=&quot;Content-Type&quot; content=&quot;text/html; charset=ISO-8859-1&quot;&gt;
&lt;title&gt;Pagination In Servlets - www.javaworkspace.com&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;h1&gt;Pagination In Servlets - &lt;a href=&quot;http://www.javaworkspace.com&quot;
	target=&quot;_blank&quot;&gt;www.javaworkspace.com&lt;/a&gt;&lt;/h1&gt;
&lt;form method=&quot;get&quot; action=&quot;Controller&quot;&gt;&lt;input type=&quot;submit&quot;
	value=&quot;Get Report&quot;&gt;&lt;/form&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
	<br />

	<p>
		Save as <strong>Controller.java</strong><br /> Path<strong>
			(\webapps\PaginationInServlets\WEB-INF\classes\com\javaworkspace\paginationinservlets\controller\Controller.java)</strong>
	</p>

	<pre class="brush: java">
/**
 * Controller.java
 */
package com.javaworkspace.paginationinservlets.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.javaworkspace.paginationinservlets.dto.StudentDetailsDTO;

/**
 * @author www.javaworkspace.com
 * 
 */
public class Controller extends HttpServlet {
	static final long serialVersionUID = 1L;
	int offset;
	int length;
	List list;

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		int maxEntriesPerPage = 3;
		int page = 1;

		String pageNumberValue = request.getParameter("pageNumber");

		if (pageNumberValue != null) {
			try {
				page = Integer.parseInt(pageNumberValue);
				System.out.println("Page Number:" + page);
			} catch (NumberFormatException e) {
				e.printStackTrace();
			}
		}
		int offset = maxEntriesPerPage * (page - 1);
		TestList(offset, maxEntriesPerPage);

		HttpSession httpSession = request.getSession();
		httpSession.setAttribute("pages", getPages());
		httpSession.setAttribute("studentDetails", getListByOffsetAndLength());

		RequestDispatcher dispatcher = request
				.getRequestDispatcher("reportWithPagination.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * Hard-coded sample data. Normally this would come from a real data source
	 * such as a database
	 */
	public void fillList() {
		list = new ArrayList();
		list.add(new StudentDetailsDTO("Mark", "John", 25, "India"));
		list.add(new StudentDetailsDTO("Harry", "Scott", 35, "England"));
		list.add(new StudentDetailsDTO("Nathan", "Ridley", 12, "America"));
		list.add(new StudentDetailsDTO("Tom", "Hanks", 55, "France"));
		list.add(new StudentDetailsDTO("Roger", "Chris", 65, "Germany"));
		list.add(new StudentDetailsDTO("Antony", "Jason", 45, "Denmark"));
		list.add(new StudentDetailsDTO("Che", "Guevara", 45, "Argentina"));
	}

	/**
	 * @param offset
	 * @param length
	 */
	public void TestList(int offset, int length) {
		this.offset = offset;
		this.length = length;
		fillList();
	}

	/**
	 * @return List
	 */
	public ArrayList getListByOffsetAndLength() {

		ArrayList arrayList = new ArrayList();
		int to = this.offset + this.length;
		if (this.offset > list.size())
			this.offset = list.size();
		if (to > list.size())
			to = list.size();
		for (int i = this.offset; i < to; i++) {
			arrayList.add(list.get(i));
		}
		return arrayList;
	}

	/**
	 * @return List with page numbers
	 */
	public List getPages() {
		List pageNumbers = new ArrayList();
		int pages = list.size() / this.length;
		if (list.size() % this.length != 0) {
			pages = pages + 1;
		}

		for (int i = 1; i <= pages; i++) {
			pageNumbers.add(new Integer(i));
		}
		return pageNumbers;
	}
}
</pre>
	<br />
	<p>
		Save as<strong>StudentDetailsDTO.java</strong><br /> Path<strong>
			(\webapps\PaginationInServlets\WEB-INF\classes\com\javaworkspace\paginationinservlets\dto\StudentDetailsDTO.java)</strong>
	</p>

	<pre class="brush: java">
/**
 * StudentDetailsDTO.java
 */
package com.javaworkspace.paginationinservlets.dto;

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
		Save as <strong>reportWithPagination.jsp</strong><br /> Path<strong>
			(\webapps\PaginationInServlets\reportWithPagination.jsp)</strong>
	</p>

	<pre class="brush: html">
&lt;%@ page language=&quot;java&quot; contentType=&quot;text/html; charset=ISO-8859-1&quot;
	pageEncoding=&quot;ISO-8859-1&quot;%&gt;
&lt;%@page import=&quot;java.util.List&quot;%&gt;
&lt;%@page
	import=&quot;com.javaworkspace.paginationinservlets.dto.StudentDetailsDTO&quot;%&gt;

&lt;!DOCTYPE html PUBLIC &quot;-//W3C//DTD HTML 4.01 Transitional//EN&quot; &quot;http://www.w3.org/TR/html4/loose.dtd&quot;&gt;
&lt;html&gt;
&lt;head&gt;
&lt;meta http-equiv=&quot;Content-Type&quot; content=&quot;text/html; charset=ISO-8859-1&quot;&gt;
&lt;title&gt;Pagination In Servlets - www.javaworkspace.com&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;

&lt;h1&gt;Pagination In Servlets&lt;/h1&gt;

&lt;%
	List list = (List) session.getAttribute(&quot;studentDetails&quot;);
%&gt;

&lt;%
	List pageNumbers = (List) session.getAttribute(&quot;pages&quot;);
%&gt;

&lt;table border=&quot;1&quot;&gt;
	&lt;tr bgcolor=&quot;orange&quot;&gt;
		&lt;td&gt;&lt;strong&gt;Student Name&lt;/strong&gt;&lt;/td&gt;
		&lt;td&gt;&lt;strong&gt;Father Name&lt;/strong&gt;&lt;/td&gt;
		&lt;td&gt;&lt;strong&gt;Age&lt;/strong&gt;&lt;/td&gt;
		&lt;td&gt;&lt;strong&gt;Country&lt;/strong&gt;&lt;/td&gt;
	&lt;/tr&gt;
	&lt;%
		for (int i = 0; i &lt; list.size(); i++) {
	%&gt;
	&lt;tr&gt;
		&lt;%
			StudentDetailsDTO studentDetailsDTO = (StudentDetailsDTO) list
						.get(i);
				out.println(&quot;&lt;td&gt;&quot; + studentDetailsDTO.getStudentName()
						+ &quot;&lt;/td&gt;&quot;);
				out.println(&quot;&lt;td&gt;&quot; + studentDetailsDTO.getFatherName()
						+ &quot;&lt;/td&gt;&quot;);
				out.println(&quot;&lt;td&gt;&quot; + studentDetailsDTO.getAge() + &quot;&lt;/td&gt;&quot;);
				out.println(&quot;&lt;td&gt;&quot; + studentDetailsDTO.getCountry() + &quot;&lt;/td&gt;&quot;);
		%&gt;
	&lt;/tr&gt;
	&lt;%
		}
	%&gt;

	&lt;tr&gt;
		&lt;td colspan=&quot;4&quot; align=&quot;right&quot;&gt;
		&lt;form method=&quot;get&quot; action=&quot;Controller&quot;&gt;
		&lt;table&gt;
			&lt;tr&gt;
				&lt;%
					for (int i = 0; i &lt; pageNumbers.size(); i++) {
				%&gt;
				&lt;td&gt;&lt;a href=&quot;Controller?pageNumber=&lt;%=pageNumbers.get(i)%&gt;&quot;&gt;&lt;%=pageNumbers.get(i)%&gt;&lt;/a&gt;&lt;/td&gt;
				&lt;%
					}
				%&gt;
			&lt;/tr&gt;
		&lt;/table&gt;
		&lt;/form&gt;
		&lt;/td&gt;
	&lt;/tr&gt;
&lt;/table&gt;
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
  <display-name>Pagination In Servlets</display-name>
  <welcome-file-list>
    <welcome-file>index.html</welcome-file>
    <welcome-file>index.htm</welcome-file>
    <welcome-file>index.jsp</welcome-file>
    <welcome-file>default.html</welcome-file>
    <welcome-file>default.htm</welcome-file>
    <welcome-file>default.jsp</welcome-file>
  </welcome-file-list>
  <servlet>
    <description>Pagination In Servlets Example www.javaworkspace.com</description>
    <display-name>Controller</display-name>
    <servlet-name>Controller</servlet-name>
    <servlet-class>com.javaworkspace.paginationinservlets.controller.Controller</servlet-class>
  </servlet>
  <servlet-mapping>
    <servlet-name>Controller</servlet-name>
    <url-pattern>/Controller</url-pattern>
  </servlet-mapping>
</web-app>
</pre>

	<br />

	<div class="fb-comments"
		data-href="http://www.javaworkspace.com/paginationInServlets.do"
		data-width="470" data-num-posts="10"></div>

	<p>
		 <strong><u>See also:</u></strong>
	</p>
	<p>
		<a href="http://www.javaworkspace.com/pagerTags.do">Pagination
			using Pager Tags</a><br /> <a
			href="http://www.javaworkspace.com/displayTags.do">Pagination
			using Display Tags</a>
	</p>
</div>