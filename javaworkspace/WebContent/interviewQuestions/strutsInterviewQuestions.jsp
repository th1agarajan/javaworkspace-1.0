<div id="tutorialLinks">

<p align="right"><strong>Updated On: Friday, September 04,
2009 </strong></p>

<p align="right"><strong>Created On: Thursday, August 20,
2009</strong></p>
<h1>Struts Interview Questions</h1>

<h1>Coming Soon...</h1>

<h1>This page is under construction and we are constantly trying to
improve it. We don't want this page to be empty. So we have filled this
place with some place holders. We'll update this at the earliest
possible</h1>

<div class="question">1.What is MVC?</div>
<div class="answer">Model-View-Controller (MVC) is a design
pattern put together to help control change. MVC decouples interface
from business logic and data.
<ul>
	<li><strong>Model :</strong> The model contains the core of the
	application's functionality. The model encapsulates the state of the
	application. Sometimes the only functionality it contains is state. It
	knows nothing about the view or controller.</li>
	<br />
	<li><strong>View:</strong> The view provides the presentation of
	the model. It is the <em>look</em> of the application. The view can
	access the model getters, but it has no knowledge of the setters. In
	addition, it knows nothing about the controller. The view should be
	notified when changes to the model occur.</li>
	<br />
	<li><strong>Controller:</strong> The Controller is typically a
	servlet that recieves requests for the application and manages the flow
	of data between the Model layer and the View Layer.</li>
</ul>
</div>

<div class="question">2.What is a framework?</div>
<div class="answer">A framework is made up of the set of classes
which allow us to use a library in a best possible way for a specific
requirement.</div>

<div class="question">3.What is Struts framework?</div>
<div class="answer">Struts framework is an open-source framework
for developing the web applications in Java EE, based on MVC-2
architecture. It uses and extends the Java Servlet API. Struts is robust
architecture and can be used for the development of application of any
size. Struts framework makes it much easier to design scalable, reliable
Web applications with Java.</div>

<div class="question">4.What are the components of Struts?</div>
<div class="answer">Struts components can be categorize into
Model, View and Controller:
<ul>
	<li><strong>Model:</strong> Components like business logic
	/business processes and data are the part of model.</li>
	<li><strong>View:</strong> HTML, JSP are the view components.</li>
	<li><strong>Controller:</strong> Action Servlet of Struts is part
	of Controller components which works as front controller to handle all
	the requests.</li>
</ul>
</div>

<div class="question">5.What are the core classes of the Struts
Framework?</div>
<div class="answer">Struts is a set of cooperating classes,
servlets, and JSP tags that make up a reusable MVC 2 design.
<ul>
	<li>JavaBeans components for managing application state and
	behavior.</li>
	<li>Event-driven development (via listeners as in traditional GUI
	development).</li>
	<li>Pages that represent MVC-style views; pages reference view
	roots via the JSF component tree.</li>
</ul>
</div>

<div class="question">6.What is ActionServlet?</div>
<div class="answer">ActionServlet is a simple servlet which is the
backbone of all Struts applications. It is the main Controller component
that handles client requests and determines which Action will process
each received request. It serves as an Action factory - creating
specific Action classes based on user's request.</div>

<div class="question">7.What is role of ActionServlet?</div>
<div class="answer">ActionServlet performs the role of Controller:
<ul>
	<li>Process user requests</li>
	<li>Determine what the user is trying to achieve according to the
	request</li>
	<li>Pull data from the model (if necessary) to be given to the
	appropriate view,</li>
	<li>Select the proper view to respond to the user</li>
	<li>Delegates most of this grunt work to Action classes</li>
	<li>Is responsible for initialization and clean-up of resources</li>
</ul>
</div>

<div class="question">8.What is the ActionForm?</div>
<div class="answer">ActionForm is javabean which represents the
form inputs containing the request parameters from the View referencing
the Action bean.</div>

<div class="question">9.What are the important methods of
ActionForm?</div>
<div class="answer">The important methods of ActionForm are :
validate() &amp; reset().</div>

<div class="question">10.Describe validate() and reset() methods ?</div>
<div class="answer"><u><strong><em>validate()</em></strong></u> :
Used to validate properties after they have been populated; Called
before FormBean is handed to Action. Returns a collection of ActionError
as ActionErrors. Following is the method signature for the validate()
method. <br />
<pre><strong>public </strong>ActionErrors validate(ActionMapping mapping,HttpServletRequest request)</pre>
<br />
<p align="justify"><u><strong><em>reset()</em></strong></u>: reset()
method is called by Struts Framework with each request that uses the
defined ActionForm. The purpose of this method is to reset all of the
ActionForm's data members prior to the new request values being set. <br />
<br />
</p>
<pre>public void reset() {}</pre></div>

