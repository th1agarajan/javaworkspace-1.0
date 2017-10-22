<h2>Flyweight Pattern</h2>

<p>You can find nice definitions from various websites. So I'm not
	going concentrate on the definition of Flyweight pattern.</p>

<p>Flyweight pattern is primarily used to reduce the number of
	objects created, to decrease memory footprint and increase performance.
	This type of design pattern comes under structural pattern as this
	pattern provides ways to decrease objects count thus improving
	application required objects structure.</p>
<p>Flyweight pattern try to reuse already existing similar kind
	objects by storing them and create new object when no matching object
	is found.</p>
<p>To illustrate this, imagine we are going to develop a simple word
	processor application. To make it simple we limit the features of our
	word processor application.</p>
<p>Our word processor application will have the following
	limitations.</p>
<ul>
	<li>Can only type alphabet A, B, C, D and E with single font</li>
	<li>You have option to change the font color and font size</li>
</ul>

<p>Let's start</p>
<p>
	We're going to create a <strong>KeyPad</strong> interface and a
	concrete class <strong>TypeFace</strong> implementing the <strong>KeyPad</strong>
	interface. Then we gonna create a Factory class called <strong>TypeFaceFactory</strong>.
</p>
<p>
	<strong>TypeFaceFactory</strong> is responsible for creating objects of
	type <strong>TypeFace</strong>. It is not a good idea to create an
	object for each and every letter typed in our word processor tool. We
	need to find a way to reduce the number of objects created. Reuse is
	the best way to reduce the number of objects created.
</p>
<p>How to reuse the objects? Let's explore</p>

<ul>
	<li>Intrinsic - Intrinsic states are the things that are constants
		and are stored in the memory.</li>
	<li>Extrinsic - Extrinsic states are the things that are not
		constants and need to be calculated on the fly, and are therefore not
		stored in the memory.</li>
</ul>

<p>First thing is to identify the Intrinsic and Extrinsic properties
	in our word processor tool.</p>
<ul>
	<li>Intrinsic - Shape of the alphabets won't change.</li>
	<li>Extrinsic - Font size and font color can vary.</li>
</ul>

<p>
	Here the shape property of alphabet doesn't change (At least for our
	requirement). Take the intrinsic property (Here in this case it is
	alphabets from A to E) and pass that as an argument to <strong>TypeFace</strong>'s
	constructor and create object. Then store the created object in a <strong>HashMap</strong>.
	The key to <strong>HashMap</strong> is the alphabet for which the
	object is created. Whenever a request comes to create an object of type
	<strong>TypeFace</strong>, <strong>TypeFaceFactory</strong> checks the
	<strong>HashMap</strong> by using the corresponding alphabet as a key,
	if object of type is found, then the object from the map is returned
	otherwise a new object is created and stored in <strong>HashMap</strong>
	for future use. After getting the object from <strong>HashMap</strong>
	set the extrinsic properties (font size, font color) using setter
	method. This way you can reduce the number of objects created.
	Regardless the number of letters type with different font sizes and
	font colors only 5 (one object for one letter) objects are created.
	WordProcessor, our demo class will use <strong>.html</strong> file to
	display the results in the location <strong>C:/flyWeightPattern.html</strong>.
</p>
<h3>Step: 1</h3>

<pre class="brush: java">
/**
 * KeyPad.java
 */
package com.test;

/**
 * @author www.javaworkspace.com
 * 
 */
public interface KeyPad {
	public String draw();
}
</pre>
<h3>Step: 2</h3>


<pre class="brush: java">
/**
 * TypeFace.java
 */
package com.test;

/**
 * @author www.javaworkspace.com
 * 
 */
public class TypeFace implements KeyPad {

	private String fontColor;
	private int fontSize;
	private Character letter;

	public TypeFace(Character letter) {
		this.letter = letter;
	}

	public void setFontColor(String fontColor) {
		this.fontColor = fontColor;
	}

	public void setFontSize(int fontSize) {
		this.fontSize = fontSize;
	}

	@Override
	public String draw() {
		StringBuffer stringBuffer = new StringBuffer();
		stringBuffer.append("&lt;td style='font-size:" + fontSize
				+ "px; color: " + fontColor + ";'&gt;");
		stringBuffer.append(letter);
		stringBuffer.append("&lt;/td&gt;");
		return stringBuffer.toString();
	}
}
</pre>
<h3>Step: 3</h3>


<pre class="brush: java">
/**
 * TypeFaceFactory.java
 */
package com.test;

import java.util.HashMap;
import java.lang.Character;

/**
 * @author www.javaworkspace.com
 * 
 */
public class TypeFaceFactory {
	public static int count = 0;
	public static int objectCount = 0;
	public static final HashMap&lt;Character, KeyPad&gt; HASH_MAP = new HashMap&lt;Character, KeyPad&gt;();

