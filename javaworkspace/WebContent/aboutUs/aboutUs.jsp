<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>

<!-- Created On : Sunday, December 13, 2009 -->

<div id="tutorialLinks">

<h1>About Us</h1>

<p>&nbsp;</p>



<p>&nbsp;</p>

<h1>Table of Contents</h1>

<ol>

	<li>About Advertising - How to advertise at JavaWorkspace. <html:link
		action="/advertising">
		<bean:message key="link.advertising" />
	</html:link></li>

	<li>About Statistics - JavaWorkspace' statistics. <html:link
		action="/statistics">
		<bean:message key="link.statistics" />
	</html:link></li>

	<li>About Helping JavaWorkspace - How you can help JavaWorkspace.
	<html:link action="/donations">
		<bean:message key="link.donate" />
	</html:link></li>

	<li>About Copyright - About the copyright on JavaWorkspace
	content. <html:link action="/copyright">
		<bean:message key="link.copyright" />
	</html:link></li>

	<li>About Privacy - About the privacy practices for JavaWorkspace.
	<html:link action="/privacyPolicy">
		<bean:message key="link.privacyPolicy" />
	</html:link></li>

</ol>

</div>