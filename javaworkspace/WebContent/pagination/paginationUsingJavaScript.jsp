<div id="tutorialLinks">

	<h2>Pagination Using JavaScript</h2>
	<p>
		<strong><u>Overview</u></strong>
	</p>
	<p>You can use this with any programming language. You can use this
		with .jsp, .php etc. Here we have given one simple web application
		using Servlet and JSP.</p>

	<p>
		<strong><u>Pre-Requisites for running the below program:</u></strong>
	</p>
	<ul type="disc">
		<li>Browser which supports JavaScript</li>
		<li>jdk1.6.0_11&nbsp;(&nbsp;works with previous versions of JDK)</li>
		<li>Note: for previous versions of JDK. All the .java files
			should be compiled once again. Make sure that all the supporing files
			are in classpath. To explore more about classpath refer <a
			href="http://www.javaworkspace.com/setClasspath.do">Set Classpath</a>
		</li>
		<li>apache-tomcat-6.0.16 (Works with previous versions)</li>
	</ul>

	<p>
		<strong><u>Sample program</u></strong>
	</p>

	<p>
		Save as <strong>index.jsp</strong><br /> Path<strong>
			(\webapps\index.jsp)</strong>
	<pre class="brush: html">			
&lt;%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%&gt;
&lt;!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"&gt;
&lt;html&gt;
&lt;head&gt;
&lt;meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"&gt;
&lt;title&gt;Pagination Using JavaScript Example -
www.javaworkspace.com&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;h1&gt;Pagination Using JavaScript Example - &lt;a
	href="http://www.javaworkspace.com" target="_blank"&gt;www.javaworkspace.com&lt;/a&gt;&lt;/h1&gt;
&lt;form method="post" action="Controller"&gt;&lt;input type="submit"
	value="Get Report"&gt;&lt;/form&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
	<br />

	<p>
		Save as <strong>Controller.java</strong><br /> Path<strong>
			(\webapps\PaginationUsingJavaScript\WEB-INF\classes\com\javaworkspace\pagination\controller\Controller.java)</strong>
	</p>

	<pre class="brush: java">
/*
 * Controller.java
 */
package com.javaworkspace.pagination.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.javaworkspace.pagination.dto.StudentDetailsDTO;

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

		// RequestDispatcher dispatcher = request
		// .getRequestDispatcher("reportWithoutPagination.jsp");
		RequestDispatcher dispatcher = request
				.getRequestDispatcher("paginationUsingJavaScript.jsp");
		dispatcher.forward(request, response);
	}
}
</pre>
	<br />
	<p>
		Save as <strong>StudentDetailsDTO.java</strong><br /> Path<strong>
			(\webapps\PaginationUsingJavaScript\WEB-INF\classes\com\javaworkspace\pagination\dto\StudentDetailsDTO.java)</strong>
	</p>

	<pre class="brush: java">
/**
 * StudentDetailsDTO.java
 */
package com.javaworkspace.pagination.dto;

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
		Save as <strong>paginationUsingJavaScript.jsp</strong><br /> Path<strong>
			(\webapps\PaginationUsingJavaScript\paginationUsingJavaScript.jsp)</strong>
	</p>

	<pre class="brush: html">
&lt;%@ page language=&quot;java&quot; contentType=&quot;text/html; charset=ISO-8859-1&quot;
	pageEncoding=&quot;ISO-8859-1&quot;%&gt;
&lt;%@page import=&quot;java.util.List&quot;%&gt;
&lt;%@page import=&quot;com.javaworkspace.pagination.dto.StudentDetailsDTO&quot;%&gt;

&lt;!DOCTYPE html PUBLIC &quot;-//W3C//DTD HTML 4.01 Transitional//EN&quot; &quot;http://www.w3.org/TR/html4/loose.dtd&quot;&gt;
&lt;html&gt;
&lt;head&gt;
&lt;style type=&quot;text/css&quot;&gt;
.pg-normal {
	color: #0000FF;
	font-weight: normal;
	text-decoration: none;
	cursor: pointer;
}

