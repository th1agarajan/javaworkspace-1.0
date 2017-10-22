<div id="tutorialLinks">

<p align="right"><strong>Updated On: Wednesday, August 19,
2009 </strong></p>
<p align="right"><strong>Created Date: Monday, June 29,
2009</strong></p>
<br />

<h1>Generate Report Using Jasper Reports</h1>
<p><strong>For Windows users only</strong><br>
<p><strong><u>Pre-Requisites:</u></strong></p>
<ol>
	<li>jdk1.6.0_11</li>
	<li>MySQL Server 5.1</li>
	<li>iReport-2.0.1</li>
	<li>jasperreports-2.0.1.jar</li>
	<li>commons-beanutils-1.7.jar</li>
	<li>commons-collections-2.1.jar</li>
	<li>commons-digester-1.7.jar</li>
	<li>commons-logging-1.0.2.jar</li>
	<li>mysql-connector-java-3.0.11-stable-bin.jar</li>
</ol>

<p>Jar files required for creating report can be found in iReport
installed location <b>(C:\Program
Files\JasperSoft\iReport-2.0.1\lib\)</b>.</p>
<p>&nbsp;</p>
<p>iReport can be downloaded from <a
	href="http://sourceforge.net/projects/ireport/files/" target="_blank">http://sourceforge.net/projects/ireport/files/</a>
<p>&nbsp;</p>
<p><strong><u>Environment Variables:</u></strong></p>
<p><strong>Enter Variable name and Variable value which is
mentioned below. </strong></p>
<table border="1" cellspacing="0" cellpadding="0">
	<tr>
		<td width="139">
		<p align="right"><strong>Variable name:</strong></p>
		</td>
		<td width="451">
		<p><strong>JAVA_HOME</strong></p>
		</td>
	</tr>
	<tr>
		<td width="139">
		<p align="right"><strong>Variable value:</strong></p>
		</td>
		<td width="451" valign="top">
		<p><strong>C:\Program Files\Java\jdk1.6.0_11</strong></p>
		</td>
	</tr>
</table>
<br />
<table border="1" cellspacing="0" cellpadding="0">
	<tr>
		<td width="139">
		<p align="right"><strong>Variable name:</strong></p>
		</td>
		<td width="451">
		<p><strong>PATH</strong></p>
		</td>
	</tr>
	<tr>
		<td width="139">
		<p align="right"><strong>Variable value:</strong></p>
		</td>
		<td width="451" valign="top">
		<p><strong>C:\Program Files\Java\jdk1.6.0_11\bin</strong></p>
		</td>
	</tr>
</table>
<br />
<table border="1" cellspacing="0" cellpadding="0">
	<tr>
		<td width="139">
		<p align="right"><strong>Variable name:</strong></p>
		</td>
		<td width="451" valign="top">
		<p><strong>CLASSPATH</strong></p>
		</td>
	</tr>
	<tr>
		<td width="139">
		<p align="right"><strong>Variable value:</strong></p>
		</td>
		<td width="451" valign="top">
		<p><strong>.;C:\Program
		Files\JasperSoft\iReport-2.0.1\lib\jasperreports-2.0.1.jar;</strong></p>
		<p><strong>C:\Program
		Files\JasperSoft\iReport-2.0.1\lib\commons-beanutils-1.7.jar;</strong></p>
		<p><strong>C:\Program
		Files\JasperSoft\iReport-2.0.1\lib\commons-collections-2.1.jar;</strong></p>
		<p><strong>C:\Program
		Files\JasperSoft\iReport-2.0.1\lib\commons-digester-1.7.jar;</strong></p>
		<p><strong>C:\Program
		Files\JasperSoft\iReport-2.0.1\lib\commons-logging-1.0.2.jar;</strong></p>
		<p><strong>C:\Program
		Files\JasperSoft\iReport-2.0.1\lib\mysql-connector-java-3.0.11-stable-bin.jar</strong></p>
		</td>
	</tr>
</table>
<p>&nbsp;</p>
<p><strong><u>Simple program to connect .jrxml with
java</u></strong></p>
<p><strong><u>DB-Scripts</u></strong><u> </u></p>

<pre class="brush: sql">
CREATE DATABASE jasperreporttutorial;

USE jasperreporttutorial;

CREATE TABLE `studentdetails` (
  `Name` varchar(20) NOT NULL,
  `Age` int(3) NOT NULL,
  `Country` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT   INTO jasperreporttutorial.StudentDetails (Name, Age, Country)
   VALUES ('Name', Age, 'Country');
</pre>

<p><a href="downloads/reports/jasperreports/Report1.jrxml">Click
here to download sample .jrlml file which is used in the below program</a></p>
<p><strong>&nbsp;</strong></p>
<p><strong><u>Program to connect Java with .jrxml</u></strong></p>
<p><strong>&nbsp;</strong></p>
<p><strong>FirstJasperReportProgram.java</strong></p>

<pre class="brush: java">
/**
 * FirstJasperReportProgram.java
 */
package com.javaworkspace.jasperreports;

import java.sql.Connection;
import java.sql.DriverManager;

import net.sf.jasperreports.engine.JasperCompileManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.design.JasperDesign;
import net.sf.jasperreports.engine.xml.JRXmlLoader;
import net.sf.jasperreports.view.JasperViewer;

/**
 * @author www.javaworkspace.com
 * 
 */
public class FirstJasperReportProgram {

	public static Connection getConnection() {
		Connection jdbcConnection = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			jdbcConnection = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/jasperreporttutorial", "root",
					"root");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return jdbcConnection;
	}

	/**
	 * @param reportFile
	 */
	public static void runReport(String reportFile) {
		try {
			JasperDesign jasperDesign = JRXmlLoader.load(reportFile);
			JasperReport jasperReport = JasperCompileManager
					.compileReport(jasperDesign);
			Connection jdbcConnection = getConnection();
			JasperPrint jasperPrint = JasperFillManager.fillReport(
					jasperReport, null, jdbcConnection);
			JasperViewer.viewReport(jasperPrint);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public static void main(String[] args) {
		String reportFile = "src\\reports\\Report1.jrxml";
		runReport(reportFile);
	}
}
</pre> <br />

<p><a href="http://www.javaworkspace.com/connectSqlserver.do">How
to connect Java with SQLServer using JDBC driver</a><br />
<a href="http://www.javaworkspace.com/connectOracle.do">How to
connect Java with Oracle using JDBC driver</a><br />
<a href="http://www.javaworkspace.com/createExecutableJar.do">Create
Executable File In Java</a><br />
<a href="http://www.javaworkspace.com/setClasspath.do">Click Here To
Know How To Set Classpath</a><br />
<a href="http://www.javaworkspace.com/pagerTags.do">Pager Tag
Tutorial</a><br />
<a href="http://www.javaworkspace.com/howToInstallMySQL.do">How To
Install MySQL</a><br />
<a href="http://www.javaworkspace.com/javaMail.do">Send E-mail
through java program</a><br />
<a href="http://www.javaworkspace.com/changeTomcatPortNumber.do">Change
Tomcat Port Number</a></p>

</div>