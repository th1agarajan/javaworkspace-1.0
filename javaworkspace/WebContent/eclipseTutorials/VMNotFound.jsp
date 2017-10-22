
<h2>Specified VM install not found: type Standard VM, name jre7</h2>

<div class="tutorialImage">
	<img src="eclipseTutorials/images/VMNotFound/0VMNotFound.png"
		alt="Specified VM install not found - www.javaworkspace.com" />
</div>

<p>Have you ever encountered this problem in Eclipse while building
	an ant file? Then this article is for you. Deleting and recreating the
	workspace is not the solution. There is an easy solution to fix this
	issue without recreating the workspace.</p>

<p>By default eclipse will automatically update the Installed JRE
	location with place where you have your jre installed i.e. normally it
	should be something like</p>

<table>
	<tr>
		<td>JRE home:</td>
		<td>D:\Program Files (x86)\Java\jre7</td>
	</tr>
	<tr>
		<td>JRE name:</td>
		<td>jre7</td>
	</tr>
</table>

<div id="tutorialLinks">

	<div class="tutorialImage">
		<img src="eclipseTutorials/images/VMNotFound/1VMNotFound.png"
			width="942"
			alt="Specified VM install not found - www.javaworkspace.com" />
	</div>

	<p>
		When you add <b>build.xml</b> in ant view and build the project,
		Eclipse will create a <b>.launch</b> file in <b>yourworkspace\.metadata\.plugins\org.eclipse.debug.core\.launches\</b>
		folder
	</p>

	<p>It should look something like this</p>
	<p>
		<strong>C:\JavaWorkspace\Tutorials\workspace\.metadata\.plugins\org.eclipse.debug.core\.launches\
			PaginationInServlets build.xml.launch</strong><br>
	<p>
		You would encounter <strong>"Specified VM install not found"</strong>
		error when you update the JRE home and JRE name location with the jdk
		path after the creation of .launch file.
	</p>
	<div class="tutorialImage">
		<img src="eclipseTutorials/images/VMNotFound/2VMNotFound.png"
			width="942"
			alt="Specified VM install not found - www.javaworkspace.com" />
	</div>

	<table>
		<tr>
			<td>JRE home:</td>
			<td>D:\Program Files (x86)\Java\jdk1.7.0_15</td>
		</tr>
		<tr>
			<td>JRE name:</td>
			<td>jdk1.7.0_15</td>
		</tr>
	</table>


	<p>
		The <strong>.launch</strong> file is just an xml file with
		configurations
	</p>


	<p>Contents of .launch file</p>

	<pre class="brush: xml">
	<stringAttribute key="org.eclipse.jdt.launching.VM_INSTALL_NAME"
			value=" jre7" />
	</pre>

	<p>Eclipse won't update the .launch file when you update the JRE
		name, which creates the problem.</p>

	<p>The problem can be resolved in 2 ways.</p>

	<h4>Let's see the first method</h4>

	<h4>Specified VM install not found: type Standard VM, name jre7</h4>
	<ol>
		<li>The above error message clearly states that the JRE name in
			Window -> Preferences -> Installed JREs -> Edit.., is not matched
			with the .launch file.</li>
		<li>To resolve this, just navigate to Window -> Preferences ->
			Installed JREs -> Edit.. Change the JRE name to jre7 (you will get
			the name in Problem Occurred popup - refer first image).</li>
		<li>JRE name might be different for you. You can verify the same
			by checking the .launch file (Sometimes you may find many .launch
			files. Select the one which has your project name)</li>
		<li>After editing it should look like

			<table>
				<tr>
					<td>JRE home:</td>
					<td>D:\Program Files (x86)\Java\jdk1.7.0_15</td>
				</tr>
				<tr>
					<td>JRE name:</td>
					<td>jre7</td>
				</tr>
			</table> (Note: It is not necessary to update the JRE home value) Now run the
			build file. The issue will be resolved.
		</li>
	</ol>

	<h4>Second method</h4>
	<ol>
		<li>In this method we are going to update the .launch file
			instead of updating the JRE name.</li>
		<li>Find the line <stringAttribute
				key="org.eclipse.jdt.launching.VM_INSTALL_NAME" value=" jre7" /> in
			.launch file (Sometimes you may find many .launch files. Select the
			one which has your project name).
		</li>

		<li>Update the value attribute with JRE name from Window ->
			Preferences -> Installed JREs -> Edit..,</li>
		<li>It should look something like <strong>&lt;stringAttribute
				key="org.eclipse.jdt.launching.VM_INSTALL_NAME" value=" jdk1.7.0_15"
				/&gt;</strong></li>
		<li>Restart the Eclipse and run the build file. The issue will be
			resolved.</li>
	</ol>

	<div class="tutorialImage">
		<img src="eclipseTutorials/images/VMNotFound/3VMNotFound.png"
			width="942"
			alt="Specified VM install not found - www.javaworkspace.com" />
	</div>

	<div class="tutorialImage">
		<img src="eclipseTutorials/images/VMNotFound/4VMNotFound.png"
			width="942"
			alt="Specified VM install not found - www.javaworkspace.com" />
	</div>

	<div class="tutorialImage">
		<img src="eclipseTutorials/images/VMNotFound/5VMNotFound.png"
			width="942"
			alt="Specified VM install not found - www.javaworkspace.com" />
	</div>

	<p>
	<p>Worst case you can delete the particular .launch (Debug
		configuration will also be deleted) file and restart the Eclipse to
		fix the issue.</p>


	<p>
		Still the issue is not resolved? Shoot a mail to <a
			href="mailto:javaworkspace@gmail.com">javaworkspace@gmail.com</a>. We
		are here to help you.
	</p>
</div>