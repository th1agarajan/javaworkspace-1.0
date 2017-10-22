<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>



<div class="notifications">
	<h3>Splunk Best Practices</h3>
	<div class="notifications">
		<dl>
			<dt>1. Avoid unwanted Rename</dt>
			<dd>
				These design patterns provides way to create objects while hiding
				the creation logic, rather than instantiating objects directly using
				new operator.
				<html:link action="/splunkRename">Learn more...</html:link>
			</dd>
			<dt>2. Use * instead of +</dt>
			<dd>
				These design patterns provides way to create objects while hiding
				the creation logic, rather than instantiating objects directly using
				new operator.
				<html:link action="/splunkZeroOrMore">Learn more...</html:link>
			</dd>

			<dt>3. Replace rex with field extractions</dt>
			<dd>
				These design patterns provides way to create objects while hiding
				the creation logic, rather than instantiating objects directly using
				new operator.
				<html:link action="/splunkFieldExtraction">Learn more...</html:link>
			</dd>

			<dt>4. Have concrete data before first pipe</dt>
			<dd>
				These design patterns provides way to create objects while hiding
				the creation logic, rather than instantiating objects directly using
				new operator. <html:link action="/splunkConcreteData">Learn more...</html:link>
			</dd>

			<dt>5. Don't use real search to populate dropdown in Splunk
				forms instead use lookup table</dt>
			<dd>
				These design patterns provides way to create objects while hiding
				the creation logic, rather than instantiating objects directly using
				new operator.
				<html:link action="/splunkLookup">Learn more...</html:link>
			</dd>

		</dl>
	</div>
</div>