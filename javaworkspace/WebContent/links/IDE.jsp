<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>

<div class="notifications">
	<h3>Eclipse</h3>
	<ul>
		<li><html:link action="/addPluginsForEclipse">
				<bean:message key="link.addPlugingsForEclipse" />
			</html:link></li>
		<li><html:link action="/debugTomcat">
				<bean:message key="link.debugTomcat" />
			</html:link></li>
		<li><html:link action="/unableToInstallBreakPoint">
				<bean:message key="link.unableToInstallBreakPoint" />
			</html:link></li>
		<li><html:link action="/VMNotFound">
				<bean:message key="link.VMNotFound" />
			</html:link></li>
	</ul>
</div>