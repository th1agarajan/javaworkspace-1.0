<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>

<div class="notifications">
	<h3>Design Patterns</h3>

	<p>I just thought of writing this tutorial about Design patterns
		since I didn't find a good website with a simple real time example. I
		found some, but they explained the logic using Swings which I'm not
		used to. I tried my best to make sure that the examples are simple and
		clear.</p>
</div>

<div class="notifications">
	<dl>
		<dt>Creational Pattern:</dt>
		<dd>These design patterns provides way to create objects while
			hiding the creation logic, rather than instantiating objects directly
			using new operator. This gives program more flexibility in deciding
			which objects need to be created for a given use case.</dd>
	</dl>
</div>

<div class="notifications">
	<dl>
		<dt>Structural Pattern:</dt>
		<dd>
			These design patterns concern class and object composition. Concept
			of inheritance is used to compose interfaces and define ways to
			compose objects to obtain new functionalities.

			<ul>
				<li><html:link action="/flyweightPattern">
					Flyweight pattern
				</html:link></li>
			</ul>

		</dd>
	</dl>
</div>

<div class="notifications">
	<dl>
		<dt>Behavioral Pattern:</dt>
		<dd>These design patterns are specifically concerned with
			communication between objects. 4 J2EE Patterns These design patterns
			are specifically concerned with the presentation tier. These patterns
			are identified by Sun Java Center.</dd>
	</dl>
</div>