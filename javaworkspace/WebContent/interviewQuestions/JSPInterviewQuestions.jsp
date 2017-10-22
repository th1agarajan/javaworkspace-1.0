<!-- 

	Author : Thiagarajan.RM
	Copyright © 2009 javaworkspace.com
	Contact Us:	E-Mail : javaworkspace@gmail.com
	Updated On: Wednesday, September 30, 2009
	Created On: Thursday, August 20, 2009

 -->
<div id="tutorialLinks">

<h1>JSP Interview Questions</h1>

<div class="question">1. Explain JSP life cycle?</div>
<div class="answer">
<p>JSP life cycle includes</p>
<ol>
	<li><strong>Translation phase</strong> - A JSP container is
	responsible for converting the JSP page into a servlet(known as the JSP
	page implementation class) and compiling the servlet. These two steps
	form the translation phase.</li>
	<li><strong>Request processing phase</strong> - The JSP container
	is also responsible for invoking the JSP page implementation class to
	process each request and generate the response. This is called the
	request processing phase.</li>
	<li><strong>jspInit()</strong> - The container calls the jspInit()
	to initialize the servlet instance. It is called before any other
	method, and is called only once for a servlet instance.</li>
	<li><strong>_jspService()</strong> - The container calls the
	_jspService() for each request and it passes the request and the
	response objects. _jspService() method can't be overridden.</li>
	<li><strong>jspDestroy()</strong> - The container calls this when
	its instance is about to destroyed. It allows the servlet to release
	references to any external resources it has acquired during the
	lifetime. The jspInit() and jspDestroy() methods can be overridden
	within a JSP page.</li>
</ol>
</div>

<div class="question">2. What are directive elements in jsp?</div>

<div class="answer">
<table border="1">
	<tr>
		<th width="25%"><strong>Element</strong></th>
		<th width="75%"><strong>Description</strong></th>
	</tr>
	<tr>
		<td>&lt;@ page ... %&gt;</td>
		<td>Defines page-dependent attributes, such as scripting
		language, error page, and buffering requirements</td>
	</tr>
	<tr>
		<td>&lt;@ include ... %&gt;</td>
		<td>Includes a file during the translation phase.</td>
	</tr>
	<tr>
		<td>&lt;@ taglib ... %&gt;</td>
		<td>Declares a tag library, containing custom actions, used in
		the page</td>
	</tr>
</table>
</div>

<div class="question">3. What are the standard action elements in
jsp?</div>

<div class="answer">
<table border="1">
	<tr>
		<th width="25%"><strong>Element</strong></th>
		<th width="75%"><strong>Description</strong></th>
	</tr>
	<tr>
		<td>&lt;jsp:useBean&gt;</td>
		<td>Makes a JavaBeans component available in a page</td>
	</tr>
	<tr>
		<td>&lt;jsp:getProperty&gt;</td>
		<td>Gets a property value from a JavaBeans component and adds it
		to the response</td>
	</tr>
	<tr>
		<td>&lt;jsp:setProperty&gt;</td>
		<td>Sets a JavaBeans property value</td>
	</tr>
	<tr>
		<td>&lt;jsp:include&gt;</td>
		<td>Include the response from a servlet or JSP page during the
		request processing phase</td>
	</tr>
	<tr>
		<td>&lt;jsp:forward&gt;</td>
		<td>Forwards the processing of a request to a servlet or JSP page</td>
	</tr>
	<tr>
		<td>&lt;jsp:param&gt;</td>
		<td>Adds a parameter value to a request handed off to another
		servlet or JSP page using &lt;jsp:include&gt; or &lt;jsp:forward&gt;</td>
	</tr>
	<tr>
		<td>&lt;jsp:plugin&gt;</td>
		<td>Generates HTML that contains the appropriate client browser
		dependent eleme (OBJECT or EMBED) needed to execute an Applet with the
		Java Plugin software</td>
	</tr>
</table>
</div>

<div class="question">4. What are scripting elements in jsp?</div>

<div class="answer">
<table border="1">
	<tr>
		<th width="25%"><strong>Element</strong></th>
		<th width="75%"><strong>Description</strong></th>
	</tr>
	<tr>
		<td>&lt;% ... %&gt;</td>
		<td>Scriplet, used to embed scripting code.</td>
	</tr>
	<tr>
		<td>&lt;%= ... %&gt;</td>
		<td>Expression, used to embed Java expressions when the result
		shall be added to the response. Also used as runtime action attribute
		values.</td>
	</tr>
	<tr>
		<td>&lt;%! ... %&gt;</td>
		<td>Declaration, used to declare instance varibles and methods in
		the JSP page implementation class.</td>
	</tr>
</table>
</div>




<div class="question">5. What is a output comment?</div>
<div class="answer">
<p>A comment that is sent to the client in the viewable page
source.The JSP engine handles an output comment as uninterpreted HTML
text, returning the comment in the HTML output sent to the client. You
can see the comment by viewing the page source from your Web browser.</p>
<p>&lt;!-- Output Comment --&gt;</p>
</div>

<div class="question">6. What is a hidden comment?</div>
<div class="answer">
<p>A comments that documents the JSP page but is not sent to the
client. The JSP engine ignores a hidden comment, and does not process
any code within hidden comment tags. A hidden comment is not sent to the
client, either in the displayed JSP page or the HTML page source. The
hidden comment is useful when you want to hide or "comment out" part of
your JSP page.</p>
<p>&lt;% Hidden comment %&gt;</p>
</div>

<div class="question">7. What are implicit objects in JSP?</div>
<div class="answer">
<p>When you use scripting elements in a JSP page, you always have
access to a number of objects that the JSP container makes available.
These are called implicit objects.</p>

<table border="1">
	<tr>
		<th width="25%"><strong>Variable Name</strong></th>
		<th width="75%"><strong>Java Type</strong></th>
	</tr>
	<tr>
		<td>request</td>
		<td>javax.servlet.http.HttpServletRequest</td>
	</tr>
	<tr>
		<td>response</td>
		<td>javax.servlet.http.HttpServletResponse</td>
	</tr>
	<tr>
		<td>pageContext</td>
		<td>javax.servlet.jsp.PageContext</td>
	</tr>
	<tr>
		<td>session</td>
		<td>javax.servlet.http.HttpSession</td>
	</tr>
	<tr>
		<td>application</td>
		<td>javax.servlet.ServletContext</td>
	</tr>
	<tr>
		<td>out</td>
		<td>javax.servlet.jsp.JspWriter</td>
	</tr>
	<tr>
		<td>config</td>
		<td>javax.servlet.ServletConfig</td>
	</tr>
	<tr>
		<td>page</td>
		<td>java.lang.Object</td>
	</tr>
	<tr>
		<td>exception</td>
		<td>java.lang.Throwable</td>
	</tr>
</table>
</div>

<p><strong><u>Relate Links:</u></strong></p>


</div>