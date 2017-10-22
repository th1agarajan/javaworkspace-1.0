<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<div class="header">
	<div class="header_resize">
		<div class="logo">
			<script>
				(function() {
					var cx = '013014532549473653448:rebyu4bqlfc';
					var gcse = document.createElement('script');
					gcse.type = 'text/javascript';
					gcse.async = true;
					gcse.src = (document.location.protocol == 'https:' ? 'https:'
							: 'http:')
							+ '//www.google.com/cse/cse.js?cx=' + cx;
					var s = document.getElementsByTagName('script')[0];
					s.parentNode.insertBefore(gcse, s);
				})();
			</script>
			<gcse:search></gcse:search>
		</div>
		<div
			style="width: 180px; float: left; height: 90px; background: #FFFFFF; margin: 0px; overflow: hidden;">
			<script type="text/javascript">
			<!--
				google_ad_client = "ca-pub-7721880692647574";
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
		<div
			style="width: 728px; float: right; height: 90px; background: #FFFFFF; margin: 0px; overflow: hidden;">
			<script type="text/javascript">
			<!--
				google_ad_client = "ca-pub-7721880692647574";
				/* Top Header New Blank */
				google_ad_slot = "5535028575";
				google_ad_width = 728;
				google_ad_height = 90;
			//-->
			</script>
			<script type="text/javascript"
				src="http://pagead2.googlesyndication.com/pagead/show_ads.js">
				
			</script>
		</div>
		<div class="clr"></div>
		<div class="menu_nav">
			<ul>
				<li><html:link action="/welcome">
						<bean:message key="link.home" />
					</html:link></li>
				<li><html:link action="/coreJava">
						<bean:message key="link.coreJava" />
					</html:link></li>
				<li><html:link action="/designPatterns">
						<bean:message key="link.designPatterns" />
					</html:link></li>
				<li><html:link action="/IDE">
						<bean:message key="link.IDE" />
					</html:link></li>
				<li><html:link action="/splunk">
						<bean:message key="link.splunk" />
					</html:link></li>
				<li><html:link action="/others">
						<bean:message key="link.others" />
					</html:link></li>
				<li><html:link action="/products">
						<bean:message key="link.products" />
					</html:link></li>
				<li><html:link action="/contactUs">
						<bean:message key="link.contactUs" />
					</html:link></li>
			</ul>
			<div
				style="width: 468px; float: left; height: 15px; margin: 0px; padding: 10px;">
				<script async
					src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
				<!-- Menu Bar -->
				<ins class="adsbygoogle"
					style="display: inline-block; width: 468px; height: 15px"
					data-ad-client="ca-pub-7721880692647574" data-ad-slot="5513757284"></ins>
				<script>
					(adsbygoogle = window.adsbygoogle || []).push({});
				</script>
			</div>
			<div class="searchform">
				<div class="fb-like"
					data-href="http://www.facebook.com/javaworkspace" data-send="true"
					data-layout="button_count" data-width="500" data-show-faces="true"
					data-font="trebuchet ms"></div>&nbsp;&nbsp;
				<a class="twitter" target="_blank"
					href="https://twitter.com/javaworkspace"></a>
			</div>
		</div>
		<div class="clr"></div>
	</div>
</div>