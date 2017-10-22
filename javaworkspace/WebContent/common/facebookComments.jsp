<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>
<%
	String url = null;
	if (request.getQueryString() != null) {
		url = request.getScheme()
				+ "://"
				+ request.getServerName()
				+ request
						.getAttribute("javax.servlet.forward.request_uri")
				+ "?" + request.getQueryString();
	} else {
		url = request.getScheme()
				+ "://"
				+ request.getServerName()
				+ request
						.getAttribute("javax.servlet.forward.request_uri");
	}
%>


<div class="facebookOuter">
	<div class="facebookInner">
		<div class="fb-comments" data-href="<%=url%>" data-width="910"
			data-num-posts="10"></div>
	</div>
</div>