<div class="question">11.What is ActionMapping?</div>
<div class="answer">Action mapping contains all the deployment
information for a particular Action bean. This class is to determine
where the results of the Action will be sent once its processing is
complete.</div>

<div class="question">12.How is the Action Mapping specified ?</div>
<div class="answer">We can specify the action mapping in the
configuration file called struts-config.xml. Struts framework creates
ActionMapping object from &lt;ActionMapping&gt; configuration element of
struts-config.xml file <br />
<pre>&lt;action-mappings&gt;<br /> &lt;action path=&quot;/submit&quot;<br />	type=&quot;submit.SubmitAction&quot;<br />         name=&quot;submitForm&quot;<br />         input=&quot;/submit.jsp&quot;<br />         scope=&quot;request&quot;<br />         validate=&quot;true&quot;&gt;<br />  &lt;forward name=&quot;success&quot; path=&quot;/success.jsp&quot;/&gt;<br />  &lt;forward name=&quot;failure&quot; path=&quot;/error.jsp&quot;/&gt;<br /> &lt;/action&gt;<br />&lt;/action-mappings&gt;</pre>
</div>

<div class="question">13.What is role of Action Class?</div>
<div class="answer">An Action Class performs a role of an adapter
between the contents of an incoming HTTP request and the corresponding
business logic that should be executed to process this request.</div>

<div class="question">14.In which method of Action class the
business logic is executed ?</div>
<div class="answer">In the execute() method of Action class the
business logic is executed. <br />
<pre>public ActionForward execute( <br />	    ActionMapping mapping,<br />             ActionForm form,<br />             HttpServletRequest request,<br />             HttpServletResponse response)<br />          throws Exception ;</pre>
<br />
execute() method of Action class:
<ul>
	<li>Perform the processing required to deal with this request</li>
	<li>Update the server-side objects (Scope variables) that will be
	used to create the next page of the user interface</li>
	<li>Return an appropriate ActionForward object</li>
</ul>
</div>

<div class="question">15.What design patterns are used in Struts?</div>
<div class="answer">Struts is based on model 2 MVC
(Model-View-Controller) architecture. Struts controller uses the <em>command
design pattern</em> and the action classes use the <em>adapter design
pattern</em>. The process() method of the RequestProcessor uses the <em>template
method design pattern</em>. Struts also implement the following J2EE design
patterns.
<ul>
	<li>Service to Worker</li>
	<li>Dispatcher View</li>
	<li>Composite View (Struts Tiles)</li>
	<li>Front Controller</li>
	<li>View Helper</li>
	<li>Synchronizer Token</li>
</ul>
</div>

<div class="question">16.Can we have more than one
struts-config.xml file for a single Struts application?</div>
<div class="answer">Yes, we can have more than one
struts-config.xml for a single Struts application. They can be
configured as follows: <br />
<pre>&lt;servlet&gt;<br />&lt;servlet-name&gt;action&lt;/servlet-name&gt;
<br />  &lt;servlet-class&gt;
<br />	org.apache.struts.action.ActionServlet<br />  &lt;/servlet-class&gt;
<br />&lt;init-param&gt;<br />  &lt;param-name&gt;config&lt;/param-name&gt;<strong>
<br /> </strong> &lt;param-value&gt;
<br />   <strong>  /WEB-INF/struts-config.xml,              
<br />     /WEB-INF/struts-admin.xml,
<br />     /WEB-INF/struts-config-forms.xml </strong><strong>        
<br /> </strong> &lt;/param-value&gt;<strong>
<br /></strong>&lt;/init-param&gt;<br />.....<br />&lt;servlet&gt;  <br />
</pre></div>

<div class="question">17.What is the directory structure of Struts
application?</div>
<div class="answer">The directory structure of Struts application
: <br />
<img
	src="http://www.developersbook.com/struts/images/Struts-Directory-Structure.png"
	alt="Struts Directory Structure" border="0" height="314" width="305" /></div>

<div class="question">18.What is the difference between session
scope and request scope when saving formbean ?</div>
<div class="answer">when the scope is <em>request</em>,the values
of formbean would be available for the current request.<br />
when the scope is <em>session</em>,the values of formbean would be
available throughout the session.</div>