	public static KeyPad getLetter(Character letter) {
		TypeFace typeFace = (TypeFace) HASH_MAP.get(letter);
		if (typeFace == null) {
			typeFace = new TypeFace(letter);
			HASH_MAP.put(letter, typeFace);
			objectCount = objectCount + 1;
		}
		count = count + 1;
		return typeFace;
	}
}
</pre>
<h3>Step: 4</h3>
<pre class="brush: java">
/**
 * WordProcessor.java
 */
package com.test;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Random;

/**
 * @author www.javaworkspace.com
 * 
 */
public class WordProcessor {

	private static final String FILE_NAME = "C:/flyWeightPattern.html";
	private static final String colors[] = { "red", "green", "orange", "blue",
			"black" };
	private static final Character alphabets[] = { 'A', 'B', 'C', 'D', 'E' };
	private static final StringBuffer output = new StringBuffer();

	public static void main(String[] args) {
		WordProcessor notePad = new WordProcessor();
		notePad.typeFace();
	}

	public void typeFace() {
		for (int i = 0; i < 20; ++i) {
			TypeFace ob = (TypeFace) TypeFaceFactory
					.getLetter(getRandomAlphabet());
			ob.setFontColor(getRandomColor());
			ob.setFontSize(getRandomFontSize());
			String temp = ob.draw();
			preFormat(temp);
		}

		if (isCreateFile(format(output.toString()))) {
			System.out.println("Check the output at the location " + FILE_NAME);
		} else {
			System.out.println("Failed to create output");
		}
	}

	private void preFormat(String temp) {
		output.append(temp);
		output.append("\n");
	}

	private String format(String input) {
		StringBuffer stringBuffer = new StringBuffer();
		stringBuffer.append("&lt;html&gt;");
		stringBuffer.append("\n");
		stringBuffer.append("&lt;title&gt;");
		stringBuffer.append("\n");
		stringBuffer
				.append("Fly Weight Pattern Example - www.javaworkspace.com");
		stringBuffer.append("\n");
		stringBuffer.append("&lt;/title&gt;");
		stringBuffer.append("\n");
		stringBuffer.append("&lt;body&gt;");
		stringBuffer.append("\n");
		stringBuffer.append("&lt;table&gt;");
		stringBuffer.append("\n");
		stringBuffer.append("&lt;tr&gt;");
		stringBuffer.append("\n");
		stringBuffer.append(input);
		stringBuffer.append("&lt;/tr&gt;");
		stringBuffer.append("\n");
		stringBuffer.append("&lt;tr&gt;");
		stringBuffer.append("\n");
		stringBuffer.append("&lt;td colspan='20'&gt;Number of letters printed: "
				+ TypeFaceFactory.count + "&lt;/td&gt;");
		stringBuffer.append("&lt;/tr&gt;");
		stringBuffer.append("\n");
		stringBuffer.append("&lt;tr&gt;");
		stringBuffer.append("\n");
		stringBuffer
				.append("&lt;td colspan='20'&gt;Number of TypeFace Objects created: "
						+ TypeFaceFactory.objectCount
						+ " - For each unique alphabet one oject is created.&lt;/td&gt;");
		stringBuffer.append("&lt;/tr&gt;");
		stringBuffer.append("\n");
		stringBuffer.append("&lt;/table&gt;");
		stringBuffer.append("\n");
		stringBuffer.append("&lt;/body&gt;");
		stringBuffer.append("\n");
		stringBuffer.append("&lt;/html&gt;");
		return stringBuffer.toString();
	}

	private String getRandomColor() {
		return colors[(int) (Math.random() * colors.length)];
	}

	private Character getRandomAlphabet() {
		return alphabets[(int) (Math.random() * alphabets.length)];
	}

	private int getRandomFontSize() {
		return new Random().nextInt(60) + 10;
	}

	private boolean isCreateFile(String content) {
		boolean status = false;
		try {
			File file = new File(FILE_NAME);
			// if file doesnt exists, then create it
			if (!file.exists()) {
				file.createNewFile();
			}
			FileWriter fileWriter = new FileWriter(file.getAbsoluteFile());
			BufferedWriter bufferedWriter = new BufferedWriter(fileWriter);
			bufferedWriter.write(content);
			bufferedWriter.close();
			status = true;
		} catch (IOException e) {
			e.printStackTrace();
		}
		return status;
	}
}
</pre>

<h2>Output</h2>
<div class="tutorialContent">
	<img src="tutorials/designPatterns/images/FlyweightPattern.png"
		alt="Flyweight Pattern - www.javaworkspace.com" />
</div>

<h2>Download Source Code</h2>
<a href="tutorials/designPatterns/downloads/FlyWeightPattern.zip"
	target="_blank" class="downloadLink">FlyWeightPattern.zip</a>
<p>No additional Jar files are required to run the sample program</p>