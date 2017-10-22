<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!--Author : Thiagarajan.RM
	Copyright © 2009 javaworkspace.com

	Contact Us:
				E-Mail : javaworkspace@gmail.com
-->

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<tiles:useAttribute id="title" name="title" classname="java.lang.String" />
<title><bean:message key="<%=title%>" /></title>
<meta name="Author" content="Java Workspace">
	<meta name="Category" content="Java Tutorials">
		<meta name="description" content="<bean:message key="<%=title%>"/>">
			<meta name="keywords" content="<bean:message key="<%=title%>"/>">
				<meta http-equiv="content-type" content="text/html; charset=utf-8" />
				<link rel="shortcut icon" href="images/layout/favicon.ico"
					type="image/x-icon" />
				<base href="<%=request.getContextPath()%>/">
					<link rel="stylesheet"
						href="<%=request.getContextPath()%>/css/style.css" type="text/css"
						charset="utf-8" />
					<!-- SyntaxHighlighter CSS -->
					<link rel="stylesheet"
						href="<%=request.getContextPath()%>/syntaxHighlighter/styles/shCore.css"
						type="text/css" />
					<link rel="stylesheet"
						href="<%=request.getContextPath()%>/syntaxHighlighter/styles/shThemeDefault.css"
						type="text/css" />
					<script language="javascript"
						src="<%=request.getContextPath()%>/syntaxHighlighter/scripts/shCore.js"></script>
					<script language="javascript"
						src="<%=request.getContextPath()%>/syntaxHighlighter/scripts/shBrushJava.js"></script>
					<script language="javascript"
						src="<%=request.getContextPath()%>/syntaxHighlighter/scripts/shBrushXml.js"></script>
					<script language="javascript"
						src="<%=request.getContextPath()%>/syntaxHighlighter/scripts/shBrushSql.js"></script>
					<style type="text/css">
.syntaxhighlighter {
	overflow-y: hidden !important;
	overflow-x: auto !important;
}
</style>
</head>
<body>
	<div id="fb-root"></div>
	<script>
		(function(d, s, id) {
			var js, fjs = d.getElementsByTagName(s)[0];
			if (d.getElementById(id))
				return;
			js = d.createElement(s);
			js.id = id;
			js.src = "//connect.facebook.net/en_US/all.js#xfbml=1&appId=436416313109072";
			fjs.parentNode.insertBefore(js, fjs);
		}(document, 'script', 'facebook-jssdk'));
	</script>

	<div class="main">
		<!-- Insert header here -->
		<tiles:insert attribute="header" />
		<div class="content">
			<div class="content_resize">
				<div class="mainbar">
					<div class="article">
						<!-- Insert article here -->
						<tiles:insert attribute="body" />
					</div>
				</div>
				<!-- Insert sidebar here -->
				<tiles:insert attribute="rightPane" />
				<div class="clr"></div>
			</div>
		</div>
	</div>
	<!-- facebook comments -->
	<tiles:insert attribute="facebookComments" />
	<!-- Insert footer here -->
	<tiles:insert attribute="footer" />
	<script type="text/javascript">
		var _gaq = _gaq || [];
		_gaq.push([ '_setAccount', 'UA-2644706-2' ]);
		_gaq.push([ '_setDomainName', 'javaworkspace.com' ]);
		_gaq.push([ '_trackPageview' ]);

		(function() {
			var ga = document.createElement('script');
			ga.type = 'text/javascript';
			ga.async = true;
			ga.src = ('https:' == document.location.protocol ? 'https://ssl'
					: 'http://www')
					+ '.google-analytics.com/ga.js';
			var s = document.getElementsByTagName('script')[0];
			s.parentNode.insertBefore(ga, s);
		})();
	</script>
	<!-- SyntaxHighlighter JavaScript -->
	<script type="text/javascript">
		SyntaxHighlighter.all()
	</script>
	<!-- SyntaxHighlighter JavaScript -->
</body>
</html>