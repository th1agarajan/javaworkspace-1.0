<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>
<div class="footer">
	<div class="shell">
		<p class="lf">
			Copyright &copy; 2013 <a href="http://www.javaworkspace.com">www.javaworkspace.com</a>
			- All Rights Reserved
		</p>
		<p class="rf">
			<html:link action="/termsOfUse">
				<bean:message key="link.termsOfUse" />
			</html:link>
			&nbsp;|&nbsp;
			<html:link action="/privacyPolicy">
				<bean:message key="link.privacyPolicy" />
			</html:link>
		</p>
		<div style="clear: both;"></div>
	</div>
</div>