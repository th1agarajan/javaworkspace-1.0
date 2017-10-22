<div id="tutorialLinks">

<p align="right"><strong>Updated On: Monday, September 07,
2009 </strong></p>

<p align="right"><strong>Created On: Monday, September 07,
2009</strong></p>
<h1>Java Interview Questions</h1>

<h3>Exceptions</h3>

<h1>Coming Soon...</h1>

<h1>This page is under construction and we are constantly trying to
improve it.</h1>

<div class="question">1. What are the Collection types in
Hibernate?</div>
<div class="answer">
<ol>
	<li type="i">Bag</li>
	<li type="i">Set</li>
	<li type="i">List</li>
	<li type="i">Array</li>
	<li type="i">Map</li>
</ol>
</div>

<div class="question">2. What is the differnece between load() and
get() methods? When we use both of them?</div>

<div class="answer">
<p><strong><u>load()</u></strong></p>
<ol>
	<li type="i">Use load() method when you are sure the object
	exists.</li>
	<li type="i">It throw an exception if the unique id is not found
	in the database.</li>
	<li type="i">It just returns a proxy by default and database won't
	be hit until the proxy is first invoked.</li>
</ol>
<p><strong><u>get()</u></strong></p>
<ol>
	<li type="i">Use get() method when you are not sure that the
	object exists.</li>
	<li type="i">It returns null if the unique id is not found in the
	database.</li>
	<li type="i">get() will hit the database immediately.</li>
</ol>
</div>

<p><strong><u>Relate Links:</u></strong></p>
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