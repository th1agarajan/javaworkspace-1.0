<div id="tutorialLinks">

<h1>Java Mail</h1>

<table width="90%">
	<tr>
		<td>
		<p><strong>For Windows users only</strong><br>
		<p><strong><u>Pre-Requisites:</u></strong></p>
		<ul>
			<li>jdk1.6.0_11&nbsp;(&nbsp;works with previous versions of JDK)</li>
		</ul>
		</td>
	</tr>
</table>
<p><strong>&nbsp;</strong><strong><u>Installed
location:</u></strong></p>
<ul>
	<li>jdk1.6.0_11 -&gt;   C:\Program Files\Java\jdk1.6.0_11\</li>
	<li>mail.jar -&gt;   D:\apache-tomcat-6.0.18\lib\mail-1.3.3.jar</li>
</ul>
<p><strong><u>Environment Variables:</u></strong></p>
<p>Enter Variable name and Variable value which is mentioned below.</p>

<table border="1" cellspacing="0" cellpadding="0">
	<tr valign="middle">
		<td width="139" align="right">Variable name:</td>
		<td width="451"><strong>&nbsp;&nbsp;JAVA_HOME</strong></td>
	</tr>
	<tr valign="middle">
		<td width="139" align="right">Variable value:</td>
		<td width="451"><strong>&nbsp;&nbsp;C:\Program
		Files\Java\jdk1.6.0_11</strong></td>
	</tr>
</table>
<br />
<table border="1" cellspacing="0" cellpadding="0">
	<tr>
		<td width="139" align="right">Variable name:</td>
		<td width="451"><strong>&nbsp;&nbsp;PATH</strong></td>
	</tr>
	<tr valign="middle">
		<td width="139" align="right">Variable value:</td>
		<td width="451"><strong>&nbsp;&nbsp;C:\Program
		Files\Java\jdk1.6.0_11\bin</strong></td>
	</tr>
</table>
<br />
<table border="1" cellspacing="0" cellpadding="5">
	<tr>
		<td width="139" align="right">Variable name:</td>
		<td width="451"><strong>&nbsp;&nbsp;CLASSPATH</strong></td>
	</tr>
	<tr valign="middle">
		<td width="139" align="right">Variable value:</td>
		<td width="451"><strong>&nbsp;&nbsp;.;D:\apache-tomcat-6.0.18\lib\mail-1.3.3.jar</strong></td>
	</tr>
</table>
<br>
<p><strong><u>Note</u></strong></p>
There first character in classpath should be a period (.) <br>
<p>&nbsp;</p>
<p><strong><u>Download Links:</u></strong></p>
<ol>
	<li><a
		href="http://mirrors.ibiblio.org/pub/mirrors/maven/mule/dependencies/javax/mail/mail/1.3.3/mail-1.3.3.jar"
		target="_blank">Click here to download mail-1.3.3.jar</a></li>
	<li><a href="downloads/javaMail/javamail.default.address.map"
		target="_blank">javamail.default.address.map</a></li>
	<li><a href="downloads/javaMail/javamail.address.map"
		target="_blank">javamail.address.map</a></li>
	<li><a href="downloads/javaMail/javamail.providers"
		target="_blank">javamail.providers</a></li>
	<li><a href="downloads/javaMail/javamail.default.providers"
		target="_blank">javamail.default.providers</a></li>
</ol>

<p><u><strong>Steps to run the below example program</strong></u></p>
<p>Before running the below example program make sure that mail.jar
is in the classpath. Using the below program you can send mail only from
Gmail, but the receiving mail ID can be anything. If you want to send
mail from some other mail providers, then change the <em>SMTP_HOST_NAME
</em>and <em>SMTP_PORT</em> accordingly to mail providers. Change the <em>emailMsgTxt,
emailSubjectTxt, emailFromAddress </em>according to your need.</p>
<p><strong>protected</strong> PasswordAuthentication
getPasswordAuthentication() { <br />
<strong>return</strong> <strong>new</strong>
PasswordAuthentication(&quot;<strong> yourMaidID</strong>&quot;, &quot;<strong>yourPassword</strong>&quot;);
<br />
}</p>
<p>Replace &quot;<strong>yourMaidID</strong>&quot; with from address
(i.e. the mail ID from where email should go) and replace &quot; <strong>yourPassword</strong>&quot;
with the password of the corresponding mail ID.</p>
<p>While running the below program you may encounter some errors in
console which is given below. This is just a warning. By default our
program will look for javamail.providers, javamail.address.map,
javamail.default.address.map, javamail.default.providers in "C:\Program
Files\Java\jre6\lib\" folder. So to avoid this warnings you just create
four files inside "C:\Program Files\Java\jre6\lib\" with the below
names. Make sure that the extension of the file is not in .txt format.<br />
(little workaround to make sure the extension is not of type .txt -
Click <strong>My Computer</strong> -&gt; <strong>Tools</strong> -&gt; <strong>Folder
Options</strong> -&gt; <strong>View</strong> -&gt; <strong>Advanced
settings</strong> -&gt; <br />
Uncheck the check box "Hide extensions for known file types". Now
navigate to "C:\Program Files\Java\jre6\lib\" and check for the file
extensions.)</p>

