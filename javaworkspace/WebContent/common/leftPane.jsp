<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>

<div id="tutorials" class="sidebox light">
	<!--tutorials-->
	<ul>
		<li><html:link action="/welcome">
				<bean:message key="link.home" />
			</html:link></li>
		<li><html:link action="/setClasspath">
				<bean:message key="link.setClasspath" />
			</html:link></li>
		<li><html:link action="/configureTomcat">
				<bean:message key="link.configureTomcat" />
			</html:link></li>
		<li><html:link action="/changeTomcatPortNumber">
				<bean:message key="link.changeTomcatPortNumber" />
			</html:link></li>
		<li><html:link action="/createJavaDoc">
				<bean:message key="link.createJavaDoc" />
			</html:link></li>
		<li><html:link action="/addPluginsForEclipse">
				<bean:message key="link.addPlugingsForEclipse" />
			</html:link></li>
		<li><html:link action="/javaMail">
				<bean:message key="link.javaMail" />
			</html:link></li>
		<li><html:link action="/javaCodeConventions">
				<bean:message key="link.javaCodeConventions" />
			</html:link></li>
		<li><html:link action="/createExecutableJar">
				<bean:message key="link.createExecutableJar" />
			</html:link></li>
		<li><html:link action="/howToInstallMySQL">
				<bean:message key="link.howToInstallMySQL" />
			</html:link></li>
		<li class="last"><html:link action="/donations">
				<bean:message key="link.donate" />
			</html:link></li>
	</ul>
	<div class="clearer"></div>
</div>
<!--/tutorials end-->


<div id="tutorials" class="sidebox light">
	<h2>
		<bean:message key="heading.pagination" />
	</h2>
	<!--tutorials-->
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
		<li class="last"><html:link action="/paginationUsingJavaScript">
				<bean:message key="link.paginationUsingJavaScript" />
			</html:link></li>
	</ul>
	<div class="clearer"></div>
</div>

<div id="tutorials" class="sidebox light">
	<!--tutorials-->
	<h2>
		<bean:message key="heading.interviewQuestions" />
	</h2>

	<ul>
		<li><html:link
				action="/interviewquestions/javaInterviewQuestions">
				<bean:message key="link.javaInterviewQuestions" />
			</html:link></li>
		<li><html:link
				action="/interviewquestions/servletInterviewQuestions">
				<bean:message key="link.servletInterviewQuestions" />
			</html:link></li>
		<li><html:link action="/interviewquestions/JSPInterviewQuestions">
				<bean:message key="link.JSPInterviewQuestions" />
			</html:link></li>
		<li><html:link
				action="/interviewquestions/strutsInterviewQuestions">
				<bean:message key="link.strutsInterviewQuestions" />
			</html:link></li>
		<li class="last"><html:link
				action="/interviewquestions/hibernateInterviewQuestions">
				<bean:message key="link.hibernateInterviewQuestions" />
			</html:link></li>
	</ul>

	<div class="clearer"></div>
</div>


<!-- EJB Tutorials -->
<div id="tutorials" class="sidebox light">
	<!--tutorials-->
	<h2>
		<bean:message key="heading.EJBTutorials" />
	</h2>

	<ul>
		<li class="last"><html:link action="/ejb/MDBUsingEJB2AndJBOSS">
				<bean:message key="link.MDBUsingEJB2AndJBOSS" />
			</html:link></li>
	</ul>

	<div class="clearer"></div>
</div>
<!-- EJB Tutorials -->


<!-- Flex Tutorials -->
<div id="tutorials" class="sidebox light">
	<!--tutorials-->
	<h2>
		<bean:message key="heading.flexTutorials" />
	</h2>

	<ul>
		<li class="last"><html:link action="/flex/firstFlexProgram">
				<bean:message key="link.firstFlexProgram" />
			</html:link></li>
	</ul>

	<div class="clearer"></div>
</div>

<div class="sidebarsNoBorder"></div>



<div id="tutorials" class="sidebox light">
	<!--tutorials-->
	<h2>
		<bean:message key="heading.makeBusinessOnline" />
	</h2>
	<ul>
		<li><html:link action="/listOfOnlineAdvertisingPrograms">
				<bean:message key="link.listOfOnlineAdvertisingPrograms" />
			</html:link></li>
		<li><html:link action="/tipsAndTricks">
				<bean:message key="link.tipsAndTricks" />
			</html:link></li>
		<li><html:link action="/hostYourWebSite">
				<bean:message key="link.hostYourWebSite" />
			</html:link></li>
		<li><html:link action="/openPayPalAccount">
				<bean:message key="link.openPayPalAccount" />
			</html:link></li>
		<li><html:link action="/privacyPolicyGenerator">
				<bean:message key="link.privacyPolicyGenerator" />
			</html:link></li>
		<li><html:link action="/termsOfServiceGenerator">
				<bean:message key="link.termsOfServiceGenerator" />
			</html:link></li>
		<li><html:link action="/addSocialBookmarkingService">
				<bean:message key="link.addSocialBookmarkingService" />
			</html:link></li>
		<li><html:link action="/addRSSFeedToYourSite">
				<bean:message key="link.addRSSFeedToYourSite" />
			</html:link></li>
		<li><html:link action="/addSitemapToYourSite">
				<bean:message key="link.addSitemapToYourSite" />
			</html:link></li>
		<li class="last"><html:link action="/googleWebmaster">
				<bean:message key="link.googleWebmaster" />
			</html:link></li>
	</ul>
	<div class="clearer"></div>
</div>

<!--Google Friend Connect - Set up the Comments gadget-->
<div id="tutorials" class="sidebarsNoBorder">
	<!-- Include the Google Friend Connect javascript library. -->
	Facebook Plugin Coming Soon
</div>
<!--Google Left Pane Ad-->


<div id="tutorials" class="sidebarsNoBorder">
	<div align="center">
		<!-- START CUSTOM ADVERTISEMENT CODE -->
		<!-- END CUSTOM ADVERTISEMENT CODE -->
	</div>
</div>