<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>



<div class="notifications">
	<h3>Fundamentals</h3>
	<ul>
		<li><html:link action="/setClasspath">
					Difference between PATH and CLASSPATH
				</html:link></li>
		<li><html:link action="/percentagePath">
				<bean:message key="link.percentagePath" />
			</html:link></li>
		<li><html:link action="/createJavaDoc">
				<bean:message key="link.createJavaDoc" />
			</html:link></li>
		<li><html:link action="/javaCodeConventions">
				<bean:message key="link.javaCodeConventions" />
			</html:link></li>
		<li><html:link action="/createExecutableJar">
				<bean:message key="link.createExecutableJar" />
			</html:link></li>
		<li><html:link action="/javaMail">
				<bean:message key="link.javaMail" />
			</html:link></li>
	</ul>
</div>

<div class="notifications">
	<h3>
		Fundamentals
		<bean:message key="heading.connectDatabase" />
	</h3>
	<ul>
		<li><html:link action="/connectdatabase/connectMysql">
				<bean:message key="link.mysql" />
			</html:link></li>
		<li><html:link action="/connectdatabase/connectSqlserver">
				<bean:message key="link.sqlserver" />
			</html:link></li>
		<li><html:link action="/connectdatabase/connectOracle">
				<bean:message key="link.oracle" />
			</html:link></li>
		<li><html:link action="/connectdatabase/connectDB2">
				<bean:message key="link.db2" />
			</html:link></li>
		<li><html:link action="/connectdatabase/connectPostgre">
				<bean:message key="link.postgre" />
			</html:link></li>
		<li><html:link action="/connectdatabase/connectADS">
				<bean:message key="link.ads" />
			</html:link></li>
		<li><html:link action="/connectdatabase/connectDerby">
				<bean:message key="link.derby" />
			</html:link></li>
		<li><html:link action="/connectdatabase/connectFirebird">
				<bean:message key="link.firebird" />
			</html:link></li>
		<li><html:link action="/connectdatabase/connectH2">
				<bean:message key="link.h2" />
			</html:link></li>
		<li><html:link action="/connectdatabase/connectHSQLDB">
				<bean:message key="link.hsqldb" />
			</html:link></li>
		<li><html:link action="/connectdatabase/connectSQLite">
				<bean:message key="link.sqlite" />
			</html:link></li>
		<li><html:link action="/connectdatabase/connectSmallSQL">
				<bean:message key="link.smallsql" />
			</html:link></li>
	</ul>
</div>