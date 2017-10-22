<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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

<html>
<head>

<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta name="Author" content="Java Workspace">
<meta name="viewport" content="width=1024">
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7">
<tiles:useAttribute id="title" name="title" classname="java.lang.String" />
<title><bean:message key="<%=title%>" /></title>
<meta name="Author" content="Java Workspace">
<meta name="Category" content="Java Tutorials">

<meta name="description" content="<bean:message key="<%=title%>"/>">
<meta name="keywords" content="<bean:message key="<%=title%>"/>">

<meta name="viewport" content="width=1024">
<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/base.css"
	type="text/css" charset="utf-8" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/index.css" type="text/css"
	charset="utf-8" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/content.css" type="text/css"
	charset="utf-8" />

<!-- SyntaxHighlighter CSS -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/syntaxHighlighter/styles/SyntaxHighlighter.css"
	type="text/css" charset="utf-8" />

</head>

<body>
	<!-- Java Script SDK for Facebook Start -->

	<div id="fb-root"></div>
	<script>
  window.fbAsyncInit = function() {
    // init the FB JS SDK
    FB.init({
      appId      : '436416313109072', // App ID from the App Dashboard
      channelUrl : 'http://www.javaworkspace.com/setClasspath.do', // Channel File for x-domain communication
      status     : true, // check the login status upon init?
      cookie     : true, // set sessions cookies to allow your server to access the session?
      xfbml      : true  // parse XFBML tags on this page?
    });

    // Additional initialization code such as adding Event Listeners goes here

  };

  // Load the SDK's source Asynchronously
  // Note that the debug version is being actively developed and might 
  // contain some type checks that are overly strict. 
  // Please report such bugs using the bugs tool.
  (function(d, debug){
     var js, id = 'facebook-jssdk', ref = d.getElementsByTagName('script')[0];
     if (d.getElementById(id)) {return;}
     js = d.createElement('script'); js.id = id; js.async = true;
     js.src = "//connect.facebook.net/en_US/all" + (debug ? "/debug" : "") + ".js";
     ref.parentNode.insertBefore(js, ref);
   }(document, /*debug*/ false));
</script>
	<!-- Java Script SDK for Facebook End -->
	<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_US/all.js#xfbml=1";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>

	<tiles:insert attribute="header" />

	<div id="container">
		<div id="main">
			<div id="content">
				<div class="column3">

					<div class="column first sidebar">
						<!--column first sidebar start-->
						<tiles:insert attribute="leftPane" />
					</div>
					<!--/column first sidebar end-->

					<div class="column">
						<div class="box">
							<div class="centerBox">
								<div class="boxtop">

									<h2>Tutorials</h2>

								</div>
								<div id="tutorialLinks">

									<!-- Google Custom Search Element -->
									<div id="cse" style="width: 100%;">Loading</div>
									<script src="http://www.google.com/jsapi"
										type="text/javascript"></script>
									<script type="text/javascript">
  google.load('search', '1');
  google.setOnLoadCallback(function(){
    new google.search.CustomSearchControl().draw('cse');
  }, true);
</script>
								</div>

								<div class="tutorials">
									<tiles:insert attribute="body" />
								</div>
							</div>
							<!--/centerBox-->
						</div>
						<!--/box-->
					</div>
					<!--/column-->
					<!---side start-->
					<div class="column last sidebar">
						<tiles:insert attribute="rightPane" />
					</div>
					<!--sidebox light-->
					<!---side end-->
				</div>
				<!--/column3-->
			</div>
			<!--/content-->
		</div>
		<!--/main-->
	</div>
	<!--/container-->


	<div id="contentFullWidth">
		<div class="box">
			<tiles:insert attribute="bodyFullWidth" />
		</div>
	</div>

	<div id="globalfooter">
		<div id="breadcrumbs"></div>
		<!--/breadcrumbs-->
		<tiles:insert attribute="footer" />
	</div>
	<!--/globalfooter-->

	<script type="text/javascript">
  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-2644706-2']);
  _gaq.push(['_setDomainName', 'javaworkspace.com']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>

	<!-- Kontera ContentLink(TM);-->
	<!-- script type='text/javascript'>
var dc_AdLinkColor = '#960000' ;
var dc_PublisherID = 102044 ;
</script>
	<script type='text/javascript'
		src='http://kona.kontera.com/javascript/lib/KonaLibInline.js'>
</script>
	<!-- Kontera ContentLink(TM) -->

	<!-- SyntaxHighlighter JavaScript -->
	<script language="javascript"
		src="<%=request.getContextPath()%>/syntaxHighlighter/scripts/shCore.js"></script>
	<script language="javascript"
		src="<%=request.getContextPath()%>/syntaxHighlighter/scripts/shBrushJava.js"></script>
	<script language="javascript"
		src="<%=request.getContextPath()%>/syntaxHighlighter/scripts/shBrushXml.js"></script>
	<script language="javascript"
		src="<%=request.getContextPath()%>/syntaxHighlighter/scripts/shBrushSql.js"></script>
	<script language="javascript">
dp.SyntaxHighlighter.ClipboardSwf = '<%=request.getContextPath()%>
		/syntaxHighlighter/scripts/clipboard.swf';
		dp.SyntaxHighlighter.HighlightAll('code');
	</script>
	<!-- SyntaxHighlighter JavaScript -->

</body>
</html>