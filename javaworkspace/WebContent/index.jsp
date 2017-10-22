<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>

<logic:redirect forward="home"/>

<%--

Redirect default requests to Welcome global ActionForward.
By using a redirect, the user-agent will change address to match the path of our Welcome ActionForward. 

--%>

<h1>Welcome to Java Workspace</h1>
In Java workspace we are trying to give you solutions for some of the
practical difficulties faced by beginners and which is not available in
text books. If you find something interesting while working in any of
the java technologies please write to us. We'll publish your contents
with your name. You can reach us at
<a href="mailto:javaworkspace@gmail.com" style="color: #0066CC">javaworkspace@gmail.com</a>
. Java workspace does not want to receive confidential or proprietary
information from you. Please note that any information or material sent
to Java workspace will be deemed NOT to be confidential. By sending Java
workspace any information or material, you grant Java workspace an
unrestricted, irrevocable license to use, reproduce, display, perform,
modify, transmit and distribute those materials or information, and you
also agree that Java workspace is free to use any ideas, concepts,
know-how or techniques that you send us for any purpose.


<h1>Site Map</h1>

<ul>
	<li><a href="http://www.javaworkspace.com/welcome.do">Welcome</a></li>
	<li><a href="http://www.javaworkspace.com/configureTomcat.do">Configure Tomcat</a></li>
	<li><a href="http://www.javaworkspace.com/setClasspath.do">Set ClassPath</a></li>
	<li><a href="http://www.javaworkspace.com/addPluginsForEclipse.do">Add Plugins For Eclipse</a></li>
	<li><a href="http://www.javaworkspace.com/javaMail.do">Java Mail</a></li>
	<li><a href="http://www.javaworkspace.com/selfDocumentingCode.do">Self Documenting Code</a></li>
	<li><a href="http://www.javaworkspace.com/createExecutableJar.do">Create Executable Jar</a></li>
</ul>