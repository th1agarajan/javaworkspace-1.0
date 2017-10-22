<div id="tutorialLinks">
	<h2>Create JavaDoc</h2>
	<p>
		<strong>Pre-Requisites:</strong>
	</p>
	<ul>
		<li>jdk1.6.0_11</li>
	</ul>
	<br>
	<p>
		<strong><u>Installed location:</u></strong>
	</p>
	<p>jdk1.6.0_11-&gt;C:\Program Files\Java\jdk1.6.0_11\
	<p>&nbsp;</p>
	<p>
		<strong><u>Environment Variables:</u></strong>
	</p>
	<p>
		<strong>Enter Variable name and Variable value which is
			mentioned below. </strong>
	</p>
	<p>
		<strong>&nbsp;</strong>
	</p>
	<table border="1" cellspacing="5" cellpadding="0">
		<tr>
			<td width="139" align="right"><strong>Variable name:</strong></td>
			<td width="451"><strong>JAVA_HOME</strong></td>
		</tr>
		<tr>
			<td width="139" align="right"><strong>Variable value:</strong></td>
			<td width="451" valign="top"><strong>C:\Program
					Files\Java\jdk1.6.0_11</strong></td>
		</tr>
	</table>
	<p>&nbsp;</p>
	<p>
		<strong><u>Overview:</u></strong>
	</p>
	<p>Javadoc is a tool for generating API documentation in HTML
		format from doc comments in source code.</p>

	<p>
		<b>Save as CreateJavadocExample.java</b>
	</p>

	<pre class="brush: java">
/*
 * @(#)CreateJavadocExample.java 1.0 07/15/09
 *
 * Copyright 2009 Java Workspace, Inc. All rights reserved.
 * JAVA WORKSPACE PROPRIETARY/CONFIDENTIAL. Use is subject to license terms.
 */

package com.javaworkspace.javadoc;

/**
 * The class <code>CreateJavadocExample</code> includes method for adding two
 * numbers
 * 
 * <p>
 * For additional information on Javadoc, see <a
				* href="http://www.javaworkspace.com/createJavaDoc.do">http://www.javaworkspace.com/createJavaDoc.do</a>.
 * </p>
 * 
 * @author www.javaworkspace.com
 * @version 1.0, 07/15/09
 * @see java.lang.Object
 * @since 1.0
 */

public class CreateJavadocExample {

	/**
	 * @param a
	 *            first number which is to be added
	 * @param b
	 *            second number which is to be added
	 * @return addition of two numbers
	 * @since 1.0
	 */

	public int add(int a, int b) {
		return a + b;
	}
}
</pre>

	<p>&nbsp;</p>
	<p>
		<strong><u>Steps To Create JavaDoc</u></strong>
	</p>
	<ol>
		<li>Copy the above program in the folder
			com.javaworkspace.javadoc</li>
		<li>In command prompt navigate to
			D:\javadoc\com\javaworkspace\javadoc></li>
		<li>type javadoc CreateJavadocExample.java</li>
		<li>this will create html document in the same folder.</li>
		<li>Locate index.html and click that.</li>
		<li>Browser window will be opened with Class Summary.</li>
		<li>Click CreateJavadocExample in top left corner of All Classes
			pane.</li>
		<li>You can see Method Detail, Constructor Detail... etc.</li>
		<li>In the above example we have mentioned only some of the
			javadoc comments.</li>
	</ol>

	<p>
		<strong><u>Relate Links:</u></strong>
	</p>
	<p>
		<a href="http://www.javaworkspace.com/privacyPolicyGenerator.do">http://www.javaworkspace.com/privacyPolicyGenerator.do</a><br />
		<a href="http://www.javaworkspace.com/termsOfServiceGenerator.do">http://www.javaworkspace.com/termsOfServiceGenerator.do</a><br />
		<a href="http://www.javaworkspace.com/openPayPalAccount.do">http://www.javaworkspace.com/openPayPalAccount.do</a><br />
		<a href="http://www.javaworkspace.com/hostYourWebSite.do">http://www.javaworkspace.com/hostYourWebSite.do</a><br />
		<a
			href="http://www.javaworkspace.com/listOfOnlineAdvertisingPrograms.do">Online
			Advertising Programs</a><br /> <a
			href="http://www.javaworkspace.com/tipsAndTricks.do">http://www.javaworkspace.com/tipsAndTricks.do</a>
	</p>

</div>