19.What are the important tags of struts-config.xml ?
<div class="answer">The five important sections are: <img
	src="http://www.developersbook.com/struts/images/Struts-Config.png"
	alt="struts-config.xml" border="0" height="589" width="503" /></div>

<div class="question">20.What are the different kinds of actions
in Struts?</div>
<div class="answer">The different kinds of actions in Struts are:
<ol>
	<li>DispatchAction</li>
	<li>DownloadAction</li>
	<li>EventDispatchAction</li>
	<li>ForwardAction</li>
	<li>IncludeAction</li>
	<li>LocaleAction</li>
	<li>LookupDispatchAction</li>
	<li>MappingDispatchAction</li>
	<li>SwitchAction</li>
</ol>
</div>

<div class="question">21.What is DispatchAction?</div>
<div class="answer">The DispatchAction class is used to group
related actions into one class. Using this class, you can have a method
for each logical action compared than a single execute method. The
DispatchAction dispatches to one of the logical actions represented by
the methods. It picks a method to invoke based on an incoming request
parameter. The value of the incoming parameter is the name of the method
that the DispatchAction will invoke.</div>


<div class="question">22.How to use DispatchAction?</div>
<div class="answer">To use the DispatchAction, follow these steps
:
<ul>
	<li>Create a class that extends DispatchAction (instead of Action)
	</li>
	<li>In a new class, add a method for every function you need to
	perform on the service - The method has the same signature as the
	execute() method of an Action class.</li>
	<li>Do not override execute() method - Because DispatchAction
	class itself provides execute() method.</li>
	<li>Add an entry to struts-config.xml</li>
</ul>
</div>

<div class="question">23.What is the use of ForwardAction?</div>
<div class="answer">The ForwardAction class is useful when you're
trying to integrate Struts into an existing application that uses
Servlets to perform business logic functions. You can use this class to
take advantage of the Struts controller and its functionality, without
having to rewrite the existing Servlets. Use ForwardAction to forward a
request to another resource in your application, such as a Servlet that
already does business logic processing or even another JSP page. By
using this predefined action, you don't have to write your own Action
class. You just have to set up the struts-config file properly to use
ForwardAction.</div>

<div class="question">24.What is IncludeAction?</div>
<div class="answer">The IncludeAction class is useful when you
want to integrate Struts into an application that uses Servlets. Use the
IncludeAction class to include another resource in the response to the
request being processed.</div>

<div class="question">25.What is the difference between
ForwardAction and IncludeAction?</div>
<div class="answer">The difference is that you need to use the
IncludeAction only if the action is going to be included by another
action or jsp. Use ForwardAction to forward a request to another
resource in your application, such as a Servlet that already does
business logic processing or even another JSP page.</div>

<div class="question">26.What is LookupDispatchAction?</div>
<div class="answer">The LookupDispatchAction is a subclass of
DispatchAction. It does a reverse lookup on the resource bundle to get
the key and then gets the method whose name is associated with the key
into the Resource Bundle.</div>

<div class="question">27.What is the use of LookupDispatchAction?</div>
<div class="answer">LookupDispatchAction is useful if the method
name in the Action is not driven by its name in the front end, but by
the Locale independent key into the resource bundle. Since the key is
always the same, the LookupDispatchAction shields your application from
the side effects of I18N.</div>

<div class="question">28.What is difference between
LookupDispatchAction and DispatchAction?</div>
<div class="answer">The difference between LookupDispatchAction
and DispatchAction is that the actual method that gets called in
LookupDispatchAction is based on a lookup of a key value instead of
specifying the method name directly.</div>

<div class="question">29.What is SwitchAction?</div>
<div class="answer">The SwitchAction class provides a means to
switch from a resource in one module to another resource in a different
module. SwitchAction is useful only if you have multiple modules in your
Struts application. The SwitchAction class can be used as is, without
extending.</div>

<div class="question">30.What if &lt;action&gt; element has
&lt;forward&gt; declaration with same name as global forward?</div>
<div class="answer">In this case the global forward is not used.
Instead the &lt;action&gt; element's &lt;forward&gt; takes precendence.
</div>

<div class="question">31.What is DynaActionForm?</div>
<div class="answer">A specialized subclass of ActionForm that
allows the creation of form beans with dynamic sets of properties
(configured in configuration file), without requiring the developer to
create a Java class for each type of form bean.</div>