<p><strong><u>Warnings</u></strong></p>
<p>DEBUG: java.io.FileNotFoundException: C:\Program
Files\Java\jre6\lib\javamail.providers (The system cannot find the file
specified)<br />
DEBUG: java.io.FileNotFoundException: C:\Program
Files\Java\jre6\lib\javamail.address.map (The system cannot find the
file specified)</p>

<p>&nbsp;</p>
<p><strong><u>Simple java program to send mail</u></strong></p>

<pre class="brush: java">
/**
 * SendMailThroughJava.java
 */
package com.javaworkspace.mail;

import java.security.Security;
import java.util.Properties;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

/**
 * @author www.javaworkspace.com
 */
public class SendMailThroughJava {

	private static final String SMTP_HOST_NAME = "smtp.gmail.com";
	private static final String SMTP_PORT = "465";
	private static final String emailMsgTxt = "Welcome to www.javaworkspace.com";
	private static final String emailSubjectTxt = "A test mail from www.javaworkspace.com";
	private static final String emailFromAddress = "javaworkspace@gmail.com";
	private static final String SSL_FACTORY = "javax.net.ssl.SSLSocketFactory";
	private static final String[] sendTo = { "javaworkspace@hotmail.com" };

	public static void main(String args[]) throws Exception {

		Security.addProvider(new com.sun.net.ssl.internal.ssl.Provider());
		SendMailThroughJava sendMailThroughJava = new SendMailThroughJava();
		sendMailThroughJava.sendSSLMessage(sendTo, emailSubjectTxt,
				emailMsgTxt, emailFromAddress);
		System.out.println("Sucessfully sent mail to all Users");
	}

	/**
	 * @param recipients
	 * @param subject
	 * @param message
	 * @param from
	 * @throws MessagingException
	 */
	public void sendSSLMessage(String recipients[], String subject,
			String message, String from) throws MessagingException {
		boolean debug = true;

		Properties props = new Properties();
		props.put("mail.smtp.host", SMTP_HOST_NAME);
		props.put("mail.smtp.auth", "true");
		props.put("mail.debug", "true");
		props.put("mail.smtp.port", SMTP_PORT);
		props.put("mail.smtp.socketFactory.port", SMTP_PORT);
		props.put("mail.smtp.socketFactory.class", SSL_FACTORY);
		props.put("mail.smtp.socketFactory.fallback", "false");

		Session session = Session.getDefaultInstance(props,
				new javax.mail.Authenticator() {
					protected PasswordAuthentication getPasswordAuthentication() {
						return new PasswordAuthentication("yourMaidID",
								"yourPassword");
					}
				});

		session.setDebug(debug);

		Message msg = new MimeMessage(session);
		InternetAddress addressFrom = new InternetAddress(from);
		msg.setFrom(addressFrom);

		InternetAddress[] addressTo = new InternetAddress[recipients.length];
		for (int i = 0; i < recipients.length; i++) {
			addressTo[i] = new InternetAddress(recipients[i]);
		}
		msg.setRecipients(Message.RecipientType.TO, addressTo);

		// Setting the Subject and Content Type
		msg.setSubject(subject);
		msg.setContent(message, "text/plain");
		Transport.send(msg);
	}
}
</pre>

<p>&nbsp;</p>

<p> <strong><u>See also:</u></strong></p>
<p><a href="http://www.javaworkspace.com/pagerTags.do">Pagination
using Pager Tags</a><br />
<a href="http://www.javaworkspace.com/displayTags.do">Pagination
using Display Tags</a><br />
<a href="http://www.javaworkspace.com/hibernate/firstHibernateProgram.do">First
Hibernate Progarm</a><br />
<a href="http://www.javaworkspace.com/hibernate/manyToOneAssociation.do">Many
To One Association</a><br />
<a href="http://www.javaworkspace.com/hibernate/oneToOneAssociation.do">One To
One Association</a><br />
<a href="http://www.javaworkspace.com/hibernate/oneToManyAssociation.do">One
To Many Association</a></p>
<p><strong><u>External links</u></strong></p>
<p><a
	href="http://java.sun.com/products/javamail/javadocs/javax/mail/Session.html"
	target="_blank">http://java.sun.com/products/javamail/javadocs/javax/mail/Session.html</a></p>
</div>