.pg-selected {
	color: #800080;
	font-weight: bold;
	text-decoration: underline;
	cursor: pointer;
}
&lt;/style&gt;
&lt;meta http-equiv=&quot;Content-Type&quot; content=&quot;text/html; charset=ISO-8859-1&quot;&gt;
&lt;title&gt;Pagination Using Java Script Tutorial -
www.javaworkspace.com&lt;/title&gt;
&lt;/head&gt;

&lt;script type=&quot;text/javascript&quot;&gt;
function Pager(tableName, itemsPerPage) {
    this.tableName = tableName;
    this.itemsPerPage = itemsPerPage;
    this.currentPage = 1;
    this.pages = 0;
    this.inited = false;
    
    this.showRecords = function(from, to) {        
        var rows = document.getElementById(tableName).rows;
        // i starts from 1 to skip table header row
        for (var i = 1; i &lt; rows.length; i++) {
            if (i &lt; from || i &gt; to)  
                rows[i].style.display = 'none';
            else
                rows[i].style.display = '';
        }
    }
    
    this.showPage = function(pageNumber) {
     if (! this.inited) {
      alert(&quot;not inited&quot;);
      return;
     }

        var oldPageAnchor = document.getElementById('pg'+this.currentPage);
        oldPageAnchor.className = 'pg-normal';
        
        this.currentPage = pageNumber;
        var newPageAnchor = document.getElementById('pg'+this.currentPage);
        newPageAnchor.className = 'pg-selected';
        
        var from = (pageNumber - 1) * itemsPerPage + 1;
        var to = from + itemsPerPage - 1;
        this.showRecords(from, to);
    }   
    
    this.prev = function() {
        if (this.currentPage &gt; 1)
            this.showPage(this.currentPage - 1);
    }
    
    this.next = function() {
        if (this.currentPage &lt; this.pages) {
            this.showPage(this.currentPage + 1);
        }
    }                        
    
    this.init = function() {
        var rows = document.getElementById(tableName).rows;
        var records = (rows.length - 1); 
        this.pages = Math.ceil(records / itemsPerPage);
        this.inited = true;
    }

    this.showPageNav = function(pagerName, positionId) {
     if (! this.inited) {
      alert(&quot;not inited&quot;);
      return;
     }
     var element = document.getElementById(positionId);
     
     var pagerHtml = '&lt;span onclick=&quot;' + pagerName + '.prev();&quot; class=&quot;pg-normal&quot;&gt; &#171 Prev &lt;/span&gt; | ';
        for (var page = 1; page &lt;= this.pages; page++) 
            pagerHtml += '&lt;span id=&quot;pg' + page + '&quot; class=&quot;pg-normal&quot; onclick=&quot;' + pagerName + '.showPage(' + page + ');&quot;&gt;' + page + '&lt;/span&gt; | ';
        pagerHtml += '&lt;span onclick=&quot;'+pagerName+'.next();&quot; class=&quot;pg-normal&quot;&gt; Next &#187;&lt;/span&gt;';            
        
        element.innerHTML = pagerHtml;
    }
}
&lt;/script&gt;

&lt;body&gt;

&lt;h1&gt;Pagination Using Java Script&lt;/h1&gt;

&lt;%
	List list = (List) session.getAttribute(&quot;studentDetails&quot;);
%&gt;

&lt;table border=&quot;1&quot; id=&quot;results&quot;&gt;
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
&lt;/table&gt;
&lt;div id=&quot;pageNavPosition&quot;&gt;&lt;/div&gt;

&lt;script type=&quot;text/javascript&quot;&gt;&lt;!--
        var pager = new Pager('results', 2); 
        pager.init(); 
        pager.showPageNav('pager', 'pageNavPosition'); 
        pager.showPage(1);
    //--&gt;&lt;/script&gt;

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
	<display-name>Pagination Using JavaScript</display-name>
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
			com.javaworkspace.pagination.controller.Controller
		</servlet-class>
	</servlet>
	<servlet-mapping>
		<servlet-name>Controller</servlet-name>
		<url-pattern>/Controller</url-pattern>
	</servlet-mapping>