<div class="question">32.What are the steps need to use
DynaActionForm?</div>
<div class="answer">Using a DynaActionForm instead of a custom
subclass of ActionForm is relatively straightforward. You need to make
changes in two places:
<ul>
	<li>In struts-config.xml: change your &lt;form-bean&gt; to be an
	org.apache.struts.action.DynaActionForm instead of some subclass of
	ActionForm</li>
</ul>
<pre>&lt;form-bean name=&quot;loginForm&quot;type=&quot;org.apache.struts.action.DynaActionForm&quot; &gt;<br />    &lt;form-property name=&quot;userName&quot; type=&quot;java.lang.String&quot;/&gt;<br />    &lt;form-property name=&quot;password&quot; type=&quot;java.lang.String&quot; /&gt;<br />&lt;/form-bean&gt;</pre>
<br />
<ul>
	<li>In your Action subclass that uses your form bean:
	<ul>
		<li>import org.apache.struts.action.DynaActionForm</li>
		<li>downcast the ActionForm parameter in execute() to a
		DynaActionForm</li>
		<li>access the form fields with get(field) rather than getField()
		</li>
	</ul>
	</li>
</ul>
<br />
<pre>import javax.servlet.http.HttpServletRequest;<br />import javax.servlet.http.HttpServletResponse;<br />import org.apache.struts.action.Action;<br />import org.apache.struts.action.ActionForm;<br />import org.apache.struts.action.ActionForward;<br />import org.apache.struts.action.ActionMapping;<br />import org.apache.struts.action.ActionMessage;<br />import org.apache.struts.action.ActionMessages;<br /><br /><br /><strong>import org.apache.struts.action.DynaActionForm;</strong><br /><br />public class DynaActionFormExample extends Action {<br /> public ActionForward execute(ActionMapping mapping, ActionForm form,<br />   HttpServletRequest request, HttpServletResponse response)<br />            throws Exception {             <br />  <strong>DynaActionForm loginForm = (DynaActionForm) form;</strong><br />                ActionMessages errors = new ActionMessages();        <br />        if (((String) loginForm.get(&quot;userName&quot;)).equals(&quot;&quot;)) {<br />            errors.add(&quot;userName&quot;, new ActionMessage(<br />                            &quot;error.userName.required&quot;));<br />        }<br />        if (((String) loginForm.get(&quot;password&quot;)).equals(&quot;&quot;)) {<br />            errors.add(&quot;password&quot;, new ActionMessage(<br />                            &quot;error.password.required&quot;));<br />        }<br />        ...........</pre>
</div>

<div class="question">33.How to display validation errors on jsp
page?</div>
<div class="answer">&lt;html:errors/&gt; tag displays all the
errors. &lt;html:errors/&gt; iterates over ActionErrors request
attribute.</div>


<div class="question">34.What are the various Struts tag
libraries?</div>
<div class="answer">The various Struts tag libraries are:
<ul>
	<li>HTML Tags</li>
	<li>Bean Tags</li>
	<li>Logic Tags</li>
	<li>Template Tags</li>
	<li>Nested Tags</li>
	<li>Tiles Tags</li>
</ul>
</div>

<div class="question">35.What is the use of &lt;logic:iterate&gt;?</div>
<div class="answer">&lt;logic:iterate&gt; repeats the nested body
content of this tag over a specified collection. <br />
<pre>&lt;table border=1&gt;  <br />  &lt;logic:iterate id=&quot;<strong>customer</strong>&quot; name=&quot;customers&quot;&gt; <br />    &lt;tr&gt; <br />      &lt;td&gt;&lt;bean:write name=&quot;customer&quot; property=&quot;firstName&quot;/&gt;&lt;/td&gt; <br />      &lt;td&gt;&lt;bean:write name=&quot;customer&quot; property=&quot;lastName&quot;/&gt;&lt;/td&gt; <br />      &lt;td&gt;&lt;bean:write name=&quot;customer&quot; property=&quot;address&quot;/&gt;&lt;/td&gt; <br />   &lt;/tr&gt; <br />  &lt;/logic:iterate&gt; <br />&lt;/table&gt; <br />
</pre>
</div>


<div class="question">36.What are differences between
&lt;bean:message&gt; and &lt;bean:write&gt;</div>
<div class="answer"><strong>&lt;bean:message&gt;</strong>: is used
to retrive keyed values from resource bundle. It also supports the
ability to include parameters that can be substituted for defined
placeholders in the retrieved string. <pre>&lt;bean:message key=&quot;prompt.customer.firstname&quot;/&gt;</pre>
<strong>&lt;bean:write&gt;</strong>: is used to retrieve and print the
value of the bean property. &lt;bean:write&gt; has no body. <pre>&lt;bean:write name=&quot;customer&quot; property=&quot;firstName&quot;/&gt;</pre>
</div>

<div class="question">37.How the exceptions are handled in struts?</div>
<div class="answer">Exceptions in Struts are handled in two ways:
<ul>
	<li><strong>Programmatic exception handling</strong> :</li>
	Explicit try/catch blocks in any code that can throw exception. It
	works well when custom value (i.e., of variable) needed when error
	occurs.
	<br />
	<br />
	<li><strong>Declarative exception handling</strong> :You can
	either define &lt;global-exceptions&gt; handling tags in your
	struts-config.xml or define the exception handling tags within
	&lt;action&gt;&lt;/action&gt; tag. It works well when custom page
	needed when error occurs. This approach applies only to exceptions
	thrown by Actions.</li>
</ul>
<pre>&lt;global-exceptions&gt;<br /> &lt;exception key=&quot;some.key&quot;<br />            type=&quot;java.lang.NullPointerException&quot;<br />            path=&quot;/WEB-INF/errors/null.jsp&quot;/&gt;<br />&lt;/global-exceptions&gt;</pre>
<p align="center"><strong>or</strong></p>
<pre>&lt;exception key=&quot;some.key&quot; <br />           type=&quot;package.SomeException&quot; <br />           path=&quot;/WEB-INF/somepage.jsp&quot;/&gt;</pre>
</div>

<div class="question">38.What is difference between ActionForm and
DynaActionForm?</div>
<div class="answer">
<ul>
	<li>An ActionForm represents an HTML form that the user interacts
	with over one or more pages. You will provide properties to hold the
	state of the form with getters and setters to access them. Whereas,
	using DynaActionForm there is no need of providing properties to hold
	the state. Instead these properties and their type are declared in the
	struts-config.xml<br />
	</li>
	<li>The DynaActionForm bloats up the Struts config file with the
	xml based definition. This gets annoying as the Struts Config file grow
	larger.<br />
	</li>
	<li>The DynaActionForm is not strongly typed as the ActionForm.
	This means there is no compile time checking for the form fields.
	Detecting them at runtime is painful and makes you go through
	redeployment.<br />
	</li>
	<li>ActionForm can be cleanly organized in packages as against the
	flat organization in the Struts Config file.<br />
	</li>
	<li>ActionForm were designed to act as a Firewall between HTTP and
	the Action classes, i.e. isolate and encapsulate the HTTP request
	parameters from direct use in Actions. With DynaActionForm, the
	property access is no different than using request.getParameter( .. ).<br />
	</li>
	<li>DynaActionForm construction at runtime requires a lot of Java
	Reflection (Introspection) machinery that can be avoided.</li>
</ul>
</div>

<div class="question">39.How can we make message resources
definitions file available to the Struts framework environment?</div>
<div class="answer">We can make message resources definitions file
(properties file) available to Struts framework environment by adding
this file to struts-config.xml. <pre>&lt;message-resources parameter=&quot;com.login.struts.ApplicationResources&quot;/&gt;
</pre></div>

<div class="question">40.What is the life cycle of ActionForm?</div>
<div class="answer">The lifecycle of ActionForm invoked by the
RequestProcessor is as follows:
<ul>
	<li>Retrieve or Create Form Bean associated with Action</li>
	<li>&quot;Store&quot; FormBean in appropriate scope (request or
	session)</li>
	<li>Reset the properties of the FormBean</li>
	<li>Populate the properties of the FormBean</li>
	<li>Validate the properties of the FormBean</li>
	<li>Pass FormBean to Action</li>
</ul>
</div>

<p>&nbsp;</p>


<p> <strong><u>Relate Links:</u></strong></p>
<p><a href="http://www.javaworkspace.com/hibernate/firstHibernateProgram.do">First
Hibernate Progarm</a><br />
<a href="http://www.javaworkspace.com/hibernate/manyToOneAssociation.do">Many
To One Association</a><br />
<a href="http://www.javaworkspace.com/hibernate/oneToOneAssociation.do">One To
One Association</a><br />
<a href="http://www.javaworkspace.com/hibernate/oneToManyAssociation.do">One
To Many Association</a><br />
<a href="http://www.javaworkspace.com/hibernate/manyToManyAssociation.do">Many
To Many Association</a><br />
<a href="http://www.javaworkspace.com/hibernate/collectionTypesInHibernate.do">Collection
Types In Hibernate</a></p>
</div>