<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>

<div id="tutorials" class="sidebox light">
	<!--tutorials-->
	<h2>
		<bean:message key="heading.pagination" />
	</h2>
	<ul>
		<li><html:link action="/welcome">
				<bean:message key="link.home" />
			</html:link></li>
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
		<li class="last"><html:link action="/donations">
				<bean:message key="link.donate" />
			</html:link></li>
	</ul>
	<div class="clearer"></div>
</div>

<!--Google Left Pane Ad Ending-->

<div class="sidebarsNoBorder">
	<script type="text/javascript">
	<!--
		google_ad_client = "pub-7721880692647574";
		/* Left Link Ad 180x90, created 8/10/09 */
		google_ad_slot = "5572994814";
		google_ad_width = 180;
		google_ad_height = 90;
	//-->
	</script>
	<script type="text/javascript"
		src="http://pagead2.googlesyndication.com/pagead/show_ads.js">
		
	</script>
</div>

<div id="tutorials" class="sidebarsNoBorder">
	<div align="center">
		<!-- START CUSTOM ADVERTISEMENT CODE -->
		<!-- END CUSTOM ADVERTISEMENT CODE -->
	</div>
</div>