</web-app>
</pre>

	<ul>
		<li><a href="downloads/PaginationUsingJavaScript.zip"
			target="_blank" class="downloadLink">Click here to download the
				javaworkspace sample program.</a></li>
	</ul>
	<br />

	<ul>
		<li>In Controller.java uncomment any one to get the report
			accordingly.</li>
	</ul>
	<br />

	<p>
		RequestDispatcher dispatcher = request <br />
		.getRequestDispatcher(&quot;paginationUsingJavaScript&quot;);
		//RequestDispatcher dispatcher = request <br />
		//.getRequestDispatcher(&quot;reportWithoutPagination.jsp&quot;); <br />
	</p>

	<ol>
		<li>var pager = new Pager('results', 2); - Here 2 is the number
			of records per page. You can change the number of records per page
			using this.</li>
		<li>Edit the stylesheet to change the link color ... etc.</li>
		<li>You can even place the styles sheet and javascript
			externally.</li>
	</ol>

	<p>
		<strong>If you are not a Java Programmer. You can follow the
			below program. Below example is just a .html program. Here in the
			below example we have hard coded all the values. You can generate
			those value dynamically using php,asp...etc </strong><br />
	<pre class="brush: html">
&lt;html version=&quot;-//W3C//DTD HTML 4.01 Transitional//EN&quot;&gt;
&lt;head&gt;
&lt;title&gt;Pagination Using JavaScript - www.javaworkspace.com&lt;/title&gt;
&lt;style type=&quot;text/css&quot;&gt;
.pg-normal {
	color: #0000FF;
	font-weight: normal;
	text-decoration: none;
	cursor: pointer;
}

.pg-selected {
	color: #800080;
	font-weight: bold;
	text-decoration: underline;
	cursor: pointer;
}
&lt;/style&gt;
&lt;/head&gt;

&lt;script type=&quot;text/javascript&quot;&gt;

function Pager(tableName, itemsPerPage) {
    this.tableName = tableName;
    this.itemsPerPage = itemsPerPage;
    this.currentPage = 1;
    this.pages = 0;
    this.inited = false;
    
    this.showRecords = function(from, to) {        
        var rows = document.getElementById(tableName).rows;
        // i starts from 1 to skip table header row
        for (var i = 1; i &lt; rows.length; i++) {
            if (i &lt; from || i &gt; to)  
                rows[i].style.display = 'none';
            else
                rows[i].style.display = '';
        }
    }
    
    this.showPage = function(pageNumber) {
     if (! this.inited) {
      alert(&quot;not inited&quot;);
      return;
     }

        var oldPageAnchor = document.getElementById('pg'+this.currentPage);
        oldPageAnchor.className = 'pg-normal';
        
        this.currentPage = pageNumber;
        var newPageAnchor = document.getElementById('pg'+this.currentPage);
        newPageAnchor.className = 'pg-selected';
        
        var from = (pageNumber - 1) * itemsPerPage + 1;
        var to = from + itemsPerPage - 1;
        this.showRecords(from, to);
    }   
    
    this.prev = function() {
        if (this.currentPage &gt; 1)
            this.showPage(this.currentPage - 1);
    }
    
    this.next = function() {
        if (this.currentPage &lt; this.pages) {
            this.showPage(this.currentPage + 1);
        }
    }                        
    
    this.init = function() {
        var rows = document.getElementById(tableName).rows;
        var records = (rows.length - 1); 
        this.pages = Math.ceil(records / itemsPerPage);
        this.inited = true;
    }

    this.showPageNav = function(pagerName, positionId) {
     if (! this.inited) {
      alert(&quot;not inited&quot;);
      return;
     }
     var element = document.getElementById(positionId);
     
     var pagerHtml = '&lt;span onclick=&quot;' + pagerName + '.prev();&quot; class=&quot;pg-normal&quot;&gt; &#171 Prev &lt;/span&gt; | ';
        for (var page = 1; page &lt;= this.pages; page++) 
            pagerHtml += '&lt;span id=&quot;pg' + page + '&quot; class=&quot;pg-normal&quot; onclick=&quot;' + pagerName + '.showPage(' + page + ');&quot;&gt;' + page + '&lt;/span&gt; | ';
        pagerHtml += '&lt;span onclick=&quot;'+pagerName+'.next();&quot; class=&quot;pg-normal&quot;&gt; Next &#187;&lt;/span&gt;';            
        
        element.innerHTML = pagerHtml;
    }
}

