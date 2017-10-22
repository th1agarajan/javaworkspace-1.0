<!-- 

	Author : Thiagarajan.RM
	Copyright © 2009 javaworkspace.com
	Contact Us:	E-Mail : javaworkspace@gmail.com
	Updated On: Wednesday, September 30, 2009
	Created On: Thursday, August 20, 2009

 -->
<div id="tutorialLinks">

<h1>Servlet Interview Questions</h1>

<div class="question">1. What is the difference between
response.sendRedirect() and RequestDispatcher.forward()?</div>
<div class="answer">In a nutshell, RequestDispatcher.forward()
works on the server and response.sendRedirect() works on the browser.
When you invoke RequestDispatcher.forward(), the servlet engine
transfers control of this HTTP request internally from your current
servlet or JSP to another servlet or JSP or static file. When you invoke
response.sendRedirect(), this sends an HTTP response to the browser to
make another request at a different URL. RequestDispatcher.forward() and
PageContext.forward() are effectively the same. PageContext.forward is a
helper method that calls the RequestDispatcher method.</div>




<p><strong><u>Relate Links:</u></strong></p>

</div>