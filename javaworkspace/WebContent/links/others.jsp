<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>

<div class="notifications">
	<h3>
		<bean:message key="heading.pagination" />
	</h3>

	<ul>
		<li><html:link action="/displayTags">
				<bean:message key="link.paginationUsingDisplayTags" />
			</html:link></li>
		<li><html:link action="/pagerTags">
				<bean:message key="link.paginationUsingPagerTags" />
			</html:link></li>
		<li><html:link action="/paginationInServlets">
				<bean:message key="link.paginationInServlets" />
			</html:link></li>
		<li><html:link action="/paginationUsingJavaScript">
				<bean:message key="link.paginationUsingJavaScript" />
			</html:link></li>
	</ul>
</div>
<div class="notifications">
	<h3>Others</h3>
	<ul>
		<li><html:link action="/configureTomcat">
				<bean:message key="link.configureTomcat" />
			</html:link></li>
		<li><html:link action="/changeTomcatPortNumber">
				<bean:message key="link.changeTomcatPortNumber" />
			</html:link></li>
		<li><html:link action="/howToInstallMySQL">
				<bean:message key="link.howToInstallMySQL" />
			</html:link></li>
	</ul>
</div>