&lt;/script&gt;
&lt;body&gt;
&lt;form action=&quot;&quot; method=&quot;get&quot; enctype=&quot;application/x-www-form-urlencoded&quot;&gt;
&lt;h1&gt;Pagination Using JavaScript - &lt;a
	href=&quot;http://www.javaworkspace.com&quot; target=&quot;_blank&quot;&gt;www.javaworkspace.com&lt;/a&gt;&lt;/h1&gt;
&lt;table id=&quot;results&quot;&gt;
	&lt;tr&gt;
		&lt;th&gt;#&lt;/th&gt;
		&lt;th&gt;field&lt;/th&gt;
	&lt;/tr&gt;
	&lt;tr&gt;
		&lt;td&gt;1&lt;/td&gt;
		&lt;td&gt;rajeev&lt;/td&gt;
	&lt;/tr&gt;
	&lt;tr&gt;
		&lt;td&gt;2&lt;/td&gt;
		&lt;td&gt;ramesh&lt;/td&gt;
	&lt;/tr&gt;
	&lt;tr&gt;
		&lt;td&gt;3&lt;/td&gt;
		&lt;td&gt;Rahul&lt;/td&gt;
	&lt;/tr&gt;
	&lt;tr&gt;
		&lt;td&gt;4&lt;/td&gt;
		&lt;td&gt;Bala&lt;/td&gt;
	&lt;/tr&gt;
	&lt;tr&gt;
		&lt;td&gt;5&lt;/td&gt;
		&lt;td&gt;Nathan&lt;/td&gt;
	&lt;/tr&gt;
	&lt;tr&gt;
		&lt;td&gt;6&lt;/td&gt;
		&lt;td&gt;Robin&lt;/td&gt;
	&lt;/tr&gt;
	&lt;tr&gt;
		&lt;td&gt;7&lt;/td&gt;
		&lt;td&gt;Sambha&lt;/td&gt;
	&lt;/tr&gt;
	&lt;tr&gt;
		&lt;td&gt;8&lt;/td&gt;
		&lt;td&gt;Arjun&lt;/td&gt;
	&lt;/tr&gt;
	&lt;tr&gt;
		&lt;td&gt;9&lt;/td&gt;
		&lt;td&gt;Satyan&lt;/td&gt;
	&lt;/tr&gt;
	&lt;tr&gt;
		&lt;td&gt;10&lt;/td&gt;
		&lt;td&gt;Singapore&lt;/td&gt;
	&lt;/tr&gt;
&lt;/table&gt;
&lt;br /&gt;
&lt;div id=&quot;pageNavPosition&quot;&gt;&lt;/div&gt;
&lt;br /&gt;
&lt;div&gt;&lt;input type=&quot;submit&quot;
	onclick=&quot;alert('Hey, this is just a sample!'); return false;&quot; /&gt;&nbsp;&lt;input
	type=&quot;reset&quot; /&gt;&lt;/div&gt;
&lt;/form&gt;

&lt;script type=&quot;text/javascript&quot;&gt;&lt;!--
        var pager = new Pager('results', 3); 
        pager.init(); 
        pager.showPageNav('pager', 'pageNavPosition'); 
        pager.showPage(1);
    //--&gt;&lt;/script&gt;

&lt;/body&gt;
&lt;/html&gt;
</pre>
	<br />


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