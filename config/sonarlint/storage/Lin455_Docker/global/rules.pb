
˝
squid:S1135Ì
squidS1135Track uses of "TODO" tags"INFO*java:©<p><code>TODO</code> tags are commonly used to mark places where some more code is required, but which the developer wants to implement later.</p>
<p>Sometimes the developer will not have the time or will simply forget to get back to that tag.</p>
<p>This rule is meant to track those tags and to ensure that they do not go unnoticed.</p>
<h2>Noncompliant Code Example</h2>
<pre>
void doSomething() {
  // TODO
}
</pre>
<h2>See</h2>
<ul>
  <li> <a href="http://cwe.mitre.org/data/definitions/546.html">MITRE, CWE-546</a> - Suspicious Comment </li>
</ul>Z
CODE_SMELL
·
squid:S1133—
squidS1133!Deprecated code should be removed"INFO*java:Ö<p>This rule is meant to be used as a way to track code which is marked as being deprecated. Deprecated code should eventually be removed.</p>
<h2>Noncompliant Code Example</h2>
<pre>
class Foo {
  /**
   * @deprecated
   */
  public void foo() {    // Noncompliant
  }

  @Deprecated            // Noncompliant
  public void bar() {
  }

  public void baz() {    // Compliant
  }
}
</pre>Z
CODE_SMELL
ß
squid:S3688ó
squidS3688 Track uses of disallowed classes"INFO*java: <p>This rule allows banning certain classes.</p>
<h2>Noncompliant Code Example</h2>
<p>Given parameters:</p>
<ul>
  <li> className:java.lang.String </li>
</ul>
<pre>
String name;  // Noncompliant
</pre>@Z
CODE_SMELL
‡

squid:S923—
squidS923CFunctions should not be defined with a variable number of arguments"INFO*java:‰<p>As stated per effective java : </p>
<blockquote>
  <p>Varargs methods are a convenient way to define methods that require a variable number of arguments, but they should not be overused. They can
  produce confusing results if used inappropriately.</p>
</blockquote>
<h2>Noncompliant Code Example</h2>
<pre>
void fun ( String... strings )	// Noncompliant
{
  // ...
}
</pre>
<h2>See</h2>
<ul>
  <li> MISRA C:2004, 16.1 - Functions shall not be defined with a variable number of arguments. </li>
  <li> MISRA C++:2008, 8-4-1 - Functions shall not be defined using the ellipsis notation. </li>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/i4CW">CERT, DCL50-CPP.</a> - Do not define a C-style variadic function </li>
</ul>Z
CODE_SMELL
Ô
squid:S1309ﬂ
squidS1309-Track uses of "@SuppressWarnings" annotations"INFO*java:á<p>This rule allows you to track the usage of the <code>@SuppressWarnings</code> mechanism.</p>
<h2>Noncompliant Code Example</h2>
<p>With a parameter value of "unused" :</p>
<pre>
@SuppressWarnings("unused")
@SuppressWarnings("unchecked")  // Noncompliant
</pre>Z
CODE_SMELL
∑
	xml:S1135©
xmlS1135Track uses of "TODO" tags"INFO*xml:Ë<p><code>TODO</code> tags are commonly used to mark places where some more code is required, but which the developer wants to implement later.</p>
<p>Sometimes the developer will not have the time or will simply forget to get back to that tag.</p>
<p>This rule is meant to track those tags and to ensure that they do not go unnoticed.</p>
<h2>Noncompliant Code Example</h2>
<pre>
&lt;!-- TODO Drop this dependency --&gt;
&lt;dependency&gt;
  &lt;groupId&gt;org.apache.commons&lt;/groupId&gt;
  &lt;artifactId&gt;commons-lang3&lt;/artifactId&gt;
  &lt;version&gt;3.8.1&lt;/version&gt;
&lt;/dependency&gt;
</pre>
<h2>See</h2>
<ul>
  <li> <a href="http://cwe.mitre.org/data/definitions/546.html">MITRE, CWE-546</a> - Suspicious Comment </li>
</ul>Z
CODE_SMELL
±
squid:S00116†
squidS001162Field names should comply with a naming convention"MINOR*java2S116:ª<p>Sharing some naming conventions is a key point to make it possible for a team to efficiently collaborate. This rule allows to check that field
names match a provided regular expression.</p>
<h2>Noncompliant Code Example</h2>
<p>With the default regular expression <code>^[a-z][a-zA-Z0-9]*$</code>:</p>
<pre>
class MyClass {
   private int my_field;
}
</pre>
<h2>Compliant Solution</h2>
<pre>
class MyClass {
   private int myField;
}
</pre>Z
CODE_SMELL
è
squid:S00113˛
squidS001130Files should contain an empty newline at the end"MINOR*java2S113:õ<p>Some tools work better when files end with an empty line.</p>
<p>This rule simply generates an issue if it is missing.</p>
<p>For example, a Git diff looks like this if the empty line is missing at the end of the file:</p>
<pre>
+class Test {
+}
\ No newline at end of file
</pre>Z
CODE_SMELL
æ
squid:S00114≠
squidS001146Interface names should comply with a naming convention"MINOR*java2S114:ƒ<p>Sharing some naming conventions is a key point to make it possible for a team to efficiently collaborate. This rule allows to check that all
interface names match a provided regular expression.</p>
<h2>Noncompliant Code Example</h2>
<p>With the default regular expression <code>^[A-Z][a-zA-Z0-9]*$</code>:</p>
<pre>
public interface myInterface {...} // Noncompliant
</pre>
<h2>Compliant Solution</h2>
<pre>
public interface MyInterface {...}
</pre>Z
CODE_SMELL
÷
squid:S2221∆
squidS2221D"Exception" should not be caught when not required by called methods"MINOR*java:÷
<p>Catching <code>Exception</code> seems like an efficient way to handle multiple possible exceptions. Unfortunately, it traps all exception types,
both checked and runtime exceptions, thereby casting too broad a net. Indeed, was it really the intention of developers to also catch runtime
exceptions? To prevent any misunderstanding, if both checked and runtime exceptions are really expected to be caught, they should be explicitly listed
in the <code>catch</code> clause.</p>
<p>This rule raises an issue if <code>Exception</code> is caught when it is not explicitly thrown by a method in the <code>try</code> block.</p>
<h2>Noncompliant Code Example</h2>
<pre>
try {
  // do something that might throw an UnsupportedDataTypeException or UnsupportedEncodingException
} catch (Exception e) { // Noncompliant
  // log exception ...
}
</pre>
<h2>Compliant Solution</h2>
<pre>
try {
  // do something
} catch (UnsupportedEncodingException|UnsupportedDataTypeException|RuntimeException e) {
  // log exception ...
}
</pre>
<p>or if runtime exceptions should not be caught:</p>
<pre>
try {
  // do something
} catch (UnsupportedEncodingException|UnsupportedDataTypeException e) {
  // log exception ...
}
</pre>
<h2>See</h2>
<ul>
  <li> <a href="http://cwe.mitre.org/data/definitions/396.html">MITRE, CWE-396</a> - Declaration of Catch for Generic Exception </li>
</ul>Z
CODE_SMELL
ø
squid:S00119Æ
squidS00119;Type parameter names should comply with a naming convention"MINOR*java2S119:¿<p>Shared naming conventions make it possible for a team to collaborate efficiently. Following the established convention of single-letter type
parameter names helps users and maintainers of your code quickly see the difference between a type parameter and a poorly named class.</p>
<p>This rule check that all type parameter names match a provided regular expression. The following code snippets use the default regular
expression.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public class MyClass&lt;TYPE&gt; { // Noncompliant
  &lt;TYPE&gt; void method(TYPE t) { // Noncompliant
  }
}
</pre>
<h2>Compliant Solution</h2>
<pre>
public class MyClass&lt;T&gt; {
  &lt;T&gt; void method(T t) {
  }
}
</pre>Z
CODE_SMELL
Î
squid:S1132€
squidS1132MStrings literals should be placed on the left side when checking for equality"MINOR*java:‚<p>It is preferable to place string literals on the left-hand side of an <code>equals()</code> or <code>equalsIgnoreCase()</code> method call.</p>
<p>This prevents null pointer exceptions from being raised, as a string literal can never be null by definition.</p>
<h2>Noncompliant Code Example</h2>
<pre>
String myString = null;

System.out.println("Equal? " + myString.equals("foo"));                        // Noncompliant; will raise a NPE
System.out.println("Equal? " + (myString != null &amp;&amp; myString.equals("foo")));  // Noncompliant; null check could be removed
</pre>
<h2>Compliant Solution</h2>
<pre>
System.out.println("Equal?" + "foo".equals(myString));                         // properly deals with the null case
</pre>Z
CODE_SMELL
â
squid:S00117¯
squidS00117PLocal variable and method parameter names should comply with a naming convention"MINOR*java2S117:ı<p>Shared naming conventions allow teams to collaborate effectively. This rule raises an issue when a local variable or function parameter name does
not match the provided regular expression.</p>
<h2>Noncompliant Code Example</h2>
<p>With the default regular expression <code>^[a-z][a-zA-Z0-9]*$</code>:</p>
<pre>
public void doSomething(int my_param) {
  int LOCAL;
  ...
}
</pre>
<h2>Compliant Solution</h2>
<pre>
public void doSomething(int myParam) {
  int local;
  ...
}
</pre>
<h2>Exceptions</h2>
<p>Loop counters are ignored by this rule.</p>
<pre>
for (int i_1 = 0; i_1 &lt; limit; i_1++) {  // Compliant
  // ...
}
</pre>
<p>as well as one-character <code>catch</code> variables: </p>
<pre>
try {
//...
} catch (Exception e) { // Compliant
}
</pre>Z
CODE_SMELL
ò
squid:S00118á
squidS00118;Abstract class names should comply with a naming convention"MINOR*java2S118:ô<p>Sharing some naming conventions is a key point to make it possible for a team to efficiently collaborate. This rule allows to check that all
<code>abstract</code> class names match a provided regular expression. If a non-abstract class match the regular expression, an issue is raised to
suggest to either make it abstract or to rename it.</p>
<h2>Noncompliant Code Example</h2>
<p>With the default regular expression: <code>^Abstract[A-Z][a-zA-Z0-9]*$</code>:</p>
<pre>
abstract class MyClass { // Noncompliant
}

class AbstractLikeClass { // Noncompliant
}
</pre>
<h2>Compliant Solution</h2>
<pre>
abstract class MyAbstractClass {
}

class LikeClass {
}
</pre>Z
CODE_SMELL
ƒ
squid:S3437¥
squidS3437,Value-based objects should not be serialized"MINOR*java:‹<p>According to the documentation,</p>
<blockquote>
  A program may produce unpredictable results if it attempts to distinguish two references to equal values of a value-based class, whether directly
  via reference equality or indirectly via an appeal to synchronization, identity hashing, serialization...
</blockquote>
<p>For example (credit to Brian Goetz), imagine Foo is a value-based class:</p>
<pre>
Foo[] arr = new Foo[2];
arr[0] = new Foo(0);
arr[1] = new Foo(0);
</pre>
<p>Serialization promises that on deserialization of arr, elements 0 and 1 will not be aliased. Similarly, in:</p>
<pre>
Foo[] arr = new Foo[2];
arr[0] = new Foo(0);
arr[1] = arr[0];
</pre>
<p>Serialization promises that on deserialization of <code>arr</code>, elements 0 and 1 <strong>will</strong> be aliased.</p>
<p>While these promises are coincidentally fulfilled in current implementations of Java, that is not guaranteed in the future, particularly when true
value types are introduced in the language.</p>
<p>This rule raises an issue when a <code>Serializable</code> class defines a non-transient, non-static field field whose type is a known serializable
value-based class. Known serializable value-based classes are: all the classes in the <code>java.time</code> package except <code>Clock</code>; the
date classes for alternate calendars: <code>HijrahDate</code>, <code>JapaneseDate</code>, <code>MinguoDate</code>, <code>ThaiBuddhistDate</code>.</p>
<h2>Noncompliant Code Example</h2>
<pre>
class MyClass implements Serializable {
  private HijrahDate date;  // Noncompliant; mark this transient
  // ...
}
</pre>
<h2>Compliant Solution</h2>
<pre>
class MyClass implements Serializable {
  private transient HijrahDate date;
  // ...
}
</pre>
<h2>See</h2>
<ul>
  <li> <a href="http://docs.oracle.com/javase/8/docs/api/java/lang/doc-files/ValueBased.html">Value-based classes</a> </li>
</ul>Z
CODE_SMELL
¯
squid:S00120Á
squidS001204Package names should comply with a naming convention"MINOR*java2S120:Ä<p>Shared coding conventions allow teams to collaborate efficiently. This rule checks that all package names match a provided regular expression.</p>
<h2>Noncompliant Code Example</h2>
<p>With the default regular expression <code>^[a-z_]+(\.[a-z_][a-z0-9_]*)*$</code>:</p>
<pre>
package org.exAmple; // Noncompliant
</pre>
<h2>Compliant Solution</h2>
<pre>
package org.example;
</pre>Z
CODE_SMELL
∑	
squid:S1148ß	
squidS11483Throwable.printStackTrace(...) should not be called"MINOR*java:≈<p><code>Throwable.printStackTrace(...)</code> prints a <code>Throwable</code> and its stack trace to some stream. By default that stream
<code>System.Err</code>, which could inadvertently expose sensitive information.</p>
<p>Loggers should be used instead to print <code>Throwable</code>s, as they have many advantages:</p>
<ul>
  <li> Users are able to easily retrieve the logs. </li>
  <li> The format of log messages is uniform and allow users to browse the logs easily. </li>
</ul>
<p>This rule raises an issue when <code>printStackTrace</code> is used without arguments, i.e. when the stack trace is printed to the default
stream.</p>
<h2>Noncompliant Code Example</h2>
<pre>
try {
  /* ... */
} catch(Exception e) {
  e.printStackTrace();        // Noncompliant
}
</pre>
<h2>Compliant Solution</h2>
<pre>
try {
  /* ... */
} catch(Exception e) {
  LOGGER.log("context", e);
}
</pre>
<h2>See</h2>
<ul>
  <li> <a href="http://cwe.mitre.org/data/definitions/489.html">MITRE, CWE-489</a> - Leftover Debug Code </li>
  <li> OWASP Top 10 2017 Category A3 - Sensitive Data Exposure </li>
</ul>ZVULNERABILITY
•
squid:S00105î
squidS00105(Tabulation characters should not be used"MINOR*java2S105:π<p>Developers should not need to configure the tab width of their text editors in order to be able to read source code.</p>
<p>So the use of the tabulation character must be banned.</p>Z
CODE_SMELL
ﬂ
squid:S1264œ
squidS12645A "while" loop should be used instead of a "for" loop"MINOR*java:Ó<p>When only the condition expression is defined in a <code>for</code> loop, and the initialization and increment expressions are missing, a
<code>while</code> loop should be used instead to increase readability. </p>
<h2>Noncompliant Code Example</h2>
<pre>
for (;condition;) { /*...*/ }
</pre>
<h2>Compliant Solution</h2>
<pre>
while (condition) { /*...*/ }
</pre>Z
CODE_SMELL
¡
squid:S2203±
squidS2203>"collect" should be used with "Streams" instead of "list::add""MINOR*java:«<p>While you can use either <code>forEach(list::add)</code> or <code>collect</code> with a <code>Stream</code>, <code>collect</code> is by far the
better choice because it's automatically thread-safe and parallellizable. </p>
<h2>Noncompliant Code Example</h2>
<pre>
List&lt;String&gt; bookNames = new ArrayList&lt;&gt;();
books.stream().filter(book -&gt; book.getIsbn().startsWith("0"))
                .map(Book::getTitle)
                .forEach(bookNames::add);  // Noncompliant
</pre>
<h2>Compliant Solution</h2>
<pre>
List&lt;String&gt; bookNames = books.stream().filter(book -&gt; book.getIsbn().startsWith("0"))
                .map(Book::getTitle)
                .collect(Collectors.toList());
</pre>Z
CODE_SMELL
Ç

squid:S2325Ú	
squidS2325D"private" methods that don't access instance data should be "static""MINOR*java:Ç	<p><code>private</code> methods that don't access instance data can be <code>static</code> to prevent any misunderstanding about the contract of the
method.</p>
<h2>Noncompliant Code Example</h2>
<pre>
class Utilities {
  private static String magicWord = "magic";

  private String getMagicWord() { // Noncompliant
    return magicWord;
  }

  private void setMagicWord(String value) { // Noncompliant
    magicWord = value;
  }

}
</pre>
<h2>Compliant Solution</h2>
<pre>
class Utilities {
  private static String magicWord = "magic";

  private static String getMagicWord() {
    return magicWord;
  }

  private static void setMagicWord(String value) {
    magicWord = value;
  }

}
</pre>
<h2>Exceptions</h2>
<p>When <code>java.io.Serializable</code> is implemented the following three methods are excluded by the rule:</p>
<ul>
  <li> <code>private void writeObject(java.io.ObjectOutputStream out) throws IOException;</code> </li>
  <li> <code>private void readObject(java.io.ObjectInputStream in) throws IOException, ClassNotFoundException;</code> </li>
  <li> <code>private void readObjectNoData() throws ObjectStreamException;</code> </li>
</ul>Z
CODE_SMELL
§
squid:S1596î
squidS1596I"Collections.EMPTY_LIST", "EMPTY_MAP", and "EMPTY_SET" should not be used"MINOR*java:ü<p>Since the introduction of generics in Java 5, the use of generic types such as <code>List&lt;String&gt;</code> is recommended over the use of raw
ones such as <code>List</code>. Assigning a raw type to a generic one is not type safe, and will generate a warning. The old <code>EMPTY_...</code>
fields of the <code>Collections</code> class return raw types, whereas the newer <code>empty...()</code> methods return generic ones.</p>
<h2>Noncompliant Code Example</h2>
<pre>
List&lt;String&gt; collection1 = Collections.EMPTY_LIST;  // Noncompliant
Map&lt;String, String&gt; collection2 = Collections.EMPTY_MAP;  // Noncompliant
Set&lt;String&gt; collection3 = Collections.EMPTY_SET;  // Noncompliant
</pre>
<h2>Compliant Solution</h2>
<pre>
List&lt;String&gt; collection1 = Collections.emptyList();
Map&lt;String, String&gt; collection2 = Collections.emptyMap();
Set&lt;String&gt; collection3 = Collections.emptySet();
</pre>Z
CODE_SMELL
Ü
squid:S2200ˆ
squidS2200="compareTo" results should not be checked for specific values"MINOR*java:î<p>While most <code>compareTo</code> methods return -1, 0, or 1, some do not, and testing the result of a <code>compareTo</code> against a specific
value other than 0 could result in false negatives.</p>
<h2>Noncompliant Code Example</h2>
<pre>
if (myClass.compareTo(arg) == -1) {  // Noncompliant
  // ...
}
</pre>
<h2>Compliant Solution</h2>
<pre>
if (myClass.compareTo(arg) &lt; 0) {
  // ...
}
</pre>ZBUG
≤
squid:S3419¢
squidS3419+Group ids should follow a naming convention"MINOR*java:À<p>Shared naming conventions allow teams to collaborate effectively. This rule raises an issue when the a pom's <code>groupId</code> does not match
the provided regular expression.</p>
<h2>Noncompliant Code Example</h2>
<p>With the default regular expression: <code>(com|org)(\.[a-z][a-z-0-9]*)+</code></p>
<pre>
&lt;project ...&gt;
  &lt;groupId&gt;myCo&lt;/groupId&gt;  &lt;!-- Noncompliant --&gt;

  &lt;!-- ... --&gt;
&lt;/project&gt;
</pre>
<h2>Compliant Solution</h2>
<pre>
&lt;project ...&gt;
  &lt;groupId&gt;com.myco&lt;/groupId&gt;

  &lt;!-- ... --&gt;
&lt;/project&gt;
</pre>Z
CODE_SMELL
õ
squid:S3658ã
squidS3658"Unit tests should throw exceptions"MINOR*java:Ω<p>When the code under test in a unit test throws an exception, the test itself fails. Therefore, there is no need to surround the tested code with a
<code>try</code>-<code>catch</code> structure to detect failure. Instead, you can simply move the exception type to the method signature. </p>
<p>This rule raises an issue when there is a fail assertion inside a <code>catch</code> block.</p>
<h2>Noncompliant Code Example</h2>
<pre>
@Test
public void testMethod() {
  try {
            // Some code
  } catch (MyException e) {
    Assert.fail(e.getMessage());  // Noncompliant
  }
}
</pre>
<h2>Compliant Solution</h2>
<pre>
@Test
public void testMethod() throws MyException {
    // Some code
}
</pre>Z
CODE_SMELL
ù
squid:UselessImportCheckÄ
squidUselessImportCheck%Unnecessary imports should be removed"MINOR*java2S1128:õ<p>The imports part of a file should be handled by the Integrated Development Environment (IDE), not manually by the developer. </p>
<p>Unused and useless imports should not occur if that is the case. </p>
<p>Leaving them in reduces the code's readability, since their presence can be confusing.</p>
<h2>Noncompliant Code Example</h2>
<pre>
package my.company;

import java.lang.String;        // Noncompliant; java.lang classes are always implicitly imported
import my.company.SomeClass;    // Noncompliant; same-package files are always implicitly imported
import java.io.File;            // Noncompliant; File is not used

import my.company2.SomeType;
import my.company2.SomeType;    // Noncompliant; 'SomeType' is already imported

class ExampleClass {

  public String someString;
  public SomeType something;

}
</pre>
<h2>Exceptions</h2>
<p>Imports for types mentioned in comments, such as Javadocs, are ignored.</p>Z
CODE_SMELL
Ú
squid:S2698‚
squidS2698(JUnit assertions should include messages"MINOR*java:é<p>Adding messages to JUnit assertions is an investment in your future productivity. Spend a few seconds writing them now, and you'll save a lot of
time on the other end when either the tests fail and you need to quickly diagnose the problem, or when you need to maintain the tests and the
assertion messages work as a sort of documentation.</p>
<h2>Noncompliant Code Example</h2>
<pre>
assertEquals(4, list.size());  // Noncompliant

try {
  fail();  // Noncompliant
} catch (Exception e) {
  assertThat(list.get(0)).isEqualTo("pear");  // Noncompliant
}
</pre>
<h2>Compliant Solution</h2>
<pre>
assertEquals("There should have been 4 Fruits in the list", 4, list.size());

try {
  fail("And exception is expected here");
} catch (Exception e) {
  assertThat(list.get(0)).as("check first element").overridingErrorMessage("The first element should be a pear, not a %s", list.get(0)).isEqualTo("pear");
}
</pre>Z
CODE_SMELL
Ø
squid:S1126ü
squidS1126TReturn of boolean expressions should not be wrapped into an "if-then-else" statement"MINOR*java:ü<p>Return of boolean literal statements wrapped into <code>if-then-else</code> ones should be simplified.</p>
<p>Similarly, method invocations wrapped into <code>if-then-else</code> differing only from boolean literals should be simplified into a single
invocation.</p>
<h2>Noncompliant Code Example</h2>
<pre>
boolean foo(Object param) {
  if (expression) { // Noncompliant
    bar(param, true, "qix");
  } else {
    bar(param, false, "qix");
  }

  if (expression) {  // Noncompliant
    return true;
  } else {
    return false;
  }
}
</pre>
<h2>Compliant Solution</h2>
<pre>
boolean foo(Object param) {
  bar(param, expression, "qix");

  return expression;
}
</pre>Z
CODE_SMELL
≈
squid:S1125µ
squidS1125(Boolean literals should not be redundant"MINOR*java:·<p>Redundant Boolean literals should be removed from expressions to improve readability.</p>
<h2>Noncompliant Code Example</h2>
<pre>
if (booleanMethod() == true) { /* ... */ }
if (booleanMethod() == false) { /* ... */ }
if (booleanMethod() || false) { /* ... */ }
doSomething(!false);
doSomething(booleanMethod() == true);

booleanVariable = booleanMethod() ? true : false;
booleanVariable = booleanMethod() ? true : exp;
booleanVariable = booleanMethod() ? false : exp;
booleanVariable = booleanMethod() ? exp : true;
booleanVariable = booleanMethod() ? exp : false;
</pre>
<h2>Compliant Solution</h2>
<pre>
if (booleanMethod()) { /* ... */ }
if (!booleanMethod()) { /* ... */ }
if (booleanMethod()) { /* ... */ }
doSomething(true);
doSomething(booleanMethod());

booleanVariable = booleanMethod();
booleanVariable = booleanMethod() || exp;
booleanVariable = !booleanMethod() &amp;&amp; exp;
booleanVariable = !booleanMethod() || exp;
booleanVariable = booleanMethod() &amp;&amp; exp;
</pre>Z
CODE_SMELL
≠
squid:S1488ù
squidS1488NLocal variables should not be declared and then immediately returned or thrown"MINOR*java:£<p>Declaring a variable only to immediately return or throw it is a bad practice.</p>
<p>Some developers argue that the practice improves code readability, because it enables them to explicitly name what is being returned. However, this
variable is an internal implementation detail that is not exposed to the callers of the method. The method name should be sufficient for callers to
know exactly what will be returned.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public long computeDurationInMilliseconds() {
  long duration = (((hours * 60) + minutes) * 60 + seconds ) * 1000 ;
  return duration;
}

public void doSomething() {
  RuntimeException myException = new RuntimeException();
  throw myException;
}
</pre>
<h2>Compliant Solution</h2>
<pre>
public long computeDurationInMilliseconds() {
  return (((hours * 60) + minutes) * 60 + seconds ) * 1000 ;
}

public void doSomething() {
  throw new RuntimeException();
}
</pre>Z
CODE_SMELL
·
squid:S2333—
squidS2333&Redundant modifiers should not be used"MINOR*java:ˇ<p>The methods declared in an <code>interface</code> are <code>public</code> and <code>abstract</code> by default. Any variables are automatically
<code>public static final</code>. There is no need to explicitly declare them so.</p>
<p>Since annotations are implicitly interfaces, the same holds true for them as well.</p>
<p>Similarly, the <code>final</code> modifier is redundant on any method of a <code>final</code> class, and <code>private</code> is redundant on the
constructor of an <code>Enum</code>.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public interface Vehicle {

  public void go(int speed, Direction direction);  // Noncompliant
</pre>
<h2>Compliant Solution</h2>
<pre>
public interface Vehicle {

  void go(int speed, Direction direction);
</pre>Z
CODE_SMELL
é
squid:S3423˛
squidS3423/pom elements should be in the recommended order"MINOR*java:£<p>The POM Code Convention is the Maven project's internal recommendation for POM element ordering. It calls for listing modifiers in the following
order:</p>
<ol>
  <li> &lt;modelVersion/&gt; </li>
  <li> &lt;parent/&gt; </li>
  <li> &lt;groupId/&gt; </li>
  <li> &lt;artifactId/&gt; </li>
  <li> &lt;version/&gt; </li>
  <li> &lt;packaging/&gt; </li>
  <li> &lt;name/&gt; </li>
  <li> &lt;description/&gt; </li>
  <li> &lt;url/&gt; </li>
  <li> &lt;inceptionYear/&gt; </li>
  <li> &lt;organization/&gt; </li>
  <li> &lt;licenses/&gt; </li>
  <li> &lt;developers/&gt; </li>
  <li> &lt;contributors/&gt; </li>
  <li> &lt;mailingLists/&gt; </li>
  <li> &lt;prerequisites/&gt; </li>
  <li> &lt;modules/&gt; </li>
  <li> &lt;scm/&gt; </li>
  <li> &lt;issueManagement/&gt; </li>
  <li> &lt;ciManagement/&gt; </li>
  <li> &lt;distributionManagement/&gt; </li>
  <li> &lt;properties/&gt; </li>
  <li> &lt;dependencyManagement/&gt; </li>
  <li> &lt;dependencies/&gt; </li>
  <li> &lt;repositories/&gt; </li>
  <li> &lt;pluginRepositories/&gt; </li>
  <li> &lt;build/&gt; </li>
  <li> &lt;reporting/&gt; </li>
  <li> &lt;profiles/&gt; </li>
</ol>
<p>Not following this convention has no technical impact, but will reduce the pom's readability because most developers are used to the standard
order.</p>
<h2>See</h2>
<ul>
  <li> <a href="https://maven.apache.org/developers/conventions/code.html#POM_Code_Convention">POM Code Convention</a> </li>
</ul>Z
CODE_SMELL
∫
squid:S3420™
squidS3420.Artifact ids should follow a naming convention"MINOR*java:–<p>Shared naming conventions allow teams to collaborate effectively. This rule raises an issue when a pom's <code>artifactId</code> does not match the
provided regular expression.</p>
<h2>Noncompliant Code Example</h2>
<p>With the default regular expression: <code>[a-z][a-z-0-9]+</code></p>
<pre>
&lt;project ...&gt;
  &lt;artifactId&gt;My_Project&lt;/artifactId&gt;  &lt;!-- Noncompliant --&gt;

  &lt;!-- ... --&gt;
&lt;/project&gt;
</pre>
<h2>Compliant Solution</h2>
<pre>
&lt;project ...&gt;
  &lt;artifactId&gt;my-project&lt;/artifactId&gt;

  &lt;!-- ... --&gt;
&lt;/project&gt;
</pre>Z
CODE_SMELL
“
squid:S3421¬
squidS34211Deprecated "${pom}" properties should not be used"MINOR*java:Â<p>Deprecated features are those that have been retained temporarily for backward compatibility, but which will eventually be removed. In effect,
deprecation announces a grace period to allow the smooth transition from the old features to the new ones. In that period, no use of the deprecated
features should be added, and all existing uses should be gradually removed.</p>
<p>This rule raises an issue when <code>${pom.*}</code> properties are used in a pom.</p>
<h2>Noncompliant Code Example</h2>
<pre>
  &lt;build&gt;
    &lt;finalName&gt;${pom.artifactId}-${pom.version}&lt;/finalName&gt;  &lt;!-- Noncompliant --&gt;
</pre>
<h2>Compliant Solution</h2>
<pre>
  &lt;build&gt;
    &lt;finalName&gt;${project.artifactId}-${project.version}&lt;/finalName&gt;
</pre>
<p>or</p>
<pre>
  &lt;build&gt;
    &lt;finalName&gt;${artifactId}-${version}&lt;/finalName&gt;
</pre>Z
CODE_SMELL
¨
squid:S1481ú
squidS1481(Unused local variables should be removed"MINOR*java:»<p>If a local variable is declared but not used, it is dead code and should be removed. Doing so will improve maintainability because developers will
not wonder what the variable is used for.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public int numberOfMinutes(int hours) {
  int seconds = 0;   // seconds is never used
  return hours * 60;
}
</pre>
<h2>Compliant Solution</h2>
<pre>
public int numberOfMinutes(int hours) {
  return hours * 60;
}
</pre>Z
CODE_SMELL
ô
squid:S2148â
squidS21489Underscores should be used to make large numbers readable"MINOR*java:§
<p>Beginning with Java 7, it is possible to add underscores ('_') to numeric literals to enhance readability. The addition of underscores in this
manner has no semantic meaning, but makes it easier for maintainers to understand the code.</p>
<p>The number of digits to the left of a decimal point needed to trigger this rule varies by base.</p>
<table>
  <tbody>
    <tr>
      <th>Base</th>
      <th> Minimum digits</th>
    </tr>
    <tr>
      <td>binary</td>
      <td> 9 </td>
    </tr>
    <tr>
      <td>octal</td>
      <td> 9 </td>
    </tr>
    <tr>
      <td>decimal</td>
      <td> 6 </td>
    </tr>
    <tr>
      <td>hexadecimal</td>
      <td> 9 </td>
    </tr>
  </tbody>
</table>
<p>It is only the presence of underscores, not their spacing that is scrutinized by this rule.</p>
<p><strong>Note</strong> that this rule is automatically disabled when the project's <code>sonar.java.source</code> is lower than <code>7</code>.</p>
<h2>Noncompliant Code Example</h2>
<pre>
int i = 10000000;  // Noncompliant; is this 10 million or 100 million?
int  j = 0b01101001010011011110010101011110;  // Noncompliant
long l = 0x7fffffffffffffffL;  // Noncompliant
</pre>
<h2>Compliant Solution</h2>
<pre>
int i = 10_000_000;
int  j = 0b01101001_01001101_11100101_01011110;
long l = 0x7fff_ffff_ffff_ffffL;
</pre>Z
CODE_SMELL
ı
squid:S2147Â
squidS2147Catches should be combined"MINOR*java:ü<p>Since Java 7 it has been possible to catch multiple exceptions at once. Therefore, when multiple <code>catch</code> blocks have the same code, they
should be combined for better readability.</p>
<p><strong>Note</strong> that this rule is automatically disabled when the project's <code>sonar.java.source</code> is lower than <code>7</code>.</p>
<h2>Noncompliant Code Example</h2>
<pre>
catch (IOException e) {
  doCleanup();
  logger.log(e);
}
catch (SQLException e) {  // Noncompliant
  doCleanup();
  logger.log(e);
}
catch (TimeoutException e) {  // Compliant; block contents are different
  doCleanup();
  throw e;
}
</pre>
<h2>Compliant Solution</h2>
<pre>
catch (IOException|SQLException e) {
  doCleanup();
  logger.log(e);
}
catch (TimeoutException e) {
  doCleanup();
  throw e;
}
</pre>Z
CODE_SMELL
œ
squid:S3599ø
squidS3599.Double Brace Initialization should not be used"MINOR*java:Ï<p>Because Double Brace Initialization (DBI) creates an anonymous class with a reference to the instance of the owning object, its use can lead to
memory leaks if the anonymous inner class is returned and held by other objects. Even when there's no leak, DBI is so obscure that it's bound to
confuse most maintainers. </p>
<p>For collections, use <code>Arrays.asList</code> instead, or explicitly add each item directly to the collection.</p>
<h2>Noncompliant Code Example</h2>
<pre>
Map source = new HashMap(){{ // Noncompliant
    put("firstName", "John");
    put("lastName", "Smith");
}};
</pre>
<h2>Compliant Solution</h2>
<pre>
Map source = new HashMap();
// ...
source.put("firstName", "John");
source.put("lastName", "Smith");
// ...
</pre>ZBUG
œ
squid:S2386ø
squidS2386,Mutable fields should not be "public static""MINOR*java:‰<p>There is no good reason to have a mutable object as the <code>public</code> (by default), <code>static</code> member of an <code>interface</code>.
Such variables should be moved into classes and their visibility lowered. </p>
<p>Similarly, mutable <code>static</code> members of classes and enumerations which are accessed directly, rather than through getters and setters,
should be protected to the degree possible. That can be done by reducing visibility or making the field <code>final</code> if appropriate. </p>
<p>Note that making a mutable field, such as an array, <code>final</code> will keep the variable from being reassigned, but doing so has no effect on
the mutability of the internal state of the array (i.e. it doesn't accomplish the goal).</p>
<p>This rule raises issues for <code>public static</code> array, <code>Collection</code>, <code>Date</code>, and <code>awt.Point</code> members.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public interface MyInterface {
  public static String [] strings; // Noncompliant
}

public class A {
  public static String [] strings1 = {"first","second"};  // Noncompliant
  public static String [] strings2 = {"first","second"};  // Noncompliant
  public static List&lt;String&gt; strings3 = new ArrayList&lt;&gt;();  // Noncompliant
  // ...
}
</pre>
<h2>See</h2>
<ul>
  <li> <a href="http://cwe.mitre.org/data/definitions/582.html">MITRE, CWE-582</a> - Array Declared Public, Final, and Static </li>
  <li> <a href="http://cwe.mitre.org/data/definitions/607.html">MITRE, CWE-607</a> - Public Static Final Field References Mutable Object </li>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/rwBc">CERT, OBJ01-J.</a> - Limit accessibility of fields </li>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/JQLEAw">CERT, OBJ13-J.</a> - Ensure that references to mutable objects are not exposed
  </li>
</ul>ZVULNERABILITY
Ú
squid:S2384‚
squidS23849Mutable members should not be stored or returned directly"MINOR*java:˙<p>Mutable objects are those whose state can be changed. For instance, an array is mutable, but a String is not. Mutable class members should never be
returned to a caller or accepted and stored directly. Doing so leaves you vulnerable to unexpected changes in your class state.</p>
<p>Instead use an unmodifiable <code>Collection</code> (via <code>Collections.unmodifiableCollection</code>,
<code>Collections.unmodifiableList</code>, ...) or make a copy of the mutable object, and store or return the copy instead.</p>
<p>This rule checks that arrays, collections and Dates are not stored or returned directly.</p>
<h2>Noncompliant Code Example</h2>
<pre>
class A {
  private String [] strings;

  public A () {
    strings = new String[]{"first", "second"};
  }

  public String [] getStrings() {
    return strings; // Noncompliant
  }

  public void setStrings(String [] strings) {
    this.strings = strings;  // Noncompliant
  }
}

public class B {

  private A a = new A();  // At this point a.strings = {"first", "second"};

  public void wreakHavoc() {
    a.getStrings()[0] = "yellow";  // a.strings = {"yellow", "second"};
  }
}
</pre>
<h2>Compliant Solution</h2>
<pre>
class A {
  private String [] strings;

  public A () {
    strings = new String[]{"first", "second"};
  }

  public String [] getStrings() {
    return strings.clone();
  }

  public void setStrings(String [] strings) {
    this.strings = strings.clone();
  }
}

public class B {

  private A a = new A();  // At this point a.strings = {"first", "second"};

  public void wreakHavoc() {
    a.getStrings()[0] = "yellow";  // a.strings = {"first", "second"};
  }
}

</pre>
<h2>See</h2>
<ul>
  <li> <a href="http://cwe.mitre.org/data/definitions/374">MITRE, CWE-374</a> - Passing Mutable Objects to an Untrusted Method </li>
  <li> <a href="http://cwe.mitre.org/data/definitions/375">MITRE, CWE-375</a> - Returning a Mutable Object to an Untrusted Caller </li>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/zQCuAQ">CERT, OBJ05-J.</a> - Do not return references to private mutable class members
  </li>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/QIEVAQ">CERT, OBJ06-J.</a> - Defensively copy mutable inputs and mutable internal
  components </li>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/JQLEAw">CERT, OBJ13-J.</a> - Ensure that references to mutable objects are not exposed
  </li>
</ul>ZVULNERABILITY
 
squid:S4201∫
squidS42010Null checks should not be used with "instanceof""MINOR*java:ﬁ<p>There's no need to null test in conjunction with an <code>instanceof</code> test. <code>null</code> is not an <code>instanceof</code> anything, so
a null check is redundant.</p>
<h2>Noncompliant Code Example</h2>
<pre>
if (x != null &amp;&amp; x instanceof MyClass) { ... }  // Noncompliant

if (x == null || ! x instanceof MyClass) { ... } // Noncompliant
</pre>
<h2>Compliant Solution</h2>
<pre>
if (x instanceof MyClass) { ... }

if (! x instanceof MyClass) { ... }
</pre>Z
CODE_SMELL
Ï
squid:S2140‹
squidS2140eMethods of "Random" that return floating point values should not be used in random integer generation"MINOR*java:À<p>There is no need to multiply the output of <code>Random</code>'s <code>nextDouble</code> method to get a random integer. Use the
<code>nextInt</code> method instead.</p>
<p>This rule raises an issue when the return value of any of <code>Random</code>'s methods that return a floating point value is converted to an
integer.</p>
<h2>Noncompliant Code Example</h2>
<pre>
Random r = new Random();
int rand = (int)r.nextDouble() * 50;  // Noncompliant way to get a pseudo-random value between 0 and 50
int rand2 = (int)r.nextFloat(); // Noncompliant; will always be 0;
</pre>
<h2>Compliant Solution</h2>
<pre>
Random r = new Random();
int rand = r.nextInt(50);  // returns pseudo-random value between 0 and 50
</pre>Z
CODE_SMELL
§
squid:S4682î
squidS4682D"@CheckForNull" or "@Nullable" should not be used on primitive types"MINOR*java:§<p>By definition, primitive types are not Objects and so they can't be <code>null</code>. Adding <code>@CheckForNull</code> or <code>@Nullable</code>
on primitive types adds confusion and is useless.</p>
<p>This rule raises an issue when <code>@CheckForNull</code> or <code>@Nullable</code> is set on a method returning a primitive type: byte, short,
int, long, float, double, boolean, char.</p>
<h2>Noncompliant Code Example</h2>
<pre>
@CheckForNull
boolean isFoo() {
 ...
}
</pre>
<h2>Compliant Solution</h2>
<pre>
boolean isFoo() {
 ...
}
</pre>Z
CODE_SMELL
Â
squid:S1170’
squidS1170jPublic constants and fields initialized at declaration should be "static final" rather than merely "final""MINOR*java:ø
<p>Making a <code>public</code> constant just <code>final</code> as opposed to <code>static final</code> leads to duplicating its value for every
instance of the class, uselessly increasing the amount of memory required to execute the application.</p>
<p>Further, when a non-<code>public</code>, <code>final</code> field isn't also <code>static</code>, it implies that different instances can have
different values. However, initializing a non-<code>static final</code> field in its declaration forces every instance to have the same value. So such
fields should either be made <code>static</code> or initialized in the constructor.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public class Myclass {
  public final int THRESHOLD = 3;
}
</pre>
<h2>Compliant Solution</h2>
<pre>
public class Myclass {
  public static final int THRESHOLD = 3;    // Compliant
}
</pre>
<h2>Exceptions</h2>
<p>No issues are reported on final fields of inner classes whose type is not a primitive or a String. Indeed according to the Java specification:</p>
<blockquote>
  <p>An inner class is a nested class that is not explicitly or implicitly declared static. Inner classes may not declare static initializers (¬ß8.7)
  or member interfaces. Inner classes may not declare static members, unless they are compile-time constant fields (¬ß15.28).</p>
</blockquote>Z
CODE_SMELL
Ÿ
squid:S2039…
squidS2039.Member variable visibility should be specified"MINOR*java:Ï<p>Failing to explicitly declare the visibility of a member variable could result it in having a visibility you don't expect, and potentially leave it
open to unexpected modification by other classes. </p>
<h2>Noncompliant Code Example</h2>
<pre>
class Ball {
    String color="red";  // Noncompliant
}
enum A {
  B;
  int a;
}
</pre>
<h2>Compliant Solution</h2>
<pre>
class Ball {
    private String color="red";  // Compliant
}
enum A {
  B;
  private int a;
}
</pre>
<h2>Exceptions</h2>
<p>Members annotated with Guava's <code>@VisibleForTesting</code> annotation are ignored, as it indicates that visibility has been purposely relaxed
to make the code testable.</p>
<pre>
class Cone {
  @VisibleForTesting
  Logger logger; // Compliant
}
</pre>ZVULNERABILITY
…
squid:S2156π
squidS21563"final" classes should not have "protected" members"MINOR*java:⁄
<p>The difference between <code>private</code> and <code>protected</code> visibility is that child classes can see and use <code>protected</code>
members, but they cannot see <code>private</code> ones. Since a <code>final</code> class will have no children, marking the members of a
<code>final</code> class <code>protected</code> is confusingly pointless.</p>
<p>Note that the <code>protected</code> members of a class can also be seen and used by other classes that are placed within the same package, this
could lead to accidental, unintended access to otherwise private members.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public final class MyFinalClass {

  protected String name = "Fred";  // Noncompliant
  protected void setName(String name) {  // Noncompliant
    // ...
  }
</pre>
<h2>Compliant Solution</h2>
<pre>
public final class MyFinalClass {

  private String name = "Fred";
  public void setName(String name) {
    // ...
  }
</pre>
<h2>Exceptions</h2>
<p>Members annotated with Guava's <code>@VisibleForTesting</code> annotation are ignored, as it indicates that visibility has been purposely relaxed
to make the code testable.</p>
<pre>
public final class MyFinalClass {
  @VisibleForTesting
  protected Logger logger; // Compliant

  @VisibleForTesting
  protected int calculateSomethingComplex(String input) { // Compliant
    // ...
  }
}
</pre>Z
CODE_SMELL
÷

squid:S3242∆

squidS32424Method parameters should be declared with base types"MINOR*java:Ê	<p>For maximum reusability, methods should accept parameters with as little specialization as possible. So unless specific features from a child class
are required by a method, a type higher up the class hierarchy should be used instead.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public void printSize(ArrayList&lt;Object&gt; list) {  // Collection can be used instead
    System.out.println(list.size());
}

public static void loop(List&lt;Object&gt; list) { // java.lang.Iterable can be used instead
   for (Object o : list) {
     o.toString();
  }
}
</pre>
<h2>Compliant Solution</h2>
<pre>
public void printSize(Collection&lt;?&gt; list) {  // Collection can be used instead
    System.out.println(list.size());
}

public static void loop(Iterable&lt;?&gt; list) { // java.lang.Iterable can be used instead
   for (Object o : list) {
     o.toString();
  }
}
</pre>
<h2>Exceptions</h2>
<p>Parameters in non-public methods are not checked, because such methods are not intended to be generally reusable. <code>java.lang.String</code>
parameters are excluded, because String is immutable and can not be always substituted for more generic type. Parameters used in any other context
than method invocation or enhanced for loop are also excluded.</p>Z
CODE_SMELL
’
squid:S2153≈
squidS21536Boxing and unboxing should not be immediately reversed"MINOR*java:Í<p>Boxing is the process of putting a primitive value into an analogous object, such as creating an <code>Integer</code> to hold an <code>int</code>
value. Unboxing is the process of retrieving the primitive value from such an object.</p>
<p>Since the original value is unchanged during boxing and unboxing, there's no point in doing either when not needed. This also applies to autoboxing
and auto-unboxing (when Java implicitly handles the primitive/object transition for you).</p>
<h2>Noncompliant Code Example</h2>
<pre>
public void examineInt(int a) {
  //...
}

public void examineInteger(Integer a) {
  // ...
}

public void func() {
  int i = 0;
  Integer iger1 = Integer.valueOf(0);
  double d = 1.0;

  int dIntValue = new Double(d).intValue(); // Noncompliant

  examineInt(new Integer(i).intValue()); // Noncompliant; explicit box/unbox
  examineInt(Integer.valueOf(i));  // Noncompliant; boxed int will be auto-unboxed

  examineInteger(i); // Compliant; value is boxed but not then unboxed
  examineInteger(iger1.intValue()); // Noncompliant; unboxed int will be autoboxed

  Integer iger2 = new Integer(iger1); // Noncompliant; unnecessary unboxing, value can be reused
}
</pre>
<h2>Compliant Solution</h2>
<pre>
public void examineInt(int a) {
  //...
}

public void examineInteger(Integer a) {
  // ...
}

public void func() {
  int i = 0;
  Integer iger1 = Integer.valueOf(0);
  double d = 1.0;

  int dIntValue = (int) d;

  examineInt(i);

  examineInteger(i);
  examineInteger(iger1);
}
</pre>ZBUG
ü
squid:S1185è
squidS1185UOverriding methods should do more than simply call the same method in the super class"MINOR*java:é<p>Overriding a method just to call the same method from the super class without performing any other actions is useless and misleading. The only time
this is justified is in <code>final</code> overriding methods, where the effect is to lock in the parent class behavior. This rule ignores such
overrides of <code>equals</code>, <code>hashCode</code> and <code>toString</code>.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public void doSomething() {
  super.doSomething();
}

@Override
public boolean isLegal(Action action) {
  return super.isLegal(action);
}
</pre>
<h2>Compliant Solution</h2>
<pre>
@Override
public boolean isLegal(Action action) {         // Compliant - not simply forwarding the call
  return super.isLegal(new Action(/* ... */));
}

@Id
@Override
public int getId() {                            // Compliant - there is annotation different from @Override
  return super.getId();
}
</pre>Z
CODE_SMELL
π
squid:S3008©
squidS3008CStatic non-final field names should comply with a naming convention"MINOR*java:∫<p>Shared naming conventions allow teams to collaborate efficiently. This rule checks that static non-final field names match a provided regular
expression.</p>
<h2>Noncompliant Code Example</h2>
<p>With the default regular expression <code>^[a-z][a-zA-Z0-9]*$</code>:</p>
<pre>
public final class MyClass {
   private static String foo_bar;
}
</pre>
<h2>Compliant Solution</h2>
<pre>
class MyClass {
   private static String fooBar;
}
</pre>Z
CODE_SMELL
«
squid:S2272∑
squidS2272?"Iterator.next()" methods should throw "NoSuchElementException""MINOR*java:”<p>By contract, any implementation of the <code>java.util.Iterator.next()</code> method should throw a <code>NoSuchElementException</code> exception
when the iteration has no more elements. Any other behavior when the iteration is done could lead to unexpected behavior for users of this
<code>Iterator</code>. </p>
<h2>Noncompliant Code Example</h2>
<pre>
public class MyIterator implements Iterator&lt;String&gt;{
  ...
  public String next(){
    if(!hasNext()){
      return null;
    }
    ...
  }
}
</pre>
<h2>Compliant Solution</h2>
<pre>
public class MyIterator implements Iterator&lt;String&gt;{
  ...
  public String next(){
    if(!hasNext()){
      throw new NoSuchElementException();
    }
    ...
  }
}
</pre>ZBUG
‘
squid:S1182ƒ
squidS1182LClasses that override "clone" should be "Cloneable" and call "super.clone()""MINOR*java:Ã<p><code>Cloneable</code> is the marker <code>Interface</code> that indicates that <code>clone()</code> may be called on an object. Overriding
<code>clone()</code> without implementing <code>Cloneable</code> can be useful if you want to control how subclasses clone themselves, but otherwise,
it's probably a mistake.</p>
<p>The usual convention for <code>Object.clone()</code> according to Oracle's Javadoc is:</p>
<ol>
  <li> <code>x.clone() != x</code> </li>
  <li> <code>x.clone().getClass() == x.getClass()</code> </li>
  <li> <code>x.clone().equals\(x\)</code> </li>
</ol>
<p>Obtaining the object that will be returned by calling <code>super.clone()</code> helps to satisfy those invariants:</p>
<ol>
  <li> <code>super.clone()</code> returns a new object instance </li>
  <li> <code>super.clone()</code> returns an object of the same type as the one <code>clone()</code> was called on </li>
  <li> <code>Object.clone()</code> performs a shallow copy of the object's state </li>
</ol>
<h2>Noncompliant Code Example</h2>
<pre>
class BaseClass {  // Noncompliant; should implement Cloneable
  @Override
  public Object clone() throws CloneNotSupportedException {    // Noncompliant; should return the super.clone() instance
    return new BaseClass();
  }
}

class DerivedClass extends BaseClass implements Cloneable {
  /* Does not override clone() */

  public void sayHello() {
    System.out.println("Hello, world!");
  }
}

class Application {
  public static void main(String[] args) throws Exception {
    DerivedClass instance = new DerivedClass();
    ((DerivedClass) instance.clone()).sayHello();              // Throws a ClassCastException because invariant #2 is violated
  }
}
</pre>
<h2>Compliant Solution</h2>
<pre>
class BaseClass implements Cloneable {
  @Override
  public Object clone() throws CloneNotSupportedException {    // Compliant
    return super.clone();
  }
}

class DerivedClass extends BaseClass implements Cloneable {
  /* Does not override clone() */

  public void sayHello() {
    System.out.println("Hello, world!");
  }
}

class Application {
  public static void main(String[] args) throws Exception {
    DerivedClass instance = new DerivedClass();
    ((DerivedClass) instance.clone()).sayHello();              // Displays "Hello, world!" as expected. Invariant #2 is satisfied
  }
}
</pre>
<h2>See</h2>
<ul>
  <li> <a href="http://cwe.mitre.org/data/definitions/580.html">MITRE, CWE-580</a> - clone() Method Without super.clone() </li>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/CQHEAw">CERT, MET53-J.</a> - Ensure that the clone() method calls super.clone() </li>
</ul>Z
CODE_SMELL
î
squid:S3578Ñ
squidS35783Test methods should comply with a naming convention"MINOR*java:•<p>Shared naming conventions allow teams to collaborate efficiently. This rule raises an issue when a test method name does not match the provided
regular expression.</p>
<h2>Noncompliant Code Example</h2>
<p>With the default value: <code>^test[A-Z][a-zA-Z0-9]*$</code></p>
<pre>
@Test
public void foo() {  // Noncompliant
  //...
}
</pre>
<h2>Compliant Solution</h2>
<pre>
@Test
public void testFoo() {
  // ...
}
</pre>Z
CODE_SMELL
Ï
squid:S1158‹
squidS1158VPrimitive wrappers should not be instantiated only for "toString" or "compareTo" calls"MINOR*java:⁄<p>Creating temporary primitive wrapper objects only for <code>String</code> conversion or the use of the <code>compareTo</code> method is
inefficient.</p>
<p>Instead, the static <code>toString()</code> or <code>compare</code> method of the primitive wrapper class should be used.</p>
<h2>Noncompliant Code Example</h2>
<pre>
new Integer(myInteger).toString();  // Noncompliant
</pre>
<h2>Compliant Solution</h2>
<pre>
Integer.toString(myInteger);        // Compliant
</pre>Z
CODE_SMELL
ı
squid:S1157Â
squidS1157]Case insensitive string comparisons should be made without intermediate upper or lower casing"MINOR*java:‹<p>Using <code>toLowerCase()</code> or <code>toUpperCase()</code> to make case insensitive comparisons is inefficient because it requires the creation
of temporary, intermediate <code>String</code> objects.</p>
<h2>Noncompliant Code Example</h2>
<pre>
boolean result1 = foo.toUpperCase().equals(bar);             // Noncompliant
boolean result2 = foo.equals(bar.toUpperCase());             // Noncompliant
boolean result3 = foo.toLowerCase().equals(bar.LowerCase()); // Noncompliant
</pre>
<h2>Compliant Solution</h2>
<pre>
boolean result = foo.equalsIgnoreCase(bar);                  // Compliant
</pre>Z
CODE_SMELL
ì
squid:S3577É
squidS35773Test classes should comply with a naming convention"MINOR*java:§<p>Shared naming conventions allow teams to collaborate efficiently. This rule raises an issue when a test class name does not match the provided
regular expression.</p>
<h2>Noncompliant Code Example</h2>
<p>With the default value: <code>^((Test|IT)[a-zA-Z0-9]+|[A-Z][a-zA-Z0-9]*(Test|IT|TestCase|ITCase))$</code></p>
<pre>
class Foo {  // Noncompliant
}
</pre>
<h2>Compliant Solution</h2>
<pre>
class FooTest {
}
</pre>Z
CODE_SMELL
ò
squid:S1155à
squidS11559Collection.isEmpty() should be used to test for emptiness"MINOR*java:£<p>Using <code>Collection.size()</code> to test for emptiness works, but using <code>Collection.isEmpty()</code> makes the code more readable and can
be more performant. The time complexity of any <code>isEmpty()</code> method implementation should be <code>O(1)</code> whereas some implementations
of <code>size()</code> can be <code>O(n)</code>.</p>
<h2>Noncompliant Code Example</h2>
<pre>
if (myCollection.size() == 0) {  // Noncompliant
  /* ... */
}
</pre>
<h2>Compliant Solution</h2>
<pre>
if (myCollection.isEmpty()) {
  /* ... */
}
</pre>Z
CODE_SMELL
ﬂ
squid:S1153œ
squidS11533String.valueOf() should not be appended to a String"MINOR*java:<p>Appending <code>String.valueOf()</code> to a <code>String</code> decreases the code readability.</p>
<p>The argument passed to <code>String.valueOf()</code> should be directly appended instead.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public void display(int i){
  System.out.println("Output is " + String.valueOf(i));    // Noncompliant
}
</pre>
<h2>Compliant Solution</h2>
<pre>
public void display(int i){
  System.out.println("Output is " + i);                    // Compliant
}
</pre>Z
CODE_SMELL
Â
squid:S00100‘
squidS001003Method names should comply with a naming convention"MINOR*java2S100:Ó<p>Shared naming conventions allow teams to collaborate efficiently. This rule checks that all method names match a provided regular expression.</p>
<h2>Noncompliant Code Example</h2>
<p>With default provided regular expression <code>^[a-z][a-zA-Z0-9]*$</code>:</p>
<pre>
public int DoSomething(){...}
</pre>
<h2>Compliant Solution</h2>
<pre>
public int doSomething(){...}
</pre>
<h2>Exceptions</h2>
<p>Overriding methods are excluded. </p>
<pre>
@Override
public int Do_Something(){...}
</pre>Z
CODE_SMELL
Ê
squid:S00101’
squidS001012Class names should comply with a naming convention"MINOR*java2S101:<p>Shared coding conventions allow teams to collaborate effectively. This rule allows to check that all class names match a provided regular
expression.</p>
<h2>Noncompliant Code Example</h2>
<p>With default provided regular expression <code>^[A-Z][a-zA-Z0-9]*$</code>:</p>
<pre>
class my_class {...}
</pre>
<h2>Compliant Solution</h2>
<pre>
class MyClass {...}
</pre>Z
CODE_SMELL
ü	
squid:S1165è	
squidS1165%Exception classes should be immutable"MINOR*java:æ<p>Exceptions are meant to represent the application's state at the point at which an error occurred.</p>
<p>Making all fields in an <code>Exception</code> class <code>final</code> ensures that this state:</p>
<ul>
  <li> Will be fully defined at the same time the <code>Exception</code> is instantiated. </li>
  <li> Won't be updated or corrupted by a questionable error handler. </li>
</ul>
<p>This will enable developers to quickly understand what went wrong.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public class MyException extends Exception {

  private int status;                               // Noncompliant

  public MyException(String message) {
    super(message);
  }

  public int getStatus() {
    return status;
  }

  public void setStatus(int status) {
    this.status = status;
  }

}
</pre>
<h2>Compliant Solution</h2>
<pre>
public class MyException extends Exception {

  private final int status;

  public MyException(String message, int status) {
    super(message);
    this.status = status;
  }

  public int getStatus() {
    return status;
  }

}
</pre>Z
CODE_SMELL
î
 squid:LeftCurlyBraceEndLineCheckÔ
squidLeftCurlyBraceEndLineCheck:An open curly brace should be located at the end of a line"MINOR*java2S1105:Ì<p>Shared naming conventions allow teams to collaborate effectively. This rule raises an issue when an open curly brace is not placed at the end of a
line of code.</p>
<h2>Noncompliant Code Example</h2>
<pre>
if(condition)
{
  doSomething();
}
</pre>
<h2>Compliant Solution</h2>
<pre>
if(condition) {
  doSomething();
}
</pre>
<h2>Exceptions</h2>
<p>When blocks are inlined (left and right curly braces on the same line), no issue is triggered. </p>
<pre>
if(condition) {doSomething();}
</pre>Z
CODE_SMELL
¬

squid:S818≥
squidS818%Literal suffixes should be upper case"MINOR*java:„<p>Using upper case literal suffixes removes the potential ambiguity between "1" (digit 1) and "l" (letter el) for declaring literals.</p>
<h2>Noncompliant Code Example</h2>
<pre>
long long1 = 1l; // Noncompliant
float float1 = 1.0f; // Noncompliant
double double1 = 1.0d; // Noncompliant
</pre>
<h2>Compliant Solution</h2>
<pre>
long long1 = 1L;
float float1 = 1.0F;
double double1 = 1.0D;
</pre>
<h2>See</h2>
<ul>
  <li> MISRA C++:2008, 2-13-4 - Literal suffixes shall be upper case </li>
  <li> MISRA C:2012, 7.3 - The lowercase character "l" shall not be used in a literal suffix </li>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/koAtAQ">CERT DCL16-C.</a> - Use "L," not "l," to indicate a long value </li>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/hYClBg">CERT, DCL50-J.</a> - Use visually distinct identifiers </li>
</ul>Z
CODE_SMELL
»
squid:S2250∏
squidS2250ACollection methods with O(n) performance should be used carefully"MINOR*java:À<p>The time complexity of method calls on collections is not always obvious. For instance, for most collections the <code>size()</code> method takes
constant time, but the time required to execute <code>ConcurrentLinkedQueue.size()</code> is O(n), i.e. directly proportional to the number of
elements in the collection. When the collection is large, this could therefore be an expensive operation. </p>
<p>This rule raises an issue when the following O(n) methods are called outside of constructors on class fields:</p>
<ul>
  <li> <code>ArrayList</code>
    <ul>
      <li> <code>contains</code> </li>
      <li> <code>remove</code> </li>
    </ul> </li>
  <li> <code>LinkedList</code>
    <ul>
      <li> <code>get</code> </li>
      <li> <code>contains</code> </li>
    </ul> </li>
  <li> <code>ConcurrentLinkedQueue</code>
    <ul>
      <li> <code>size</code> </li>
      <li> <code>contains</code> </li>
    </ul> </li>
  <li> <code>ConcurrentLinkedDeque</code>
    <ul>
      <li> <code>size</code> </li>
      <li> <code>contains</code> </li>
    </ul> </li>
  <li> <code>CopyOnWriteArrayList</code>
    <ul>
      <li> <code>add</code> </li>
      <li> <code>contains</code> </li>
      <li> <code>remove</code> </li>
    </ul> </li>
  <li> <code>CopyOnWriteArraySet</code>
    <ul>
      <li> <code>add</code> </li>
      <li> <code>contains</code> </li>
      <li> <code>remove</code> </li>
    </ul> </li>
</ul>
<h2>Noncompliant Code Example</h2>
<pre>
ConcurrentLinkedQueue queue = new ConcurrentLinkedQueue();
//...
log.info("Queue contains " + queue.size() + " elements");  // Noncompliant
</pre>Z
CODE_SMELL
¿
squid:S2130∞
squidS21309Parsing should be used to convert "Strings" to primitives"MINOR*java:À<p>Rather than creating a boxed primitive from a <code>String</code> to extract the primitive value, use the relevant <code>parse</code> method
instead. It will be clearer and more efficient.</p>
<h2>Noncompliant Code Example</h2>
<pre>
String myNum = "12.2";

float f = (new Float(myNum)).floatValue();  // Noncompliant; creates &amp; discards a Float
</pre>
<h2>Compliant Solution</h2>
<pre>
String myNum = "12.2";

float f = Float.parseFloat(myNum);
</pre>Z
CODE_SMELL
¬
squid:S3340≤
squidS3340KAnnotation arguments should appear in the order in which they were declared"MINOR*java:ª<p>For optimal code readability, annotation arguments should be specified in the same order that they were declared in the annotation definition.</p>
<h2>Noncompliant Code Example</h2>
<pre>
@interface Pet {
    String name();
    String surname();
}

@Pet(surname ="", name="") // Noncompliant
</pre>
<h2>Compliant Solution</h2>
<pre>
@interface Pet {
    String name();
    String surname();
}

@Pet(name ="", surname="") // Compliant
</pre>Z
CODE_SMELL
Ò
squid:S4926·
squidS49261"serialVersionUID" should not be declared blindly"MINOR*java:Ñ<p>Providing a <code>serialVersionUID</code> field on <code>Serializable</code> classes is strongly recommended by the <code>Serializable</code>
documentation but blindly following that recommendation can be harmful.</p>
<p><code>serialVersionUID</code> value is stored with the serialized data and this field is verified when deserializing the data to ensure that the
code reading the data is compatible with the serialized data. In case of failure, it means the serialized data and the code are not in sync and this
fine because you know what's wrong.</p>
<p>When the <code>serialVersionUID</code> is generated by an IDE or blindly hard-coded, there is a high probability that one will forget to update the
<code>serialVersionUID</code> value when the <code>Serializable</code> class is later enriched with additional fields. As a consequence, old
serialized data will incorrectly be considered compatible with the newer version of the code creating situations which are hard to debug.</p>
<p>Therefore, defining <code>serialVersionUID</code> should be done with care. This rule raises an issue on each <code>serialVersionUID</code> field
declared on classes implementing <code>Serializable</code> to be sure the presence and the value of the <code>serialVersionUID</code> field is
challenged and validated by the team.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public class Foo implements Serializable {
  private static final long serialVersionUID = 1;
}

public class BarException extends RuntimeException {
  private static final long serialVersionUID = 8582433437601788991L;
}
</pre>
<h2>See</h2>
<ul>
  <li> Vojtech Ruzicka's Programming Blog: <a href="https://www.vojtechruzicka.com/explicitly-declare-serialversionuid/">Should I explicitly declare
  serialVersionUID?</a> </li>
</ul>Z
CODE_SMELL
»
squid:S4929∏
squidS4929+"read(byte[],int,int)" should be overridden"MINOR*java:·<p>When directly subclassing <code>java.io.InputStream</code> or <code>java.io.FilterInputStream</code>, the only requirement is that you implement
the method <code>read()</code>. However most uses for such streams don't read a single byte at a time and the default implementation for
<code>read(byte[],int,int)</code> will call <code>read(int)</code> for every single byte in the array which can create a lot of overhead and is
utterly inefficient. It is therefore strongly recommended that subclasses provide an efficient implementation of
<code>read(byte[],int,int)</code>.</p>
<p>This rule raises an issue when a direct subclass of <code>java.io.InputStream</code> or <code>java.io.FilterInputStream</code> doesn't provide an
override of <code>read(byte[],int,int)</code>.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public class MyInputStream extends java.io.InputStream {
  private FileInputStream fin;

  public MyInputStream(File file) throws IOException {
    fin = new FileInputStream(file);
  }

  @Override
  public int read() throws IOException {
    return fin.read();
  }
}
</pre>
<h2>Compliant Solution</h2>
<pre>
public class MyInputStream extends java.io.InputStream {
  private FileInputStream fin;

  public MyInputStream(File file) throws IOException {
    fin = new FileInputStream(file);
  }

  @Override
  public int read() throws IOException {
    return fin.read();
  }

  @Override
  public int read(byte[] b, int off, int len) throws IOException {
    return fin.read(b, off, len);
  }
}
</pre>
<h2>Exceptions</h2>
<p>This rule doesn't raise an issue when the class is declared <code>abstract</code>.</p>Z
CODE_SMELL
¿
squid:S1659∞
squidS1659:Multiple variables should not be declared on the same line"MINOR*java: <p>Declaring multiple variables on one line is difficult to read.</p>
<h2>Noncompliant Code Example</h2>
<pre>
class MyClass {

  private int a, b;

  public void method(){
    int c; int d;
  }
}
</pre>
<h2>Compliant Solution</h2>
<pre>
class MyClass {

  private int a;
  private int b;

  public void method(){
    int c;
    int d;
  }
}
</pre>
<h2>See</h2>
<ul>
  <li> MISRA C++:2008, 8-0-1 - An init-declarator-list or a member-declarator-list shall consist of a single init-declarator or member-declarator
  respectively </li>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/7wHEAw">CERT, DCL52-J.</a> - Do not declare more than one variable per declaration
  </li>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/VgU">CERT, DCL04-C.</a> - Do not declare more than one variable per declaration </li>
</ul>Z
CODE_SMELL
£
squid:S1301ì
squidS13019"switch" statements should have at least 3 "case" clauses"MINOR*java:Æ<p><code>switch</code> statements are useful when there are many different cases depending on the value of the same expression.</p>
<p>For just one or two cases however, the code will be more readable with <code>if</code> statements.</p>
<h2>Noncompliant Code Example</h2>
<pre>
switch (variable) {
  case 0:
    doSomething();
    break;
  default:
    doSomethingElse();
    break;
}
</pre>
<h2>Compliant Solution</h2>
<pre>
if (variable == 0) {
  doSomething();
} else {
  doSomethingElse();
}
</pre>
<h2>See</h2>
<ul>
  <li> MISRA C:2004, 15.5 - Every switch statement shall have at least one case clause. </li>
  <li> MISRA C++:2008, 6-4-8 - Every switch statement shall have at least one case-clause. </li>
  <li> MISRA C:2012, 16.6 - Every switch statement shall have at least two switch-clauses </li>
</ul>Z
CODE_SMELL
∂

squid:S2637¶

squidS2637+"@NonNull" values should not be set to null"MINOR*java:÷	<p>Fields, parameters and return values marked <code>@NotNull</code>, <code>@NonNull</code>, or <code>@Nonnull</code> are assumed to have non-null
values and are not typically null-checked before use. Therefore setting one of these values to <code>null</code>, or failing to set such a class field
in a constructor, could cause <code>NullPointerException</code>s at runtime.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public class MainClass {

  @Nonnull
  private String primary;
  private String secondary;

  public MainClass(String color) {
    if (color != null) {
      secondary = null;
    }
    primary = color;  // Noncompliant; "primary" is Nonnull but could be set to null here
  }

  public MainClass() { // Noncompliant; "primary" Nonnull" but is not initialized
  }

  @Nonnull
  public String indirectMix() {
    String mix = null;
    return mix;  // Noncompliant; return value is Nonnull, but null is returned.}}
  }
</pre>
<h2>See</h2>
<ul>
  <li> <a href="http://cwe.mitre.org/data/definitions/476.html">MITRE CWE-476</a> - NULL Pointer Dereference </li>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/ZwDOAQ">CERT, EXP01-J.</a> - Do not use a null in a case where an object is required
  </li>
</ul>ZBUG
†
squid:S1643ê
squidS16436Strings should not be concatenated using '+' in a loop"MINOR*java:Æ<p>Strings are immutable objects, so concatenation doesn't simply add the new String to the end of the existing string. Instead, in each loop
iteration, the first String is converted to an intermediate object type, the second string is appended, and then the intermediate object is converted
back to a String. Further, performance of these intermediate operations degrades as the String gets longer. Therefore, the use of StringBuilder is
preferred.</p>
<h2>Noncompliant Code Example</h2>
<pre>
String str = "";
for (int i = 0; i &lt; arrayOfStrings.length ; ++i) {
  str = str + arrayOfStrings[i];
}
</pre>
<h2>Compliant Solution</h2>
<pre>
StringBuilder bld = new StringBuilder();
  for (int i = 0; i &lt; arrayOfStrings.length; ++i) {
    bld.append(arrayOfStrings[i]);
  }
  String str = bld.toString();
</pre>Z
CODE_SMELL
ô
squid:S2974â
squidS29747Classes without "public" constructors should be "final""MINOR*java:¶<p>Classes with only <code>private</code> constructors should be marked <code>final</code> to prevent any mistaken extension attempts.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public class PrivateConstructorClass {  // Noncompliant
  private PrivateConstructorClass() {
    // ...
  }

  public static int magic(){
    return 42;
  }
}
</pre>
<h2>Compliant Solution</h2>
<pre>
public final class PrivateConstructorClass {  // Compliant
  private PrivateConstructorClass() {
    // ...
  }

  public static int magic(){
    return 42;
  }
}
</pre>Z
CODE_SMELL
Ã
squid:S1641º
squidS1641GSets with elements that are enum values should be replaced with EnumSet"MINOR*java:…<p>When all the elements in a Set are values from the same enum, the Set can be replaced with an EnumSet, which can be much more efficient than other
sets because the underlying data structure is a simple bitmap.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public class MyClass {

  public enum COLOR {
    RED, GREEN, BLUE, ORANGE;
  }

  public void doSomething() {
    Set&lt;COLOR&gt; warm = new HashSet&lt;COLOR&gt;();
    warm.add(COLOR.RED);
    warm.add(COLOR.ORANGE);
  }
}
</pre>
<h2>Compliant Solution</h2>
<pre>
public class MyClass {

  public enum COLOR {
    RED, GREEN, BLUE, ORANGE;
  }

  public void doSomething() {
    Set&lt;COLOR&gt; warm = EnumSet.of(COLOR.RED, COLOR.ORANGE);
  }
}
</pre>Z
CODE_SMELL
¡
squid:S1640±
squidS1640CMaps with keys that are enum values should be replaced with EnumMap"MINOR*java:¬<p>When all the keys of a Map are values from the same enum, the <code>Map</code> can be replaced with an <code>EnumMap</code>, which can be much more
efficient than other sets because the underlying data structure is a simple array.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public class MyClass {

  public enum COLOR {
    RED, GREEN, BLUE, ORANGE;
  }

  public void mapMood() {
    Map&lt;COLOR, String&gt; moodMap = new HashMap&lt;COLOR, String&gt; ();
  }
}
</pre>
<h2>Compliant Solution</h2>
<pre>
public class MyClass {

  public enum COLOR {
    RED, GREEN, BLUE, ORANGE;
  }

  public void mapMood() {
    EnumMap&lt;COLOR, String&gt; moodMap = new EnumMap&lt;&gt; (COLOR.class);
  }
}
</pre>Z
CODE_SMELL
”
squid:S2737√
squidS2737+"catch" clauses should do more than rethrow"MINOR*java:Ï<p>A <code>catch</code> clause that only rethrows the caught exception has the same effect as omitting the <code>catch</code> altogether and letting
it bubble up automatically, but with more code and the additional detriment of leaving maintainers scratching their heads. </p>
<p>Such clauses should either be eliminated or populated with the appropriate logic.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public String readFile(File f) {
  StringBuilder sb = new StringBuilder();
  try {
    FileReader fileReader = new FileReader(fileName);
    BufferedReader bufferedReader = new BufferedReader(fileReader);

    while((line = bufferedReader.readLine()) != null) {
      //...
  }
  catch (IOException e) {  // Noncompliant
    throw e;
  }
  return sb.toString();
}
</pre>
<h2>Compliant Solution</h2>
<pre>
public String readFile(File f) {
  StringBuilder sb = new StringBuilder();
  try {
    FileReader fileReader = new FileReader(fileName);
    BufferedReader bufferedReader = new BufferedReader(fileReader);

    while((line = bufferedReader.readLine()) != null) {
      //...
  }
  catch (IOException e) {
    logger.LogError(e);
    throw e;
  }
  return sb.toString();
}
</pre>
<p>or</p>
<pre>
public String readFile(File f) throws IOException {
  StringBuilder sb = new StringBuilder();
  FileReader fileReader = new FileReader(fileName);
  BufferedReader bufferedReader = new BufferedReader(fileReader);

  while((line = bufferedReader.readLine()) != null) {
    //...

  return sb.toString();
}
</pre>Z
CODE_SMELL
ã
squid:EmptyFile˜
squid	EmptyFileFiles should not be empty"MINOR*java2S2309:ß<p>Files with no lines of code clutter a project and should be removed.</p>
<h2>Noncompliant Code Example</h2>
<pre>
//package org.foo;
//
//public class Bar {}
</pre>Z
CODE_SMELL
≥
squid:S2786£
squidS2786,Nested "enum"s should not be declared static"MINOR*java:À<p>According to <a href="http://docs.oracle.com/javase/specs/jls/se7/html/jls-8.html#jls-8.9">the docs</a>:</p>
<blockquote>
  Nested enum types are implicitly
  <code>static</code>.
</blockquote>
<p>So there's no need to declare them <code>static</code> explicitly.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public class Flower {
  static enum Color { // Noncompliant; static is redundant here
    RED, YELLOW, BLUE, ORANGE
  }

  // ...
}
</pre>
<h2>Compliant Solution</h2>
<pre>
public class Flower {
  enum Color { // Compliant
    RED, YELLOW, BLUE, ORANGE
  }

  // ...
}
</pre>Z
CODE_SMELL
ø
squid:S1698Ø
squidS1698<"==" and "!=" should not be used when "equals" is overridden"MINOR*java:«<p>It is equivalent to use the equality <code>==</code> operator and the <code>equals</code> method to compare two objects if the <code>equals</code>
method inherited from <code>Object</code> has not been overridden. In this case both checks compare the object references.</p>
<p>But as soon as <code>equals</code> is overridden, two objects not having the same reference but having the same value can be equal. This rule spots
suspicious uses of <code>==</code> and <code>!=</code> operators on objects whose <code>equals</code> methods are overridden.</p>
<h2>Noncompliant Code Example</h2>
<pre>
String firstName = getFirstName(); // String overrides equals
String lastName = getLastName();

if (firstName == lastName) { ... }; // Non-compliant; false even if the strings have the same value
</pre>
<h2>Compliant Solution</h2>
<pre>
String firstName = getFirstName();
String lastName = getLastName();

if (firstName != null &amp;&amp; firstName.equals(lastName)) { ... };
</pre>
<h2>Exceptions</h2>
<p>Comparing two instances of the <code>Class</code> object will not raise an issue:</p>
<pre>
Class c;
if(c == Integer.class) { // No issue raised
}
</pre>
<p>Comparing <code>Enum</code> will not raise an issue:</p>
<pre>
public enum Fruit {
   APPLE, BANANA, GRAPE
}
public boolean isFruitGrape(Fruit candidateFruit) {
  return candidateFruit == Fruit.GRAPE; // it's recommended to activate S4551 to enforce comparison of Enums using ==
}
</pre>
<p>Comparing with <code>final</code> reference will not raise an issue:</p>
<pre>
private static final Type DEFAULT = new Type();

void foo(Type other) {
  if (other == DEFAULT) { // Compliant
  //...
  }
}
</pre>
<p>Comparing with <code>this</code> will not raise an issue:</p>
<pre>
  public boolean equals(Object other) {
    if (this == other) {  // Compliant
      return false;
    }
 }
</pre>
<p>Comparing with <code>java.lang.String</code> and boxed types <code>java.lang.Integer</code>, ... will not raise an issue. </p>
<h2>See</h2>
<ul>
  <li> <a href='/coding_rules#rule_key=squid%3AS4973'>S4973</a> - Strings and Boxed types should be compared using "equals()" </li>
  <li> <a href="http://cwe.mitre.org/data/definitions/595.html">MITRE, CWE-595</a> - Comparison of Object References Instead of Object Contents </li>
  <li> <a href="http://cwe.mitre.org/data/definitions/597.html">MITRE, CWE-597</a> - Use of Wrong Operator in String Comparison </li>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/wwD1AQ">CERT, EXP03-J.</a> - Do not use the equality operators when comparing values of
  boxed primitives </li>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/8AEqAQ">CERT, EXP50-J.</a> - Do not confuse abstract object equality with reference
  equality </li>
</ul>Z
CODE_SMELL
õ
squid:S1213ã
squidS1213UThe members of an interface or class declaration should appear in a pre-defined order"MINOR*java:ä<p>According to the Java Code Conventions as defined by Oracle, the members of a class or interface declaration should appear in the following order
in the source files:</p>
<ul>
  <li> Class and instance variables </li>
  <li> Constructors </li>
  <li> Methods </li>
</ul>
<h2>Noncompliant Code Example</h2>
<pre>
public class Foo{
   private int field = 0;
   public boolean isTrue() {...}
   public Foo() {...}                         // Noncompliant, constructor defined after methods
   public static final int OPEN = 4;  //Noncompliant, variable defined after constructors and methods
}
</pre>
<h2>Compliant Solution</h2>
<pre>
public class Foo{
   public static final int OPEN = 4;
   private int field = 0;
   public Foo() {...}
   public boolean isTrue() {...}
}
</pre>Z
CODE_SMELL
§
squid:S1694î
squidS1694@An abstract class should have both abstract and concrete methods"MINOR*java:®
<p>The purpose of an abstract class is to provide some heritable behaviors while also defining methods which must be implemented by sub-classes.</p>
<p>A class with no abstract methods that was made abstract purely to prevent instantiation should be converted to a concrete class (i.e. remove the
<code>abstract</code> keyword) with a private constructor.</p>
<p>A class with only abstract methods and no inheritable behavior should be converted to an interface.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public abstract class Animal {  // Noncompliant; should be an interface
  abstract void move();
  abstract void feed();
}

public abstract class Color {  // Noncompliant; should be concrete with a private constructor
  private int red = 0;
  private int green = 0;
  private int blue = 0;

  public int getRed() {
    return red;
  }
}
</pre>
<h2>Compliant Solution</h2>
<pre>
public interface Animal {
  void move();
  void feed();
}

public class Color {
  private int red = 0;
  private int green = 0;
  private int blue = 0;

  private Color () {}

  public int getRed() {
    return red;
  }
}

public abstract class Lamp {

  private boolean switchLamp=false;

  public abstract void glow();

  public void flipSwitch() {
    switchLamp = !switchLamp;
    if (switchLamp) {
      glow();
    }
  }
}
</pre>Z
CODE_SMELL
º

squid:S1210¨

squidS1210R"equals(Object obj)" should be overridden along with the "compareTo(T obj)" method"MINOR*java:Æ	<p>According to the Java <code>Comparable.compareTo(T o)</code> documentation:</p>
<blockquote>
  <p>It is strongly recommended, but not strictly required that <code>(x.compareTo(y)==0) == (x.equals(y))</code>.</p>
  <p>Generally speaking, any class that implements the Comparable interface and violates this condition should clearly indicate this fact.</p>
  <p>The recommended language is "Note: this class has a natural ordering that is inconsistent with equals." </p>
</blockquote>
<p>If this rule is violated, weird and unpredictable failures can occur.</p>
<p>For example, in Java 5 the <code>PriorityQueue.remove()</code> method relied on <code>compareTo()</code>, but since Java 6 it has relied on
<code>equals()</code>.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public class Foo implements Comparable&lt;Foo&gt; {
  @Override
  public int compareTo(Foo foo) { /* ... */ }      // Noncompliant as the equals(Object obj) method is not overridden
}
</pre>
<h2>Compliant Solution</h2>
<pre>
public class Foo implements Comparable&lt;Foo&gt; {
  @Override
  public int compareTo(Foo foo) { /* ... */ }      // Compliant

  @Override
  public boolean equals(Object obj) { /* ... */ }
}
</pre>Z
CODE_SMELL
›
squid:S1450Õ
squidS1450TPrivate fields only used as local variables in methods should become local variables"MINOR*java:Õ<p>When the value of a private field is always assigned to in a class' methods before being read, then it is not being used to store class
information. Therefore, it should become a local variable in the relevant methods to prevent any misunderstanding.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public class Foo {
  private int a;
  private int b;

  public void doSomething(int y) {
    a = y + 5;
    ...
    if(a == 0) {
      ...
    }
    ...
  }

  public void doSomethingElse(int y) {
    b = y + 3;
    ...
  }
}
</pre>
<h2>Compliant Solution</h2>
<pre>
public class Foo {

  public void doSomething(int y) {
    int a = y + 5;
    ...
    if(a == 0) {
      ...
    }
  }

  public void doSomethingElse(int y) {
    int b = y + 3;
    ...
  }
}
</pre>
<h2>Exceptions</h2>
<p>This rule doesn't raise any issue on annotated field.</p>Z
CODE_SMELL
æ	
squid:S3878Æ	
squidS38783Arrays should not be created for varargs parameters"MINOR*java:œ<p>There's no point in creating an array solely for the purpose of passing it as a varargs (<code>...</code>) argument; varargs <em>is</em> an array.
Simply pass the elements directly. They will be consolidated into an array automatically. Incidentally passing an array where <code>Object ...</code>
is expected makes the intent ambiguous: Is the array supposed to be one object or a collection of objects?</p>
<h2>Noncompliant Code Example</h2>
<pre>
public void callTheThing() {
  //...
  doTheThing(new String[] { "s1", "s2"});  // Noncompliant: unnecessary
  doTheThing(new String[12]);  // Compliant
  doTheOtherThing(new String[8]);  // Noncompliant: ambiguous
  // ...
}

public void doTheThing (String ... args) {
  // ...
}

public void doTheOtherThing(Object ... args) {
  // ...
}
</pre>
<h2>Compliant Solution</h2>
<pre>
public void callTheThing() {
  //...
  doTheThing("s1", "s2");
  doTheThing(new String[12]);
  doTheOtherThing((Object[]) new String[8]);
   // ...
}

public void doTheThing (String ... args) {
  // ...
}

public void doTheOtherThing(Object ... args) {
  // ...
}
</pre>Z
CODE_SMELL
è
squid:S2676ˇ
squidS2676SNeither "Math.abs" nor negation should be used on numbers that could be "MIN_VALUE""MINOR*java:á<p>It is possible for a call to <code>hashCode</code> to return <code>Integer.MIN_VALUE</code>. Take the absolute value of such a hashcode and you'll
still have a negative number. Since your code is likely to assume that it's a positive value instead, your results will be unreliable.</p>
<p>Similarly, <code>Integer.MIN_VALUE</code> could be returned from <code>Random.nextInt()</code> or any object's <code>compareTo</code> method, and
<code>Long.MIN_VALUE</code> could be returned from <code>Random.nextLong()</code>. Calling <code>Math.abs</code> on values returned from these methods
is similarly ill-advised.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public void doSomething(String str) {
  if (Math.abs(str.hashCode()) &gt; 0) { // Noncompliant
    // ...
  }
}
</pre>
<h2>Compliant Solution</h2>
<pre>
public void doSomething(String str) {
  if (str.hashCode() != 0) {
    // ...
  }
}
</pre>ZBUG
π
squid:S3400©
squidS3400#Methods should not return constants"MINOR*java:⁄<p>There's no point in forcing the overhead of a method call for a method that always returns the same constant value. Even worse, the fact that a
method call must be made will likely mislead developers who call the method thinking that something more is done. Declare a constant instead. </p>
<p>This rule raises an issue if on methods that contain only one statement: the <code>return</code> of a constant value. </p>
<h2>Noncompliant Code Example</h2>
<pre>
int getBestNumber() {
  return 12;  // Noncompliant
}
</pre>
<h2>Compliant Solution</h2>
<pre>
static int bestNumber = 12;
</pre>
<h2>Exceptions</h2>
<p>Methods with annotations, such as <code>@Override</code> and Spring's <code>@RequestMapping</code>, are ignored.</p>Z
CODE_SMELL
◊
squid:S2674«
squidS26747The value returned from a stream read should be checked"MINOR*java:Î<p>You cannot assume that any given stream reading call will fill the <code>byte[]</code> passed in to the method. Instead, you must check the value
returned by the read method to see how many bytes were read. Fail to do so, and you introduce bug that is both harmful and difficult to reproduce.</p>
<p>Similarly, you cannot assume that <code>InputStream.skip</code> will actually skip the requested number of bytes, but must check the value returned
from the method.</p>
<p>This rule raises an issue when an <code>InputStream.read</code> method that accepts a <code>byte[]</code> is called, but the return value is not
checked, and when the return value of <code>InputStream.skip</code> is not checked. The rule also applies to <code>InputStream</code> child
classes.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public void doSomething(String fileName) {
  try {
    InputStream is = new InputStream(file);
    byte [] buffer = new byte[1000];
    is.read(buffer);  // Noncompliant
    // ...
  } catch (IOException e) { ... }
}
</pre>
<h2>Compliant Solution</h2>
<pre>
public void doSomething(String fileName) {
  try {
    InputStream is = new InputStream(file);
    byte [] buffer = new byte[1000];
    int count = 0;
    while (count = is.read(buffer) &gt; 0) {
      // ...
    }
  } catch (IOException e) { ... }
}
</pre>
<h2>See</h2>
<ul>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/XACSAQ">CERT, FIO10-J.</a> - Ensure the array is filled when using read() to fill an
  array </li>
</ul>ZBUG
û
squid:S1220é
squidS1220.The default unnamed package should not be used"MINOR*java:¥<p>According to the Java Language Specification:</p>
<blockquote>
  <p>Unnamed packages are provided by the Java platform principally for convenience when developing small or temporary applications or when just
  beginning development.</p>
</blockquote>
<p>To enforce this best practice, classes located in default package can no longer be accessed from named ones since Java 1.4.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public class MyClass { /* ... */ }
</pre>
<h2>Compliant Solution</h2>
<pre>
package org.example;

public class MyClass{ /* ... */ }
</pre>Z
CODE_SMELL
’
squid:S1228≈
squidS12287Packages should have a javadoc file 'package-info.java'"MINOR*java:‚<p>Each package in a Java project should include a <code>package-info.java</code> file. The purpose of this file is to document the Java package using
javadoc and declare package annotations.</p>
<h2>Compliant Solution</h2>
<pre>
/**
* This package has non null parameters and is documented.
**/
@ParametersAreNonnullByDefault
package org.foo.bar;
</pre>Z
CODE_SMELL
´
squid:S1226õ
squidS1226`Method parameters, caught exceptions and foreach variables' initial values should not be ignored"MINOR*java:ñ<p>While it is technically correct to assign to parameters from within method bodies, doing so before the parameter value is read is likely a bug.
Instead, initial values of parameters, caught exceptions, and foreach parameters should be, if not treated as <code>final</code>, then at least read
before reassignment.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public void doTheThing(String str, int i, List&lt;String&gt; strings) {
  str = Integer.toString(i); // Noncompliant

  for (String s : strings) {
    s = "hello world"; // Noncompliant
  }
}
</pre>
<h2>See</h2>
<ul>
  <li> MISRA C:2012, 17.8 - A function parameter should not be modified </li>
</ul>ZBUG
ª	
squid:S1312´	
squidS1312MLoggers should be "private static final" and should share a naming convention"MINOR*java:≤<p>Regardless of the logging framework in use (logback, log4j, commons-logging, java.util.logging, ...), loggers should be:</p>
<ul>
  <li> <code>private</code>: never be accessible outside of its parent class. If another class needs to log something, it should instantiate its own
  logger. </li>
  <li> <code>static</code>: not be dependent on an instance of a class (an object). When logging something, contextual information can of course be
  provided in the messages but the logger should be created at class level to prevent creating a logger along with each object. </li>
  <li> <code>final</code>: be created once and only once per class. </li>
</ul>
<h2>Noncompliant Code Example</h2>
<p>With a default regular expression of <code>LOG(?:GER)?</code>:</p>
<pre>
public Logger logger = LoggerFactory.getLogger(Foo.class);  // Noncompliant
</pre>
<h2>Compliant Solution</h2>
<pre>
private static final Logger LOGGER = LoggerFactory.getLogger(Foo.class);
</pre>
<h2>Exceptions</h2>
<p>Variables of type <code>org.apache.maven.plugin.logging.Log</code> are ignored.</p>Z
CODE_SMELL
ˆ
squid:S1310Ê
squidS1310*Track uses of "NOPMD" suppression comments"MINOR*java:ê<p>This rule allows you to track the use of the PMD suppression comment mechanism. </p>
<h2>Noncompliant Code Example</h2>
<pre>
// NOPMD
</pre>Z
CODE_SMELL
˜

squid:S1319Á

squidS1319ÇDeclarations should use Java collection interfaces such as "List" rather than specific implementation classes such as "LinkedList""MINOR*java:∏	<p>The purpose of the Java Collections API is to provide a well defined hierarchy of interfaces in order to hide implementation details.</p>
<p>Implementing classes must be used to instantiate new collections, but the result of an instantiation should ideally be stored in a variable whose
type is a Java Collection interface.</p>
<p>This rule raises an issue when an implementation class:</p>
<ul>
  <li> is returned from a <code>public</code> method. </li>
  <li> is accepted as an argument to a <code>public</code> method. </li>
  <li> is exposed as a <code>public</code> member. </li>
</ul>
<h2>Noncompliant Code Example</h2>
<pre>
public class Employees {
  private HashSet&lt;Employee&gt; employees = new HashSet&lt;Employee&gt;();  // Noncompliant - "employees" should have type "Set" rather than "HashSet"

  public HashSet&lt;Employee&gt; getEmployees() {                       // Noncompliant
    return employees;
  }
}
</pre>
<h2>Compliant Solution</h2>
<pre>
public class Employees {
  private Set&lt;Employee&gt; employees = new HashSet&lt;Employee&gt;();      // Compliant

  public Set&lt;Employee&gt; getEmployees() {                           // Compliant
    return employees;
  }
}
</pre>Z
CODE_SMELL
è
squid:S1315ˇ
squidS13153Track uses of "CHECKSTYLE:OFF" suppression comments"MINOR*java:†<p>This rule allows you to track the use of the Checkstyle suppression comment mechanism. </p>
<h2>Noncompliant Code Example</h2>
<pre>
// CHECKSTYLE:OFF
</pre>Z
CODE_SMELL
¢
squid:S1444í
squidS1444)"public static" fields should be constant"MINOR*java:∫<p>There is no good reason to declare a field "public" and "static" without also declaring it "final". Most of the time this is a kludge to share a
state among several objects. But with this approach, any object can do whatever it wants with the shared state, such as setting it to
<code>null</code>. </p>
<h2>Noncompliant Code Example</h2>
<pre>
public class Greeter {
  public static Foo foo = new Foo();
  ...
}
</pre>
<h2>Compliant Solution</h2>
<pre>
public class Greeter {
  public static final Foo FOO = new Foo();
  ...
}
</pre>
<h2>See</h2>
<ul>
  <li> <a href="http://cwe.mitre.org/data/definitions/500.html">MITRE, CWE-500</a> - Public Static Field Not Marked Final </li>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/QQBqAQ">CERT OBJ10-J.</a> - Do not use public static nonfinal fields </li>
</ul>ZVULNERABILITY
∑
squid:IndentationCheckú
squidIndentationCheck+Source code should be indented consistently"MINOR*java2S1120:≥<p>Proper indentation is a simple and effective way to improve the code's readability. Consistent indentation among the developers within a team also
reduces the differences that are committed to source control systems, making code reviews easier. </p>
<p>This rule raises an issue when indentation does not match the configured value. Only the first line of a badly indented section is reported.</p>
<h2>Noncompliant Code Example</h2>
<p>With an indent size of 2:</p>
<pre>
class Foo {
  public int a;
   public int b;   // Noncompliant, expected to start at column 4

...

  public void doSomething() {
    if(something) {
          doSomethingElse();  // Noncompliant, expected to start at column 6
  }   // Noncompliant, expected to start at column 4
  }
}
</pre>
<h2>Compliant Solution</h2>
<pre>
class Foo {
  public int a;
  public int b;

...

  public void doSomething() {
    if(something) {
        doSomethingElse();
    }
  }
}
</pre>Z
CODE_SMELL
Ü	
squid:S4838ˆ
squidS4838VAn iteration on a Collection should be performed on the type handled by the Collection"MINOR*java:Ù<p>This rule raises an issue when an iteration over the items of a <code>Collection</code> is performed on a super-type of the type handled by the
<code>Collection</code>.</p>
<p>Relying on <code>Object</code> or any classes between <code>Object</code> and the real class handled by the <code>Collection</code> is not
recommended. While it's accepted by the language, this practice reduces readability of the code and forces to down-cast the item of the
<code>Collection</code> to be able to call a method on it while simply using the correct type in the iteration makes things more clear and simple.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public Collection&lt;Person&gt; getPersons() { ... }

for (Object item : getPersons()) { // Noncompliant
  Person person = (Person) item; // Noncompliant; it's required to down-cast to the to correct type to use "item"
  person.getAdress();
}
</pre>
<h2>Compliant Solution</h2>
<pre>
for (Person person : getPersons()) { // Compliant
  person.getAddress() ;
}
</pre>Z
CODE_SMELL
ö

squid:S1449ä

squidS1449*Locale should be used in String operations"MINOR*java:¥	<p>Failure to specify a locale when calling the methods <code>toLowerCase()</code>, <code>toUpperCase()</code> or <code>format()</code> on
<code>String</code> objects means the system default encoding will be used, possibly creating problems with international characters or number
representations. For instance with the Turkish language, when converting the small letter 'i' to upper case, the result is capital letter 'I' with a
dot over it.</p>
<p>Case conversion without a locale may work fine in its "home" environment, but break in ways that are extremely difficult to diagnose for customers
who use different encodings. Such bugs can be nearly, if not completely, impossible to reproduce when it's time to fix them. For locale-sensitive
strings, the correct locale should always be used, but <code>Locale.ENGLISH</code> can be used for case-insensitive ones.</p>
<h2>Noncompliant Code Example</h2>
<pre>
myString.toLowerCase()
</pre>
<h2>Compliant Solution</h2>
<pre>
myString.toLowerCase(Locale.TR)
</pre>
<h2>See</h2>
<ul>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/EwAiAg">CERT, STR02-J.</a> - Specify an appropriate locale when comparing
  locale-dependent data </li>
</ul>Z
CODE_SMELL
Ã	
squid:S4719º	
squidS47190"StandardCharsets" constants should be preferred"MINOR*java:‡<p>JDK7 introduced the class <code>java.nio.charset.StandardCharsets</code>. It provides constants for all charsets that are guaranteed to be
available on every implementation of the Java platform.</p>
<ul>
  <li> ISO_8859_1 </li>
  <li> US_ASCII </li>
  <li> UTF_16 </li>
  <li> UTF_16BE </li>
  <li> UTF_16LE </li>
  <li> UTF_8 </li>
</ul>
<p>These constants should be preferred to:</p>
<p>- the use of a String such as "UTF-8" which has the drawback of requiring the <code>catch</code>/<code>throw</code> of an
<code>UnsupportedEncodingException</code> that will never actually happen</p>
<p>- the use of Guava‚Äôs <code>Charsets</code> class, which has been obsolete since JDK7</p>
<h2>Noncompliant Code Example</h2>
<pre>
try {
  byte[] bytes = string.getBytes("UTF-8"); // Noncompliant; use a String instead of StandardCharsets.UTF_8
} catch (UnsupportedEncodingException e) {
  throw new AssertionError(e);
}
// ...
byte[] bytes = string.getBytes(Charsets.UTF_8); // Noncompliant; Guava way obsolete since JDK7
</pre>
<h2>Compliant Solution</h2>
<pre>
byte[] bytes = string.getBytes(StandardCharsets.UTF_8)
</pre>Z
CODE_SMELL
 
squid:S3626∫
squidS3626'Jump statements should not be redundant"MINOR*java:Á<p>Jump statements such as <code>return</code> and <code>continue</code> let you change the default flow of program execution, but jump statements
that direct the control flow to the original direction are just a waste of keystrokes.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public void foo() {
  while (condition1) {
    if (condition2) {
      continue; // Noncompliant
    } else {
      doTheThing();
    }
  }
  return; // Noncompliant; this is a void method
}
</pre>
<h2>Compliant Solution</h2>
<pre>
public void foo() {
  while (condition1) {
    if (!condition2) {
      doTheThing();
    }
  }
}
</pre>Z
CODE_SMELL
À
squid:S1206ª
squidS1206C"equals(Object obj)" and "hashCode()" should be overridden in pairs"MINOR*java:”<p>According to the Java Language Specification, there is a contract between <code>equals(Object)</code> and <code>hashCode()</code>:</p>
<blockquote>
  <p>If two objects are equal according to the <code>equals(Object)</code> method, then calling the <code>hashCode</code> method on each of the two
  objects must produce the same integer result. </p>
  <p>It is not required that if two objects are unequal according to the <code>equals(java.lang.Object)</code> method, then calling the
  <code>hashCode</code> method on each of the two objects must produce distinct integer results.</p>
  <p>However, the programmer should be aware that producing distinct integer results for unequal objects may improve the performance of
  hashtables.</p>
</blockquote>
<p>In order to comply with this contract, those methods should be either both inherited, or both overridden.</p>
<h2>Noncompliant Code Example</h2>
<pre>
class MyClass {    // Noncompliant - should also override "hashCode()"

  @Override
  public boolean equals(Object obj) {
    /* ... */
  }

}
</pre>
<h2>Compliant Solution</h2>
<pre>
class MyClass {    // Compliant

  @Override
  public boolean equals(Object obj) {
    /* ... */
  }

  @Override
  public int hashCode() {
    /* ... */
  }

}
</pre>
<h2>See</h2>
<ul>
  <li> <a href="http://cwe.mitre.org/data/definitions/581.html">MITRE, CWE-581</a> - Object Model Violation: Just One of Equals and Hashcode Defined
  </li>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/EYYbAQ">CERT, MET09-J.</a> - Classes that define an equals() method must also define a
  hashCode() method </li>
</ul>ZBUG
≤
squid:S4087¢
squidS4087'"close()" calls should not be redundant"MINOR*java:œ<p>Java 7's try-with-resources structure automatically handles closing the resources that the <code>try</code> itself opens. Thus, adding an explicit
<code>close()</code> call is redundant and potentially confusing.</p>
<h2>Noncompliant Code Example</h2>
<pre>
try (PrintWriter writer = new PrintWriter(process.getOutputStream())) {
  String contents = file.contents();
  writer.write(new Gson().toJson(new MyObject(contents)));
  writer.flush();
  writer.close();  // Noncompliant
}
</pre>
<h2>Compliant Solution</h2>
<pre>
try (PrintWriter writer = new PrintWriter(process.getOutputStream())) {
  String contents = file.contents();
  writer.write(new Gson().toJson(new MyObject(contents)));
  writer.flush();
}
</pre>Z
CODE_SMELL
¶
#squid:RightCurlyBraceStartLineCheck˛
squidRightCurlyBraceStartLineCheck@A close curly brace should be located at the beginning of a line"MINOR*java2S1109:Û<p>Shared coding conventions make it possible for a team to efficiently collaborate. This rule makes it mandatory to place a close curly brace at the
beginning of a line.</p>
<h2>Noncompliant Code Example</h2>
<pre>
if(condition) {
  doSomething();}
</pre>
<h2>Compliant Solution</h2>
<pre>
if(condition) {
  doSomething();
}
</pre>
<h2>Exceptions</h2>
<p>When blocks are inlined (open and close curly braces on the same line), no issue is triggered. </p>
<pre>
if(condition) {doSomething();}
</pre>Z
CODE_SMELL
∑
squid:S1940ß
squidS1940%Boolean checks should not be inverted"MINOR*java:÷<p>It is needlessly complex to invert the result of a boolean comparison. The opposite comparison should be made instead.</p>
<h2>Noncompliant Code Example</h2>
<pre>
if ( !(a == 2)) { ...}  // Noncompliant
boolean b = !(i &lt; 10);  // Noncompliant
</pre>
<h2>Compliant Solution</h2>
<pre>
if (a != 2) { ...}
boolean b = (i &gt;= 10);
</pre>Z
CODE_SMELL
…
squid:S2912π
squidS2912,"indexOf" checks should use a start position"MINOR*java:·<p>One thing that makes good code good is the clarity with which it conveys the intent of the original programmer to maintainers, and the proper
choice of <code>indexOf</code> methods can help move code from confusing to clear.</p>
<p>If you need to see whether a substring is located beyond a certain point in a string, you can test the <code>indexOf</code> the substring versus
the target point, or you can use the version of <code>indexOf</code> which takes a starting point argument. The latter is arguably clearer because the
result is tested against -1, which is an easily recognizable "not found" indicator.</p>
<h2>Noncompliant Code Example</h2>
<pre>
String name = "ismael";

if (name.indexOf("ae") &gt; 2) { // Noncompliant
  // ...
}
</pre>
<h2>Compliant Solution</h2>
<pre>
String name = "ismael";

if (name.indexOf("ae", 2) &gt; -1) {
  // ...
}
</pre>Z
CODE_SMELL
‘
squid:S1943ƒ
squidS1943OClasses and methods that rely on the default system encoding should not be used"MINOR*java:…<p>Using classes and methods that rely on the default system encoding can result in code that works fine in its "home" environment. But that code may
break for customers who use different encodings in ways that are extremely difficult to diagnose and nearly, if not completely, impossible to
reproduce when it's time to fix them.</p>
<p>This rule detects uses of the following classes and methods:</p>
<ul>
  <li> <code>FileReader</code> </li>
  <li> <code>FileWriter</code> </li>
  <li> String constructors with a <code>byte[]</code> argument but no <code>Charset</code> argument
    <ul>
      <li> <code>String(byte[] bytes)</code> </li>
      <li> <code>String(byte[] bytes, int offset, int length)</code> </li>
    </ul> </li>
  <li> <code>String.getBytes()</code> </li>
  <li> <code>String.getBytes(int srcBegin, int srcEnd, byte[] dst, int dstBegin)</code> </li>
  <li> <code>InputStreamReader(InputStream in)</code> </li>
  <li> <code>OutputStreamWriter(OutputStream out)</code> </li>
  <li> <code>ByteArrayOutputStream.toString()</code> </li>
  <li> Some <code>Formatter</code> constructors
    <ul>
      <li> <code>Formatter(String fileName)</code> </li>
      <li> <code>Formatter(File file)</code> </li>
      <li> <code>Formatter(OutputStream os)</code> </li>
    </ul> </li>
  <li> Some <code>Scanner</code> constructors
    <ul>
      <li> <code>Scanner(File source)</code> </li>
      <li> <code>Scanner(Path source)</code> </li>
      <li> <code>Scanner(InputStream source)</code> </li>
    </ul> </li>
  <li> Some <code>PrintStream</code> constructors
    <ul>
      <li> <code>PrintStream(File file)</code> </li>
      <li> <code>PrintStream(OutputStream out)</code> </li>
      <li> <code>PrintStream(OutputStream out, boolean autoFlush)</code> </li>
      <li> <code>PrintStream(String fileName)</code> </li>
    </ul> </li>
  <li> Some <code>PrintWriter</code> constructors
    <ul>
      <li> <code>PrintWriter(File file)</code> </li>
      <li> <code>PrintWriter(OutputStream out)</code> </li>
      <li> <code>PrintWriter(OutputStream out, boolean autoFlush)</code> </li>
      <li> <code>PrintWriter(String fileName)</code> </li>
    </ul> </li>
  <li> methods from Apache commons-io library which accept an encoding argument when that argument is null, and overloads of those methods that omit
  the encoding argument
    <ul>
      <li> <code>IOUtils.copy(InputStream, Writer)</code> </li>
      <li> <code>IOUtils.copy(Reader, OutputStream)</code> </li>
      <li> <code>IOUtils.readLines(InputStream)</code> </li>
      <li> <code>IOUtils.toByteArray(Reader)</code> </li>
      <li> <code>IOUtils.toByteArray(String)</code> </li>
      <li> <code>IOUtils.toCharArray(InputStream)</code> </li>
      <li> <code>IOUtils.toInputStream(TypeCriteria.subtypeOf(CharSequence))</code> </li>
      <li> <code>IOUtils.toString(byte[])</code> </li>
      <li> <code>IOUtils.toString(URI)</code> </li>
      <li> <code>IOUtils.toString(URL)</code> </li>
      <li> <code>IOUtils.write(char[], OutputStream)</code> </li>
      <li> <code>IOUtils.write(CharSequence, OutputStream)</code> </li>
      <li> <code>IOUtils.writeLines(Collection, String, OutputStream)</code> </li>
      <li> <code>FileUtils.readFileToString(File)</code> </li>
      <li> <code>FileUtils.readLines(File)</code> </li>
      <li> <code>FileUtils.write(File, CharSequence)</code> </li>
      <li> <code>FileUtils.write(File, CharSequence, boolean)</code> </li>
      <li> <code>FileUtils.writeStringToFile(File, String)</code> </li>
    </ul> </li>
</ul>
<h2>See</h2>
<ul>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/FoL5AQ">CERT, STR04-J.</a> - Use compatible character encodings when communicating
  string data between JVMs </li>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/JgAWCQ">CERT, STR50-J.</a> - Use the appropriate method for counting characters in a
  string </li>
</ul>Z
CODE_SMELL
Ç
squid:S1942Ú
squidS1942!Simple class names should be used"MINOR*java:•<p>Java's <code>import</code> mechanism allows the use of simple class names. Therefore, using a class' fully qualified name in a file that
<code>import</code>s the class is redundant and confusing.</p>
<h2>Noncompliant Code Example</h2>
<pre>
import java.util.List;
import java.sql.Timestamp;

//...

java.util.List&lt;String&gt; myList;  // Noncompliant
java.sql.Timestamp tStamp; // Noncompliant
</pre>
<h2>Compliant Solution</h2>
<pre>
import java.util.List;
import java.sql.Timestamp;

//...

List&lt;String&gt; myList;
Timestamp tStamp;
</pre>Z
CODE_SMELL
∆
squid:S1941∂
squidS19419Variables should not be declared before they are relevant"MINOR*java:—<p>For the sake of clarity, variables should be declared as close to where they're used as possible. This is particularly true when considering
methods that contain early returns and the potential to throw exceptions. In these cases, it is not only pointless, but also confusing to declare a
variable that may never be used because conditions for an early return are met first.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public boolean isConditionMet(int a, int b) {
  int difference = a - b;
  MyClass foo = new MyClass(a);  // Noncompliant; not used before early return

  if (difference &lt; 0) {
    return false;
  }

  // ...

  if (foo.doTheThing()) {
    return true;
  }
  return false;
}
</pre>
<h2>Compliant Solution</h2>
<pre>
public boolean isConditionMet(int a, int b) {
  int difference = a - b;

  if (difference &lt; 0) {
    return false;
  }

  // ...

  MyClass foo = new MyClass(a);
  if (foo.doTheThing()) {
    return true;
  }
  return false;
}
</pre>Z
CODE_SMELL
≠
squid:S1905ù
squidS1905"Redundant casts should not be used"MINOR*java:œ<p>Unnecessary casting expressions make the code harder to read and understand.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public void example() {
  for (Foo obj : (List&lt;Foo&gt;) getFoos()) {  // Noncompliant; cast unnecessary because List&lt;Foo&gt; is what's returned
    //...
  }
}

public List&lt;Foo&gt; getFoos() {
  return this.foos;
}
</pre>
<h2>Compliant Solution</h2>
<pre>
public void example() {
  for (Foo obj : getFoos()) {
    //...
  }
}

public List&lt;Foo&gt; getFoos() {
  return this.foos;
}
</pre>
<h2>Exceptions</h2>
<p>Casting may be required to distinguish the method to call in the case of overloading:</p>
<pre>
class A {}
class B extends A{}
class C {
  void fun(A a){}
  void fun(B b){}

  void foo() {
    B b = new B();
    fun(b);
    fun((A) b); //call the first method so cast is not redundant.
  }

}
</pre>Z
CODE_SMELL
Ò
squid:S1939·
squidS19396Extensions and implementations should not be redundant"MINOR*java:ˇ<p>All classes extend <code>Object</code> implicitly. Doing so explicitly is redundant.</p>
<p>Further, declaring the implementation of an interface <em>and</em> one if its parents is also redundant. If you implement the interface, you also
implicitly implement its parents and there's no need to do so explicitly.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public interface MyFace {
  // ...
}

public interface MyOtherFace extends MyFace {
  // ...
}

public class Foo
    extends Object // Noncompliant
    implements MyFace, MyOtherFace {  // Noncompliant
  //...
}
</pre>
<h2>Compliant Solution</h2>
<pre>
public interface MyFace {
  // ...
}

public interface MyOtherFace extends MyFace {
  // ...
}

public class Foo implements MyOtherFace {
  //...
}
</pre>Z
CODE_SMELL
≤	
-squid:RightCurlyBraceSameLineAsNextBlockCheckÄ	
squid'RightCurlyBraceSameLineAsNextBlockCheckhClose curly brace and the next "else", "catch" and "finally" keywords should be located on the same line"MINOR*java2S1107:√<p>Shared coding conventions make it possible for a team to collaborate efficiently.</p>
<p>This rule makes it mandatory to place closing curly braces on the same line as the next <code>else</code>, <code>catch</code> or
<code>finally</code> keywords.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public void myMethod() {
  if(something) {
    executeTask();
  } else if (somethingElse) {
    doSomethingElse();
  }
  else {                               // Noncompliant
     generateError();
  }

  try {
    generateOrder();
  } catch (Exception e) {
    log(e);
  }
  finally {                            // Noncompliant
    closeConnection();
  }
}
</pre>
<h2>Compliant Solution</h2>
<pre>
public void myMethod() {
  if(something) {
    executeTask();
  } else if (somethingElse) {
    doSomethingElse();
  } else {
     generateError();
  }

  try {
    generateOrder();
  } catch (Exception e) {
    log(e);
  } finally {
    closeConnection();
  }
}
</pre>Z
CODE_SMELL
Ú
squid:S4065‚
squidS4065-"ThreadLocal.withInitial" should be preferred"MINOR*java:â<p>Java 8 introduced <code>ThreadLocal.withInitial</code> which is a simpler alternative to creating an anonymous inner class to initialise a
<code>ThreadLocal</code> instance.</p>
<p>This rule raises an issue when a <code>ThreadLocal</code> anonymous inner class can be replaced by a call to
<code>ThreadLocal.withInitial</code>.</p>
<h2>Noncompliant Code Example</h2>
<pre>
ThreadLocal&lt;List&lt;String&gt;&gt; myThreadLocal =
    new ThreadLocal&lt;List&lt;String&gt;&gt;() { // Noncompliant
        @Override
        protected List&lt;String&gt; initialValue() {
            return new ArrayList&lt;String&gt;();
        }
    };
</pre>
<h2>Compliant Solution</h2>
<pre>
ThreadLocal&lt;List&lt;String&gt;&gt; myThreadLocal = ThreadLocal.withInitial(ArrayList::new);
</pre>Z
CODE_SMELL
ı
squid:CallToDeprecatedMethod‘
squidCallToDeprecatedMethod%"@Deprecated" code should not be used"MINOR*java2S1874:Î
<p>Once deprecated, classes, and interfaces, and their members should be avoided, rather than used, inherited or extended. Deprecation is a warning
that the class or interface has been superseded, and will eventually be removed. The deprecation period allows you to make a smooth transition away
from the aging, soon-to-be-retired technology.</p>
<h2>Noncompliant Code Example</h2>
<pre>
/**
 * @deprecated  As of release 1.3, replaced by {@link #Fee}
 */
@Deprecated
public class Fum { ... }

public class Foo {
  /**
   * @deprecated  As of release 1.7, replaced by {@link #doTheThingBetter()}
   */
  @Deprecated
  public void doTheThing() { ... }

  public void doTheThingBetter() { ... }
}

public class Bar extends Foo {
  public void doTheThing() { ... } // Noncompliant; don't override a deprecated method or explicitly mark it as @Deprecated
}

public class Bar extends Fum {  // Noncompliant; Fum is deprecated

  public void myMethod() {
    Foo foo = new Foo();  // okay; the class isn't deprecated
    foo.doTheThing();  // Noncompliant; doTheThing method is deprecated
  }
}
</pre>
<h2>See</h2>
<ul>
  <li> <a href="http://cwe.mitre.org/data/definitions/477.html">MITRE, CWE-477</a> - Use of Obsolete Functions </li>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/KgAVAg">CERT, MET02-J.</a> - Do not use deprecated or obsolete classes or methods </li>
</ul>Z
CODE_SMELL
Å
squid:S1610Ò
squidS1610AAbstract classes without fields should be converted to interfaces"MINOR*java:Ñ<p>With Java 8's "default method" feature, any abstract class without direct or inherited field should be converted into an interface. However, this
change may not be appropriate in libraries or other applications where the class is intended to be used as an API.</p>
<p><strong>Note</strong> that this rule is automatically disabled when the project's <code>sonar.java.source</code> is lower than <code>8</code>.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public abstract class Car {
  public abstract void start(Environment c);

  public void stop(Environment c) {
    c.freeze(this);
  }
}
</pre>
<h2>Compliant Solution</h2>
<pre>
public interface Car {
  public void start(Environment c);

  public default void stop(Environment c) {
    c.freeze(this);
  }
}
</pre>Z
CODE_SMELL
 
squid:S1858∫
squidS18586"toString()" should never be called on a String object"MINOR*java:ÿ<p>Invoking a method designed to return a string representation of an object which is already a string is a waste of keystrokes. This redundant
construction may be optimized by the compiler, but will be confusing in the meantime.</p>
<h2>Noncompliant Code Example</h2>
<pre>
String message = "hello world";
System.out.println(message.toString()); // Noncompliant;
</pre>
<h2>Compliant Solution</h2>
<pre>
String message = "hello world";
System.out.println(message);
</pre>Z
CODE_SMELL
Ñ
squid:S1612Ù
squidS16121Lambdas should be replaced with method references"MINOR*java:ó<p>Method/constructor references are more compact and readable than using lambdas, and are therefore preferred. Similarly, <code>null</code> checks
can be replaced with references to the <code>Objects::isNull</code> and <code>Objects::nonNull</code> methods.</p>
<p><strong>Note</strong> that this rule is automatically disabled when the project's <code>sonar.java.source</code> is lower than <code>8</code>.</p>
<h2>Noncompliant Code Example</h2>
<pre>
class A {
  void process(List&lt;A&gt; list) {
    list.stream()
      .map(a -&gt; a.&lt;String&gt;getObject())
      .forEach(a -&gt; { System.out.println(a); });
  }

  &lt;T&gt; T getObject() {
    return null;
  }
}
</pre>
<h2>Compliant Solution</h2>
<pre>
class A {
  void process(List&lt;A&gt; list) {
    list.stream()
      .map(A::&lt;String&gt;getObject)
      .forEach(System.out::println);
  }

  &lt;T&gt; T getObject() {
    return null;
  }
}
</pre>Z
CODE_SMELL
À
squid:S1611ª
squidS1611\Parentheses should be removed from a single lambda input parameter when its type is inferred"MINOR*java:≥<p>There are two possible syntaxes for a lambda having only one input parameter with an inferred type: with and without parentheses around that single
parameter. The simpler syntax, without parentheses, is more compact and readable than the one with parentheses, and is therefore preferred.</p>
<p><strong>Note</strong> that this rule is automatically disabled when the project's <code>sonar.java.source</code> is lower than <code>8</code>.</p>
<h2>Noncompliant Code Example</h2>
<pre>
(x) -&gt; x * 2
</pre>
<h2>Compliant Solution</h2>
<pre>
x -&gt; x * 2
</pre>Z
CODE_SMELL
õ
squid:S2959ã
squidS2959(Unnecessary semicolons should be omitted"MINOR*java:∑<p>Under the reasoning that cleaner code is better code, the semicolon at the end of a try-with-resources construct should be omitted because it can
be omitted.</p>
<h2>Noncompliant Code Example</h2>
<pre>
try (ByteArrayInputStream b = new ByteArrayInputStream(new byte[10]);  // ignored; this one's required
      Reader r = new InputStreamReader(b);)   // Noncompliant
{
   //do stuff
}
</pre>
<h2>Compliant Solution</h2>
<pre>
try (ByteArrayInputStream b = new ByteArrayInputStream(new byte[10]);
      Reader r = new InputStreamReader(b))
{
   //do stuff
}
</pre>Z
CODE_SMELL
Â
squid:S1989’
squidS19894Exceptions should not be thrown from servlet methods"MINOR*java:Ú<p>Even though the signatures for methods in a servlet include <code>throws IOException, ServletException</code>, it's a bad idea to let such
exceptions be thrown. Failure to catch exceptions in a servlet could leave a system in a vulnerable state, possibly resulting in denial-of-service
attacks, or the exposure of sensitive information because when a servlet throws an exception, the servlet container typically sends debugging
information back to the user. And that information could be very valuable to an attacker. </p>
<p>This rule checks all exceptions in methods named "do*" are explicitly handled in servlet classes.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public void doGet(HttpServletRequest request, HttpServletResponse response)
  throws IOException, ServletException {
  String ip = request.getRemoteAddr();
  InetAddress addr = InetAddress.getByName(ip); // Noncompliant; getByName(String) throws UnknownHostException
  //...
}
</pre>
<h2>Compliant Solution</h2>
<pre>
public void doGet(HttpServletRequest request, HttpServletResponse response)
  throws IOException, ServletException {
  try {
    String ip = request.getRemoteAddr();
    InetAddress addr = InetAddress.getByName(ip);
    //...
  }
  catch (UnknownHostException uhex) {
    //...
  }
}
</pre>
<h2>See</h2>
<ul>
  <li> <a href="http://cwe.mitre.org/data/definitions/600.html">MITRE, CWE-600</a> - Uncaught Exception in Servlet </li>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/s4EVAQ">CERT, ERR01-J.</a> - Do not allow exceptions to expose sensitive information
  </li>
  <li> OWASP Top 10 2017 Category A3 - Sensitive Data Exposure </li>
</ul>ZVULNERABILITY
Ø	
squid:S2924ü	
squidS2924JUnit rules should be used"MINOR*java:Ÿ<p>While some <code>TestRule</code> classes have the desired effect without ever being directly referenced by a test, several others do not, and
there's no reason to leave them cluttering up the file if they're not in use.</p>
<p>This rule raises an issue when <code>Test</code> class fields of the following types aren't used by any of the test methods:
<code>TemporaryFolder</code>, and <code>TestName</code>.</p>
<p>This rule also applies to the JUnit 5 equivalent classes: <code>TempDir</code>, and <code>TestInfo</code>.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public class ProjectDefinitionTest {

  @Rule
  public TemporaryFolder temp = new TemporaryFolder();  // Noncompliant

  @Test
  public void shouldSetKey() {
    ProjectDefinition def = ProjectDefinition.create();
    def.setKey("mykey");
    assertThat(def.getKey(), is("mykey"));
  }
}
</pre>
<h2>Compliant Solution</h2>
<pre>
public class ProjectDefinitionTest {

  @Test
  public void shouldSetKey() {
    ProjectDefinition def = ProjectDefinition.create();
    def.setKey("mykey");
    assertThat(def.getKey(), is("mykey"));
  }
}
</pre>Z
CODE_SMELL
¨
squid:S1710ú
squidS1710,Annotation repetitions should not be wrapped"MINOR*java:ƒ<p>Before Java 8 if you needed to use multiple instances of the same annotation, they had to be wrapped in a container annotation. With Java 8, that's
no longer necessary, allowing for cleaner, more readable code.</p>
<p><strong>Note</strong> that this rule is automatically disabled when the project's <code>sonar.java.source</code> is lower than <code>8</code>.</p>
<h2>Noncompliant Code Example</h2>
<pre>
@SomeAnnotations({  // Noncompliant
  @SomeAnnotation(..a..),
  @SomeAnnotation(..b..),
  @SomeAnnotation(..c..),
})
public class SomeClass {
  ...
}
</pre>
<h2>Compliant Solution</h2>
<pre>
@SomeAnnotation(..a..)
@SomeAnnotation(..b..)
@SomeAnnotation(..c..)
public class SomeClass {
  ...
}
</pre>Z
CODE_SMELL
π
squid:S1602©
squidS1602OLamdbas containing only one statement should not nest this statement in a block"MINOR*java:Æ<p>There are two ways to write lambdas that contain single statement, but one is definitely more compact and readable than the other.</p>
<p><strong>Note</strong> that this rule is automatically disabled when the project's <code>sonar.java.source</code> is lower than <code>8</code>.</p>
<h2>Noncompliant Code Example</h2>
<pre>
x -&gt; {System.out.println(x+1);}
(a, b) -&gt; { return a+b; }
</pre>
<h2>Compliant Solution</h2>
<pre>
x -&gt; System.out.println(x+1)
(a, b) -&gt; a+b    //For return statement, the return keyword should also be dropped
</pre>Z
CODE_SMELL
å

squid:S135˝
squidS135KLoops should not contain more than a single "break" or "continue" statement"MINOR*java:á<p>Restricting the number of <code>break</code> and <code>continue</code> statements in a loop is done in the interest of good structured programming.
</p>
<p>One <code>break</code> and <code>continue</code> statement is acceptable in a loop, since it facilitates optimal coding. If there is more than one,
the code should be refactored to increase readability.</p>
<h2>Noncompliant Code Example</h2>
<pre>
for (int i = 1; i &lt;= 10; i++) {     // Noncompliant - 2 continue - one might be tempted to add some logic in between
  if (i % 2 == 0) {
    continue;
  }

  if (i % 3 == 0) {
    continue;
  }

  System.out.println("i = " + i);
}
</pre>Z
CODE_SMELL
œ
squid:S3038ø
squidS3038(Abstract methods should not be redundant"MINOR*java:Î<p>There's no point in redundantly defining an <code>abstract</code> method with the same signature as a method in an <code>interface</code> that the
class <code>implements</code>. Any concrete child classes will have to implement the method either way.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public interface Reportable {
  String getReport();
}

public abstract class AbstractRuleReport implements Reportable{
  public abstract String getReport();  // Noncompliant

  // ...
}
</pre>Z
CODE_SMELL
‰
squid:S3398‘
squidS3398O"private" methods called only by inner classes should be moved to those classes"MINOR*java:Ÿ<p>When a <code>private</code> method is only invoked by an inner class, there's no reason not to move it into that class. It will still have the same
access to the outer class' members, but the outer class will be clearer and less cluttered.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public class Outie {
  private int i=0;

  private void increment() {  // Noncompliant
    i++;
  }

  public class Innie {
    public void doTheThing() {
      Outie.this.increment();
    }
  }
}
</pre>
<h2>Compliant Solution</h2>
<pre>
public class Outie {
  private int i=0;

  public class Innie {
    public void doTheThing() {
      Outie.this.increment();
    }

    private void increment() {
      Outie.this.i++;
    }
  }
}
</pre>Z
CODE_SMELL
Ñ
squid:S2065Ù
squidS2065<Fields in non-serializable classes should not be "transient""MINOR*java:å<p><code>transient</code> is used to mark fields in a <code>Serializable</code> class which will not be written out to file (or stream). In a class
that does not implement <code>Serializable</code>, this modifier is simply wasted keystrokes, and should be removed.</p>
<h2>Noncompliant Code Example</h2>
<pre>
class Vegetable {  // does not implement Serializable
  private transient Season ripe;  // Noncompliant
  // ...
}
</pre>
<h2>Compliant Solution</h2>
<pre>
class Vegetable {
  private Season ripe;
  // ...
}
</pre>Z
CODE_SMELL
§
squid:S4488î
squidS44887Composed "@RequestMapping" variants should be preferred"MINOR*java:±<p>Spring framework 4.3 introduced variants of the <code>@RequestMapping</code> annotation to better represent the semantics of the annotated methods.
The use of <code>@GetMapping</code>, <code>@PostMapping</code>, <code>@PutMapping</code>, <code>@PatchMapping</code> and <code>@DeleteMapping</code>
should be preferred to the use of the raw <code>@RequestMapping(method = RequestMethod.XYZ)</code>.</p>
<h1>Noncompliant Code Example</h1>
<pre>
@RequestMapping(path = "/greeting", method = RequestMethod.GET) // Noncompliant
public Greeting greeting(@RequestParam(value = "name", defaultValue = "World") String name) {
...
}
</pre>
<h1>Compliant Solution</h1>
<pre>
@GetMapping(path = "/greeting") // Compliant
public Greeting greeting(@RequestParam(value = "name", defaultValue = "World") String name) {
...
}
</pre>Z
CODE_SMELL
π

squid:S2066©

squidS2066K"Serializable" inner classes of non-serializable classes should be "static""MINOR*java:π	<p>Serializing a non-<code>static</code> inner class will result in an attempt at serializing the outer class as well. If the outer class is not
serializable, then serialization will fail, resulting in a runtime error. </p>
<p>Making the inner class <code>static</code> (i.e. "nested") avoids this problem, therefore inner classes should be <code>static</code> if possible.
However, you should be aware that there are semantic differences between an inner class and a nested one: </p>
<ul>
  <li> an inner class can only be instantiated within the context of an instance of the outer class. </li>
  <li> a nested (<code>static</code>) class can be instantiated independently of the outer class. </li>
</ul>
<h2>Noncompliant Code Example</h2>
<pre>
public class Pomegranate {
  // ...

  public class Seed implements Serializable {  // Noncompliant; serialization will fail
    // ...
  }
}
</pre>
<h2>Compliant Solution</h2>
<pre>
public class Pomegranate {
  // ...

  public static class Seed implements Serializable {
    // ...
  }
}
</pre>
<h2>See</h2>
<ul>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/O4CpAQ">CERT SER05-J.</a> - Do not serialize instances of inner classes </li>
</ul>ZBUG
ã
squid:S2184˚
squidS2184.Math operands should be cast before assignment"MINOR*java:®<p>When arithmetic is performed on integers, the result will always be an integer. You can assign that result to a <code>long</code>,
<code>double</code>, or <code>float</code> with automatic type conversion, but having started as an <code>int</code> or <code>long</code>, the result
will likely not be what you expect. </p>
<p>For instance, if the result of <code>int</code> division is assigned to a floating-point variable, precision will have been lost before the
assignment. Likewise, if the result of multiplication is assigned to a <code>long</code>, it may have already overflowed before the assignment.</p>
<p>In either case, the result will not be what was expected. Instead, at least one operand should be cast or promoted to the final type before the
operation takes place.</p>
<h2>Noncompliant Code Example</h2>
<pre>
float twoThirds = 2/3; // Noncompliant; int division. Yields 0.0
long millisInYear = 1_000*3_600*24*365; // Noncompliant; int multiplication. Yields 1471228928
long bigNum = Integer.MAX_VALUE + 2; // Noncompliant. Yields -2147483647
long bigNegNum =  Integer.MIN_VALUE-1; //Noncompliant, gives a positive result instead of a negative one.
Date myDate = new Date(seconds * 1_000); //Noncompliant, won't produce the expected result if seconds &gt; 2_147_483
...
public long compute(int factor){
  return factor * 10_000;  //Noncompliant, won't produce the expected result if factor &gt; 214_748
}

public float compute2(long factor){
  return factor / 123;  //Noncompliant, will be rounded to closest long integer
}
</pre>
<h2>Compliant Solution</h2>
<pre>
float twoThirds = 2f/3; // 2 promoted to float. Yields 0.6666667
long millisInYear = 1_000L*3_600*24*365; // 1000 promoted to long. Yields 31_536_000_000
long bigNum = Integer.MAX_VALUE + 2L; // 2 promoted to long. Yields 2_147_483_649
long bigNegNum =  Integer.MIN_VALUE-1L; // Yields -2_147_483_649
Date myDate = new Date(seconds * 1_000L);
...
public long compute(int factor){
  return factor * 10_000L;
}

public float compute2(long factor){
  return factor / 123f;
}
</pre>
<p>or</p>
<pre>
float twoThirds = (float)2/3; // 2 cast to float
long millisInYear = (long)1_000*3_600*24*365; // 1_000 cast to long
long bigNum = (long)Integer.MAX_VALUE + 2;
long bigNegNum =  (long)Integer.MIN_VALUE-1;
Date myDate = new Date((long)seconds * 1_000);
...
public long compute(long factor){
  return factor * 10_000;
}

public float compute2(float factor){
  return factor / 123;
}
</pre>
<h2>See</h2>
<ul>
  <li> MISRA C++:2008, 5-0-8 - An explicit integral or floating-point conversion shall not increase the size of the underlying type of a cvalue
  expression. </li>
  <li> <a href="http://cwe.mitre.org/data/definitions/190">MITRE, CWE-190</a> - Integer Overflow or Wraparound </li>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/woIyAQ">CERT, NUM50-J.</a> - Convert integers to floating point for floating-point
  operations </li>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/AxE">CERT, INT18-C.</a> - Evaluate integer expressions in a larger size before
  comparing or assigning to that size </li>
  <li> <a href="https://www.sans.org/top25-software-errors/#cat2">SANS Top 25</a> - Risky Resource Management </li>
</ul>ZBUG
Î
squid:S3032€
squidS3032,JEE applications should not "getClassLoader""MINOR*java:ä<p>Using the standard <code>getClassLoader()</code> may not return the <em>right</em> class loader in a JEE context. Instead, go through the
<code>currentThread</code>.</p>
<h2>Noncompliant Code Example</h2>
<pre>
ClassLoader cl = this.getClass().getClassLoader();  // Noncompliant
</pre>
<h2>Compliant Solution</h2>
<pre>
ClassLoader cl = Thread.currentThread().getContextClassLoader();
</pre>ZBUG
ﬁ

squid:S2183Œ

squidS2183PInts and longs should not be shifted by zero or more than their number of bits-1"MINOR*java:Ÿ	<p>Since an <code>int</code> is a 32-bit variable, shifting by more than +/-31 is confusing at best and an error at worst. When the runtime shifts
32-bit integers, it uses the lowest 5 bits of the shift count operand. In other words, shifting an <code>int</code> by 32 is the same as shifting it
by 0, and shifting it by 33 is the same as shifting it by 1.</p>
<p>Similarly, when shifting 64-bit integers, the runtime uses the lowest 6 bits of the shift count operand and shifting <code>long</code> by 64 is the
same as shifting it by 0, and shifting it by 65 is the same as shifting it by 1.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public int shift(int a) {
  int x = a &gt;&gt; 32; // Noncompliant
  return a &lt;&lt; 48;  // Noncompliant
}
</pre>
<h2>Compliant Solution</h2>
<pre>
public int shift(int a) {
  int x = a &gt;&gt; 31;
  return a &lt;&lt; 16;
}
</pre>
<h2>Exceptions</h2>
<p>This rule doesn't raise an issue when the shift by zero is obviously for cosmetic reasons:</p>
<ul>
  <li> When the value shifted is a literal. </li>
  <li> When there is a similar shift at the same position on line before or after. E.g.: </li>
</ul>
<pre>
bytes[loc+0] = (byte)(value &gt;&gt; 8);
bytes[loc+1] = (byte)(value &gt;&gt; 0);
</pre>ZBUG
Ë
squid:S3047ÿ
squidS30473Multiple loops over the same set should be combined"MINOR*java:˘<p>When a method loops multiple over the same set of data, whether it's a list or a set of numbers, it is highly likely that the method could be made
more efficient by combining the loops into a single set of iterations.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public void doSomethingToAList(List&lt;String&gt; strings) {
  for (String str : strings) {
    doStep1(str);
  }
  for (String str : strings) {  // Noncompliant
    doStep2(str);
  }
}
</pre>
<h2>Compliant Solution</h2>
<pre>
public void doSomethingToAList(List&lt;String&gt; strings) {
  for (String str : strings) {
    doStep1(str);
    doStep2(str);
  }
}
</pre>Z
CODE_SMELL
±
squid:EmptyStatementUsageChecké
squidEmptyStatementUsageCheck"Empty statements should be removed"MINOR*java2S1116:¶<p>Empty statements, i.e. <code>;</code>, are usually introduced by mistake, for example because:</p>
<ul>
  <li> It was meant to be replaced by an actual statement, but this was forgotten. </li>
  <li> There was a typo which lead the semicolon to be doubled, i.e. <code>;;</code>. </li>
</ul>
<h2>Noncompliant Code Example</h2>
<pre>
void doSomething() {
  ;                                                       // Noncompliant - was used as a kind of TODO marker
}

void doSomethingElse() {
  System.out.println("Hello, world!");;                     // Noncompliant - double ;
  ...
}
</pre>
<h2>Compliant Solution</h2>
<pre>
void doSomething() {}

void doSomethingElse() {
  System.out.println("Hello, world!");
  ...
  for (int i = 0; i &lt; 3; i++) ; // compliant if unique statement of a loop
  ...
}
</pre>
<h2>See</h2>
<ul>
  <li> MISRA C:2004, 14.3 - Before preprocessing, a null statement shall only occur on a line by itself; it may be followed by a comment provided that
  the first character following the null statement is a white-space character. </li>
  <li> MISRA C++:2008, 6-2-3 - Before preprocessing, a null statement shall only occur on a line by itself; it may be followed by a comment, provided
  that the first character following the null statement is a white-space character. </li>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/NYA5">CERT, MSC12-C.</a> - Detect and remove code that has no effect or is never
  executed </li>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/7gCTAw">CERT, MSC51-J.</a> - Do not place a semicolon immediately following an if, for,
  or while condition </li>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/i4FtAg">CERT, EXP15-C.</a> - Do not place a semicolon on the same line as an if, for,
  or while statement </li>
</ul>Z
CODE_SMELL
ñ
squid:S2196Ü
squidS2196>Switches should be used for sequences of simple "String" tests"MINOR*java:ú<p>Since Java 7, <code>String</code>s can be used as <code>switch</code> arguments. So when a single <code>String</code> is tested against three or
more values in an <code>if</code>/<code>else if</code> structure, it should be converted to a switch instead for greater readability.</p>
<p><strong>Note</strong> that this rule is automatically disabled when the project's <code>sonar.java.source</code> is lower than <code>7</code>.</p>
<h2>Noncompliant Code Example</h2>
<pre>
if ("red".equals(choice)) {  // Noncompliant
  dispenseRed();
} else if ("blue".equals(choice)) {
  dispenseBlue();
} else if ("yellow".equals(choice)) {
  dispenseYellow();
} else {
  promptUser();
}
</pre>
<h2>Compliant Solution</h2>
<pre>
switch(choice) {
  case "Red":
    dispenseRed();
    break;
  case "Blue":
    dispenseBlue():
    break;
  case "Yellow":
    dispenseYellow();
    break;
  default:
    promptUser();
    break;
}
</pre>Z
CODE_SMELL
≠
squid:S4349ù
squidS4349,"write(byte[],int,int)" should be overridden"MINOR*java:≈<p>When directly subclassing <code>java.io.OutputStream</code> or <code>java.io.FilterOutputStream</code>, the only requirement is that you implement
the method <code>write(int)</code>. However most uses for such streams don't write a single byte at a time and the default implementation for
<code>write(byte[],int,int)</code> will call <code>write(int)</code> for every single byte in the array which can create a lot of overhead and is
utterly inefficient. It is therefore strongly recommended that subclasses provide an efficient implementation of
<code>write(byte[],int,int)</code>.</p>
<p>This rule raises an issue when a direct subclass of <code>java.io.OutputStream</code> or <code>java.io.FilterOutputStream</code> doesn't provide an
override of <code>write(byte[],int,int)</code>.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public class MyStream extends OutputStream { // Noncompliant
    private FileOutputStream fout;

    public MyStream(File file) throws IOException {
        fout = new FileOutputStream(file);
    }

    @Override
    public void write(int b) throws IOException {
        fout.write(b);
    }

    @Override
    public void close() throws IOException {
        fout.write("\n\n".getBytes());
        fout.close();
        super.close();
    }
}
</pre>
<h2>Compliant Solution</h2>
<pre>
public class MyStream extends OutputStream {
    private FileOutputStream fout;

    public MyStream(File file) throws IOException {
        fout = new FileOutputStream(file);
    }

    @Override
    public void write(int b) throws IOException {
        fout.write(b);
    }

    @Override
    public void write(byte[] b, int off, int len) throws IOException {
        fout.write(b, off, len);
    }

    @Override
    public void close() throws IOException {
        fout.write("\n\n".getBytes());
        fout.close();
        super.close();
    }
}
</pre>
<h2>Exceptions</h2>
<p>This rule doesn't raise an issue when the class is declared <code>abstract</code>.</p>Z
CODE_SMELL
¿
squid:S1199∞
squidS1199%Nested code blocks should not be used"MINOR*java:ﬂ<p>Nested code blocks can be used to create a new scope and restrict the visibility of the variables defined inside it. Using this feature in a method
typically indicates that the method has too many responsibilities, and should be refactored into smaller methods.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public void evaluate(int operator) {
  switch (operator) {
    /* ... */
    case ADD: {                                // Noncompliant - nested code block '{' ... '}'
        int a = stack.pop();
        int b = stack.pop();
        int result = a + b;
        stack.push(result);
        break;
      }
    /* ... */
  }
}
</pre>
<h2>Compliant Solution</h2>
<pre>
public void evaluate(int operator) {
  switch (operator) {
    /* ... */
    case ADD:                                  // Compliant
      evaluateAdd();
      break;
    /* ... */
  }
}

private void evaluateAdd() {
  int a = stack.pop();
  int b = stack.pop();
  int result = a + b;
  stack.push(result);
}
</pre>Z
CODE_SMELL
„
squid:S2167”
squidS21671"compareTo" should not return "Integer.MIN_VALUE""MINOR*java:˝<p>It is the sign, rather than the magnitude of the value returned from <code>compareTo</code> that matters. Returning <code>Integer.MIN_VALUE</code>
does <em>not</em> convey a higher degree of inequality, and doing so can cause errors because the return value of <code>compareTo</code> is sometimes
inversed, with the expectation that negative values become positive. However, inversing <code>Integer.MIN_VALUE</code> yields
<code>Integer.MIN_VALUE</code> rather than <code>Integer.MAX_VALUE</code>.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public int compareTo(MyClass) {
  if (condition) {
    return Integer.MIN_VALUE;  // Noncompliant
  }
</pre>
<h2>Compliant Solution</h2>
<pre>
public int compareTo(MyClass) {
  if (condition) {
    return -1;
  }
</pre>ZBUG
Ü
squid:S1197ˆ
squidS1197>Array designators "[]" should be on the type, not the variable"MINOR*java:å<p>Array designators should always be located on the type for better code readability. Otherwise, developers must look both at the type and the
variable name to know whether or not a variable is an array.</p>
<h2>Noncompliant Code Example</h2>
<pre>
int matrix[][];   // Noncompliant
int[] matrix[];   // Noncompliant
</pre>
<h2>Compliant Solution</h2>
<pre>
int[][] matrix;   // Compliant
</pre>Z
CODE_SMELL
§	
squid:S2164î	
squidS2164&Math should not be performed on floats"MINOR*java:…<p>For small numbers, <code>float</code> math has enough precision to yield the expected value, but for larger numbers, it does not.
<code>BigDecimal</code> is the best alternative, but if a primitive is required, use a <code>double</code>.</p>
<h2>Noncompliant Code Example</h2>
<pre>
float a = 16777216.0f;
float b = 1.0f;
float c = a + b; // Noncompliant; yields 1.6777216E7 not 1.6777217E7

double d = a + b; // Noncompliant; addition is still between 2 floats
</pre>
<h2>Compliant Solution</h2>
<pre>
float a = 16777216.0f;
float b = 1.0f;
BigDecimal c = BigDecimal.valueOf(a).add(BigDecimal.valueOf(b));

double d = (double)a + (double)b;
</pre>
<h2>Exceptions</h2>
<p>This rule doesn't raise an issue when the mathematical expression is only used to build a string.</p>
<pre>
System.out.println("["+getName()+"] " +
           "\n\tMax time to retrieve connection:"+(max/1000f/1000f)+" ms.");
</pre>
<h2>See</h2>
<ul>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/DgU">CERT, FLP02-C.</a> - Avoid using floating-point numbers when precise computation
  is needed </li>
</ul>ZBUG
Ê
squid:S3254÷
squidS3254EDefault annotation parameter values should not be passed as arguments"MINOR*java:Â<p>Specifying the default value for an annotation parameter is redundant. Such values should be omitted in the interests of readability.</p>
<h2>Noncompliant Code Example</h2>
<pre>
@MyAnnotation(arg = "def")  // Noncompliant
public class MyClass {
  // ...
}
public @interface MyAnnotation {
  String arg() default "def";
}
</pre>
<h2>Compliant Solution</h2>
<pre>
@MyAnnotation
public class MyClass {
  // ...
}
public @interface MyAnnotation {
  String arg() default "def";
}
</pre>Z
CODE_SMELL
©
squid:S2165ô
squidS2165*"finalize" should not set fields to "null""MINOR*java:√<p>There is no point in setting class fields to <code>null</code> in a finalizer. If this this is a hint to the garbage collector, it is unnecessary -
the object will be garbage collected anyway - and doing so may actually cause extra work for the garbage collector.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public class Foo {
  private String name;

  @Override
  void finalize() {
    name = null;  // Noncompliant; completely unnecessary
</pre>Z
CODE_SMELL
˚
squid:S1075Î
squidS1075URIs should not be hardcoded"MINOR*java:£<p>Hard coding a URI makes it difficult to test a program: path literals are not always portable across operating systems, a given absolute path may
not exist on a specific test environment, a specified Internet URL may not be available when executing the tests, production environment filesystems
usually differ from the development environment, ...etc. For all those reasons, a URI should never be hard coded. Instead, it should be replaced by
customizable parameter.</p>
<p>Further even if the elements of a URI are obtained dynamically, portability can still be limited if the path-delimiters are hard-coded.</p>
<p>This rule raises an issue when URI's or path delimiters are hard coded.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public class Foo {
  public Collection&lt;User&gt; listUsers() {
    File userList = new File("/home/mylogin/Dev/users.txt"); // Non-Compliant
    Collection&lt;User&gt; users = parse(userList);
    return users;
  }
}
</pre>
<h2>Compliant Solution</h2>
<pre>
public class Foo {
  // Configuration is a class that returns customizable properties: it can be mocked to be injected during tests.
  private Configuration config;
  public Foo(Configuration myConfig) {
    this.config = myConfig;
  }
  public Collection&lt;User&gt; listUsers() {
    // Find here the way to get the correct folder, in this case using the Configuration object
    String listingFolder = config.getProperty("myApplication.listingFolder");
    // and use this parameter instead of the hard coded path
    File userList = new File(listingFolder, "users.txt"); // Compliant
    Collection&lt;User&gt; users = parse(userList);
    return users;
  }
}
</pre>
<h2>See</h2>
<ul>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/qQCHAQ">CERT, MSC03-J.</a> - Never hard code sensitive information </li>
</ul>Z
CODE_SMELL
—
squid:S2162¡
squidS2162<"equals" methods should be symmetric and work for subclasses"MINOR*java:‡<p>A key facet of the <code>equals</code> contract is that if <code>a.equals(b)</code> then <code>b.equals(a)</code>, i.e. that the relationship is
symmetric. </p>
<p>Using <code>instanceof</code> breaks the contract when there are subclasses, because while the child is an <code>instanceof</code> the parent, the
parent is not an <code>instanceof</code> the child. For instance, assume that <code>Raspberry extends Fruit</code> and adds some fields (requiring a
new implementation of <code>equals</code>):</p>
<pre>
Fruit fruit = new Fruit();
Raspberry raspberry = new Raspberry();

if (raspberry instanceof Fruit) { ... } // true
if (fruit instanceof Raspberry) { ... } // false
</pre>
<p>If similar <code>instanceof</code> checks were used in the classes' <code>equals</code> methods, the symmetry principle would be broken:</p>
<pre>
raspberry.equals(fruit); // false
fruit.equals(raspberry); //true
</pre>
<p>Additionally, non <code>final</code> classes shouldn't use a hardcoded class name in the <code>equals</code> method because doing so breaks the
method for subclasses. Instead, make the comparison dynamic.</p>
<p>Further, comparing to an unrelated class type breaks the contract for that unrelated type, because while
<code>thisClass.equals(unrelatedClass)</code> can return true, <code>unrelatedClass.equals(thisClass)</code> will not.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public class Fruit extends Food {
  private Season ripe;

  public boolean equals(Object obj) {
    if (obj == this) {
      return true;
    }
    if (obj == null) {
      return false;
    }
    if (Fruit.class == obj.getClass()) { // Noncompliant; broken for child classes
      return ripe.equals(((Fruit)obj).getRipe());
    }
    if (obj instanceof Fruit ) {  // Noncompliant; broken for child classes
      return ripe.equals(((Fruit)obj).getRipe());
    }
    else if (obj instanceof Season) { // Noncompliant; symmetry broken for Season class
      // ...
    }
    //...
</pre>
<h2>Compliant Solution</h2>
<pre>
public class Fruit extends Food {
  private Season ripe;

  public boolean equals(Object obj) {
    if (obj == this) {
      return true;
    }
    if (obj == null) {
      return false;
    }
    if (this.getClass() == obj.getClass()) {
      return ripe.equals(((Fruit)obj).getRipe());
    }
    return false;
}
</pre>
<h2>See</h2>
<ul>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/zIUbAQ">CERT, MET08-J.</a> - Preserve the equality contract when overriding the
  equals() method </li>
</ul>ZBUG
«
squid:S1195∑
squidS1195LArray designators "[]" should be located after the type in method signatures"MINOR*java:ø<p>According to the Java Language Specification: </p>
<blockquote>
  <p>For compatibility with older versions of the Java SE platform,</p>
  <p>the declaration of a method that returns an array is allowed to place (some or all of) the empty bracket pairs that form the declaration of the
  array type after the formal parameter list.</p>
  <p>This obsolescent syntax should not be used in new code.</p>
</blockquote>
<h2>Noncompliant Code Example</h2>
<pre>
public int getVector()[] { /* ... */ }    // Noncompliant

public int[] getMatrix()[] { /* ... */ }  // Noncompliant
</pre>
<h2>Compliant Solution</h2>
<pre>
public int[] getVector() { /* ... */ }

public int[][] getMatrix() { /* ... */ }
</pre>Z
CODE_SMELL
…
squid:S3373π
squidS3373<"action" mappings should not have too many "forward" entries"MINOR*java:—<p>It makes sense to handle all related actions in the same place. Thus, the same <code>&lt;action&gt;</code> might logically handle all facets of
CRUD on an entity, with no confusion in the naming about which <code>&lt;forward/&gt;</code> handles which facet. But go very far beyond that, and it
becomes difficult to maintain a transparent naming convention. </p>
<p>So to ease maintenance, this rule raises an issue when an <code>&lt;action&gt;</code> has more than the allowed number of
<code>&lt;forward/&gt;</code> tags.</p>
<h2>Noncompliant Code Example</h2>
<p>With the default threshold of 4:</p>
<pre>
&lt;action path='/book' type='myapp.BookDispatchAction' name='form' parameter='method'&gt;
  &lt;forward name='create' path='/WEB-INF/jsp/BookCreate.jspx' redirect='false'/&gt;
  &lt;forward name='read' path='/WEB-INF/jsp/BookDetails' redirect='false'/&gt;
  &lt;forward name='update' path='/WEB-INF/jsp/BookUpdate.jspx' redirect='false'/&gt;
  &lt;forward name='delete' path='/WEB-INF/jsp/BookDelete.jspx' redirect='false'/&gt;
  &lt;forward name='authorRead' path='WEB-INF/jsp/AuthorDetails' redirect='false'/&gt;  &lt;!-- Noncompliant --&gt;
&lt;/action&gt;
</pre>
<h2>Compliant Solution</h2>
<pre>
&lt;action path='/book' type='myapp.BookDispatchAction' name='bookForm' parameter='method'&gt;
  &lt;forward name='create' path='/WEB-INF/jsp/BookCreate.jspx' redirect='false'/&gt;
  &lt;forward name='read' path='/WEB-INF/jsp/BookDetails' redirect='false'/&gt;
  &lt;forward name='update' path='/WEB-INF/jsp/BookUpdate.jspx' redirect='false'/&gt;
  &lt;forward name='delete' path='/WEB-INF/jsp/BookDelete.jspx' redirect='false'/&gt;
&lt;/action&gt;

&lt;action path='/author' type='myapp.AuthorDispatchAction' name='authorForm' parameter='method'&gt;
  &lt;forward name='authorRead' path='WEB-INF/jsp/AuthorDetails' redirect='false'/&gt;
&lt;/action&gt;
</pre>Z
CODE_SMELL
˚
squid:S2160Î
squidS21603Subclasses that add fields should override "equals""MINOR*java:å<p>Extend a class that overrides <code>equals</code> and add fields without overriding <code>equals</code> in the subclass, and you run the risk of
non-equivalent instances of your subclass being seen as equal, because only the superclass fields will be considered in the equality test.</p>
<p>This rule looks for classes that do all of the following:</p>
<ul>
  <li> extend classes that override <code>equals</code>. </li>
  <li> do not themselves override <code>equals</code>. </li>
  <li> add fields. </li>
</ul>
<h2>Noncompliant Code Example</h2>
<pre>
public class Fruit {
  private Season ripe;

  public boolean equals(Object obj) {
    if (obj == this) {
      return true;
    }
    if (this.class != obj.class) {
      return false;
    }
    Fruit fobj = (Fruit) obj;
    if (ripe.equals(fobj.getRipe()) {
      return true;
    }
    return false;
  }
}

public class Raspberry extends Fruit {  // Noncompliant; instances will use Fruit's equals method
  private Color ripeColor;
}
</pre>
<h2>Compliant Solution</h2>
<pre>
public class Fruit {
  private Season ripe;

  public boolean equals(Object obj) {
    if (obj == this) {
      return true;
    }
    if (this.class != obj.class) {
      return false;
    }
    Fruit fobj = (Fruit) obj;
    if (ripe.equals(fobj.getRipe()) {
      return true;
    }
    return false;
  }
}

public class Raspberry extends Fruit {
  private Color ripeColor;

  public boolean equals(Object obj) {
    if (! super.equals(obj)) {
      return false;
    }
    Raspberry fobj = (Raspberry) obj;
    if (ripeColor.equals(fobj.getRipeColor()) {  // added fields are tested
      return true;
    }
    return false;
  }
}
</pre>Z
CODE_SMELL
ñ
squid:S2059Ü
squidS2059G"Serializable" inner classes of "Serializable" classes should be static"MINOR*java:ì
<p>Serializing a non-<code>static</code> inner class will result in an attempt at serializing the outer class as well. If the outer class is actually
serializable, then the serialization will succeed but possibly write out far more data than was intended. </p>
<p>Making the inner class <code>static</code> (i.e. "nested") avoids this problem, therefore inner classes should be <code>static</code> if possible.
However, you should be aware that there are semantic differences between an inner class and a nested one: </p>
<ul>
  <li> an inner class can only be instantiated within the context of an instance of the outer class. </li>
  <li> a nested (<code>static</code>) class can be instantiated independently of the outer class. </li>
</ul>
<h2>Noncompliant Code Example</h2>
<pre>
public class Raspberry implements Serializable {
  // ...

  public class Drupelet implements Serializable {  // Noncompliant; output may be too large
    // ...
  }
}
</pre>
<h2>Compliant Solution</h2>
<pre>
public class Raspberry implements Serializable {
  // ...

  public static class Drupelet implements Serializable {
    // ...
  }
}
</pre>
<h2>See</h2>
<ul>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/O4CpAQ">CERT, SER05-J.</a> - Do not serialize instances of inner classes </li>
</ul>Z
CODE_SMELL
Ê
squid:S2055÷
squidS2055`The non-serializable super class of a "Serializable" class should have a no-argument constructor"MINOR*java:—<p>When a <code>Serializable</code> object has a non-serializable ancestor in its inheritance chain, object deserialization (re-instantiating the
object from file) starts at the first non-serializable class, and proceeds down the chain, adding the properties of each subsequent child class, until
the final object has been instantiated. </p>
<p>In order to create the non-serializable ancestor, its no-argument constructor is called. Therefore the non-serializable ancestor of a
<code>Serializable</code> class must have a no-arg constructor. Otherwise the class is <code>Serializable</code> but not deserializable.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public class Fruit {
  private Season ripe;

  public Fruit (Season ripe) {...}
  public void setRipe(Season ripe) {...}
  public Season getRipe() {...}
}

public class Raspberry extends Fruit
        implements Serializable {  // Noncompliant; nonserializable ancestor doesn't have no-arg constructor
  private static final long serialVersionUID = 1;

  private String variety;

  public Raspberry(Season ripe, String variety) { ...}
  public void setVariety(String variety) {...}
  public String getVarity() {...}
}
</pre>
<h2>Compliant Solution</h2>
<pre>
public class Fruit {
  private Season ripe;

  public Fruit () {...};  // Compliant; no-arg constructor added to ancestor
  public Fruit (Season ripe) {...}
  public void setRipe(Season ripe) {...}
  public Season getRipe() {...}
}

public class Raspberry extends Fruit
        implements Serializable {
  private static final long serialVersionUID = 1;

  private String variety;

  public Raspberry(Season ripe, String variety) {...}
  public void setVariety(String variety) {...}
  public String getVarity() {...}
}
</pre>ZBUG
ó
"squid:ClassVariableVisibilityCheck
squidClassVariableVisibilityCheck:Class variable fields should not have public accessibility"MINOR*java2S1104:È
<p>Public class variable fields do not respect the encapsulation principle and has three main disadvantages:</p>
<ul>
  <li> Additional behavior such as validation cannot be added. </li>
  <li> The internal representation is exposed, and cannot be changed afterwards. </li>
  <li> Member values are subject to change from anywhere in the code and may not meet the programmer's assumptions. </li>
</ul>
<p>By using private attributes and accessor methods (set and get), unauthorized modifications are prevented.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public class MyClass {

  public static final int SOME_CONSTANT = 0;     // Compliant - constants are not checked

  public String firstName;                       // Noncompliant

}
</pre>
<h2>Compliant Solution</h2>
<pre>
public class MyClass {

  public static final int SOME_CONSTANT = 0;     // Compliant - constants are not checked

  private String firstName;                      // Compliant

  public String getFirstName() {
    return firstName;
  }

  public void setFirstName(String firstName) {
    this.firstName = firstName;
  }

}
</pre>
<h2>Exceptions</h2>
<p>Because they are not modifiable, this rule ignores <code>public final</code> fields.</p>
<h2>See</h2>
<ul>
  <li> <a href="http://cwe.mitre.org/data/definitions/493.html">MITRE, CWE-493</a> - Critical Public Variable Without Final Modifier </li>
</ul>ZVULNERABILITY
¥	
2squid:RightCurlyBraceDifferentLineAsNextBlockCheck˝
squid,RightCurlyBraceDifferentLineAsNextBlockCheckfClose curly brace and the next "else", "catch" and "finally" keywords should be on two different lines"MINOR*java2S1108:Ω<p>Shared coding conventions make it possible for a team to collaborate efficiently.</p>
<p>This rule makes it mandatory to place a closing curly brace and the next <code>else</code>, <code>catch</code> or <code>finally</code> keyword on
two different lines.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public void myMethod() {
  if(something) {
    executeTask();
  } else if (somethingElse) {          // Noncompliant
    doSomethingElse();
  }
  else {                               // Compliant
     generateError();
  }

  try {
    generateOrder();
  } catch (Exception e) {
    log(e);
  }
  finally {
    closeConnection();
  }
}
</pre>
<h2>Compliant Solution</h2>
<pre>
public void myMethod() {
  if(something) {
    executeTask();
  }
  else if (somethingElse) {
    doSomethingElse();
  }
  else {
     generateError();
  }

  try {
    generateOrder();
  }
  catch (Exception e) {
    log(e);
  }
  finally {
    closeConnection();
  }
}
</pre>Z
CODE_SMELL
≠
"squid:LeftCurlyBraceStartLineCheckÜ
squidLeftCurlyBraceStartLineCheck@An open curly brace should be located at the beginning of a line"MINOR*java2S1106:¸<p>Shared coding conventions make it possible to collaborate efficiently. This rule makes it mandatory to place the open curly brace at the beginning
of a line.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public void myMethod {  // Noncompliant
  if(something) {  // Noncompliant
    executeTask();
  } else {  // Noncompliant
    doSomethingElse();
  }
}
</pre>
<h2>Compliant Solution</h2>
<pre>
public void myMethod
{
  if(something)
  {
    executeTask();
  } else
  {
    doSomethingElse();
  }
}
</pre>Z
CODE_SMELL
⁄
squid:S3020 
squidS30206"toArray" should be passed an array of the proper type"MINOR*java:Ô<p>Given no arguments, the <code>Collections.toArray</code> method returns an <code>Object []</code>, which will cause a
<code>ClassCastException</code> at runtime if you try to cast it to an array of the proper class. Instead, pass an array of the correct type in to the
call.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public String [] getStringArray(List&lt;String&gt; strings) {
  return (String []) strings.toArray();  // Noncompliant; ClassCastException thrown
}
</pre>
<h2>Compliant Solution</h2>
<pre>
public String [] getStringArray(List&lt;String&gt; strings) {
  return strings.toArray(new String[0]);
}
</pre>ZBUG
«
%squid:RedundantThrowsDeclarationCheckù
squidRedundantThrowsDeclarationCheck/"throws" declarations should not be superfluous"MINOR*java2S1130:°<p>An exception in a <code>throws</code> declaration in Java is superfluous if it is:</p>
<ul>
  <li> listed multiple times </li>
  <li> a subclass of another listed exception </li>
  <li> a <code>RuntimeException</code>, or one of its descendants </li>
  <li> completely unnecessary because the declared exception type cannot actually be thrown </li>
</ul>
<h2>Noncompliant Code Example</h2>
<pre>
void foo() throws MyException, MyException {}  // Noncompliant; should be listed once
void bar() throws Throwable, Exception {}  // Noncompliant; Exception is a subclass of Throwable
void baz() throws RuntimeException {}  // Noncompliant; RuntimeException can always be thrown
</pre>
<h2>Compliant Solution</h2>
<pre>
void foo() throws MyException {}
void bar() throws Throwable {}
void baz() {}
</pre>
<h2>Exceptions</h2>
<p>The rule will not raise any issue for exceptions that cannot be thrown from the method body:</p>
<ul>
  <li> in overriding and implementation methods </li>
  <li> in interface <code>default</code> methods </li>
  <li> in non-private methods that only <code>throw</code>, have empty bodies, or a single return statement . </li>
  <li> in overridable methods (non-final, or not member of a final class, non-static, non-private), if the exception is documented with a proper
  javadoc. </li>
</ul>
<pre>
class A extends B {
  @Override
  void doSomething() throws IOException {
    compute(a);
  }

  public void foo() throws IOException {}

  protected void bar() throws IOException {
    throw new UnsupportedOperationException("This method should be implemented in subclasses");
  }

  Object foobar(String s) throws IOException {
    return null;
  }

  /**
   * @throws IOException Overriding classes may throw this exception if they print values into a file
   */
  protected void print() throws IOException { // no issue, method is overridable and the exception has proper javadoc
    System.out.println("foo");
  }
}
</pre>Z
CODE_SMELL
ﬁ
squid:S2293Œ
squidS2293*The diamond operator ("<>") should be used"MINOR*java:¯<p>Java 7 introduced the diamond operator (<code>&lt;&gt;</code>) to reduce the verbosity of generics code. For instance, instead of having to declare
a <code>List</code>'s type in both its declaration and its constructor, you can now simplify the constructor declaration with <code>&lt;&gt;</code>,
and the compiler will infer the type.</p>
<p><strong>Note</strong> that this rule is automatically disabled when the project's <code>sonar.java.source</code> is lower than <code>7</code>.</p>
<h2>Noncompliant Code Example</h2>
<pre>
List&lt;String&gt; strings = new ArrayList&lt;String&gt;();  // Noncompliant
Map&lt;String,List&lt;Integer&gt;&gt; map = new HashMap&lt;String,List&lt;Integer&gt;&gt;();  // Noncompliant
</pre>
<h2>Compliant Solution</h2>
<pre>
List&lt;String&gt; strings = new ArrayList&lt;&gt;();
Map&lt;String,List&lt;Integer&gt;&gt; map = new HashMap&lt;&gt;();
</pre>Z
CODE_SMELL
˙	
squid:S3077Í	
squidS3077-Non-primitive fields should not be "volatile""MINOR*java:ò	<p>Marking an array <code>volatile</code> means that the array itself will always be read fresh and never thread cached, but the items <em>in</em> the
array will not be. Similarly, marking a mutable object field <code>volatile</code> means the object <em>reference</em> is <code>volatile</code> but
the object itself is not, and other threads may not see updates to the object state.</p>
<p>This can be salvaged with arrays by using the relevant AtomicArray class, such as <code>AtomicIntegerArray</code>, instead. For mutable objects,
the <code>volatile</code> should be removed, and some other method should be used to ensure thread-safety, such as synchronization, or ThreadLocal
storage.</p>
<h2>Noncompliant Code Example</h2>
<pre>
private volatile int [] vInts;  // Noncompliant
private volatile MyObj myObj;  // Noncompliant
</pre>
<h2>Compliant Solution</h2>
<pre>
private AtomicIntegerArray vInts;
private MyObj myObj;
</pre>
<h2>See</h2>
<ul>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/twD1AQ">CERT, CON50-J.</a> - Do not assume that declaring a reference volatile
  guarantees safe publication of the members of the referenced object </li>
</ul>ZBUG
Õ
squid:TrailingCommentCheckÆ
squidTrailingCommentCheck:Comments should not be located at the end of lines of code"MINOR*java2S139:≥<p>This rule verifies that single-line comments are not located at the ends of lines of code. The main idea behind this rule is that in order to be
really readable, trailing comments would have to be properly written and formatted (correct alignment, no interference with the visual structure of
the code, not too long to be visible) but most often, automatic code formatters would not handle this correctly: the code would end up less readable.
Comments are far better placed on the previous empty line of code, where they will always be visible and properly formatted.</p>
<h2>Noncompliant Code Example</h2>
<pre>
int a1 = b + c; // This is a trailing comment that can be very very long
</pre>
<h2>Compliant Solution</h2>
<pre>
// This very long comment is better placed before the line of code
int a2 = b + c;
</pre>Z
CODE_SMELL
ˆ
squid:S4174Ê
squidS4174>Local constants should follow naming conventions for constants"MINOR*java:¸<p>Shared coding conventions allow teams to collaborate efficiently. This rule checks that all local, <code>final</code>, initialized, primitive
variables, have names that match a provided regular expression.</p>
<h2>Noncompliant Code Example</h2>
<p>With the default regular expression <code>^[A-Z][A-Z0-9]*(_[A-Z0-9]+)*$</code>:</p>
<pre>
public void doSomething() {
  final int local = 42;
  ...
}
</pre>
<h2>Compliant Solution</h2>
<pre>
public void doSomething() {
  final int LOCAL = 42;
  ...
}
</pre>Z
CODE_SMELL
ï
squid:S4266Ö
squidS42660"Stream.collect()" calls should not be redundant"MINOR*java:©<p>When using the <code>Stream</code> API, call chains should be simplified as much as possible to improve readability and maintainability.</p>
<p>This rule raises an issue when one of the following substitution can be made:</p>
<table>
  <tbody>
    <tr>
      <th>Original</th>
      <th>Preferred</th>
    </tr>
    <tr>
      <td><code>stream.collect(counting())</code></td>
      <td><code>stream.count()</code></td>
    </tr>
    <tr>
      <td><code>stream.collect(maxBy(comparator))</code></td>
      <td><code>stream.max(comparator)</code></td>
    </tr>
    <tr>
      <td><code>stream.collect(minBy(comparator))</code></td>
      <td><code>stream.min(comparator)</code></td>
    </tr>
    <tr>
      <td><code>stream.collect(mapping(mapper))</code></td>
      <td><code>stream.map(mapper).collect()</code></td>
    </tr>
    <tr>
      <td><code>stream.collect(reducing(...))</code></td>
      <td><code>stream.reduce(...)</code></td>
    </tr>
    <tr>
      <td><code>stream.collect(summingInt(mapper))</code></td>
      <td><code>stream.mapToInt(mapper).sum()</code></td>
    </tr>
    <tr>
      <td><code>stream.collect(summingLong(mapper))</code></td>
      <td><code>stream.mapToLong(mapper).sum()</code></td>
    </tr>
    <tr>
      <td><code>stream.collect(summingDouble(mapper))</code></td>
      <td><code>stream.mapToDouble(mapper).sum()</code></td>
    </tr>
  </tbody>
</table>
<h2>Noncompliant Code Example</h2>
<pre>
int count = stream.collect(counting());  // Noncompliant
</pre>
<h2>Compliant Solution</h2>
<pre>
int count = stream.count();
</pre>Z
CODE_SMELL
™
squid:S3052ö
squidS30522Fields should not be initialized to default values"MINOR*java:º<p>The compiler automatically initializes class fields to their default values before setting them with any initialization values, so there is no need
to explicitly set a field to its default value. Further, under the logic that cleaner code is better code, it's considered poor style to do so.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public class MyClass {

  int count = 0;  // Noncompliant
  // ...

}
</pre>
<h2>Compliant Solution</h2>
<pre>
public class MyClass {

  int count;
  // ...

}
</pre>
<h2>Exceptions</h2>
<p><code>final</code> fields are ignored.</p>Z
CODE_SMELL
æ
squid:ModifiersOrderCheck†
squidModifiersOrderCheck1Modifiers should be declared in the correct order"MINOR*java2S1124:Æ<p>The Java Language Specification recommends listing modifiers in the following order:</p>
<p>1. Annotations</p>
<p>2. public</p>
<p>3. protected</p>
<p>4. private</p>
<p>5. abstract</p>
<p>6. static</p>
<p>7. final</p>
<p>8. transient</p>
<p>9. volatile</p>
<p>10. synchronized</p>
<p>11. native</p>
<p>12. strictfp</p>
<p>Not following this convention has no technical impact, but will reduce the code's readability because most developers are used to the standard
order.</p>
<h2>Noncompliant Code Example</h2>
<pre>
static public void main(String[] args) {   // Noncompliant
}
</pre>
<h2>Compliant Solution</h2>
<pre>
public static void main(String[] args) {   // Compliant
}
</pre>Z
CODE_SMELL
’
squid:S4034≈
squidS40347"Stream" call chains should be simplified when possible"MINOR*java:‚
<p>When using the <code>Stream</code> API, call chains should be simplified as much as possible. Not only does it make the code easier to read, it
also avoid creating unnecessary temporary objects.</p>
<p>This rule raises an issue when one of the following substitution is possible:</p>
<table>
  <tbody>
    <tr>
      <th>Original</th>
      <th>Preferred</th>
    </tr>
    <tr>
      <td><code>stream.filter(predicate).findFirst().isPresent()</code></td>
      <td><code>stream.anyMatch(predicate)</code></td>
    </tr>
    <tr>
      <td><code>stream.filter(predicate).findAny().isPresent()</code></td>
      <td><code>stream.anyMatch(predicate)</code></td>
    </tr>
    <tr>
      <td><code>!stream.anyMatch(predicate)</code></td>
      <td><code>stream.noneMatch(predicate)</code></td>
    </tr>
    <tr>
      <td><code>!stream.anyMatch(x -&gt; !(...))</code></td>
      <td><code>stream.allMatch(...)</code></td>
    </tr>
    <tr>
      <td><code>stream.map(mapper).anyMatch(Boolean::booleanValue)</code></td>
      <td><code>stream.anyMatch(predicate)</code></td>
    </tr>
  </tbody>
</table>
<h2>Noncompliant Code Example</h2>
<pre>
boolean hasRed = widgets.stream().filter(w -&gt; w.getColor() == RED).findFirst().isPresent(); // Noncompliant
</pre>
<h2>Compliant Solution</h2>
<pre>
boolean hasRed = widgets.stream().anyMatch(w -&gt; w.getColor() == RED);
</pre>Z
CODE_SMELL
î'
squid:S4276Ñ'
squidS4276:Functional Interfaces should be as specialised as possible"MINOR*java:û&<p>The <code>java.util.function</code> package provides a large array of functional interface definitions for use in lambda expressions and method
references. In general it is recommended to use the more specialised form to avoid auto-boxing. For instance <code>IntFunction&lt;Foo&gt;</code>
should be preferred over <code>Function&lt;Integer, Foo&gt;</code>.</p>
<p>This rule raises an issue when any of the following substitution is possible:</p>
<table>
  <tbody>
    <tr>
      <th>Current Interface</th>
      <th>Preferred Interface</th>
    </tr>
    <tr>
      <td><code>Function&lt;Integer, R&gt;</code></td>
      <td><code>IntFunction&lt;R&gt;</code></td>
    </tr>
    <tr>
      <td><code>Function&lt;Long, R&gt;</code></td>
      <td><code>LongFunction&lt;R&gt;</code></td>
    </tr>
    <tr>
      <td><code>Function&lt;Double, R&gt;</code></td>
      <td><code>DoubleFunction&lt;R&gt;</code></td>
    </tr>
    <tr>
      <td><code>Function&lt;Double,Integer&gt;</code> </td>
      <td> <code>DoubleToIntFunction</code> </td>
    </tr>
    <tr>
      <td><code>Function&lt;Double,Long&gt;</code> </td>
      <td> <code>DoubleToLongFunction</code> </td>
    </tr>
    <tr>
      <td><code>Function&lt;Long,Double&gt;</code> </td>
      <td> <code>LongToDoubleFunction</code> </td>
    </tr>
    <tr>
      <td><code>Function&lt;Long,Integer&gt;</code> </td>
      <td> <code>LongToIntFunction</code></td>
    </tr>
    <tr>
      <td><code>Function&lt;R,Integer&gt;</code> </td>
      <td> <code>ToIntFunction&lt;R&gt;</code></td>
    </tr>
    <tr>
      <td><code>Function&lt;R,Long&gt;</code> </td>
      <td> <code>ToLongFunction&lt;R&gt;</code></td>
    </tr>
    <tr>
      <td><code>Function&lt;R,Double&gt;</code> </td>
      <td> <code>ToDoubleFunction&lt;R&gt;</code></td>
    </tr>
    <tr>
      <td><code>Function&lt;T,T&gt;</code> </td>
      <td> <code>UnaryOperator&lt;T&gt;</code> </td>
    </tr>
    <tr>
      <td><code>BiFunction&lt;T,T,T&gt;</code> </td>
      <td> <code>BinaryOperator&lt;T&gt;</code> </td>
    </tr>
    <tr>
      <td><code>Consumer&lt;Integer&gt;</code></td>
      <td><code>IntConsumer</code></td>
    </tr>
    <tr>
      <td><code>Consumer&lt;Double&gt;</code></td>
      <td><code>DoubleConsumer</code></td>
    </tr>
    <tr>
      <td><code>Consumer&lt;Long&gt;</code></td>
      <td><code>LongConsumer</code></td>
    </tr>
    <tr>
      <td><code>BiConsumer&lt;T,Integer&gt;</code> </td>
      <td> <code>ObjIntConsumer&lt;T&gt;</code></td>
    </tr>
    <tr>
      <td><code>BiConsumer&lt;T,Long&gt;</code> </td>
      <td> <code>ObjLongConsumer&lt;T&gt;</code></td>
    </tr>
    <tr>
      <td><code>BiConsumer&lt;T,Double&gt;</code> </td>
      <td> <code>ObjDoubleConsumer&lt;T&gt;</code></td>
    </tr>
    <tr>
      <td><code>Predicate&lt;Integer&gt;</code></td>
      <td><code>IntPredicate</code></td>
    </tr>
    <tr>
      <td><code>Predicate&lt;Double&gt;</code></td>
      <td><code>DoublePredicate</code></td>
    </tr>
    <tr>
      <td><code>Predicate&lt;Long&gt;</code></td>
      <td><code>LongPredicate</code></td>
    </tr>
    <tr>
      <td><code>Supplier&lt;Integer&gt;</code></td>
      <td><code>IntSupplier</code></td>
    </tr>
    <tr>
      <td><code>Supplier&lt;Double&gt;</code></td>
      <td><code>DoubleSupplier</code></td>
    </tr>
    <tr>
      <td><code>Supplier&lt;Long&gt;</code></td>
      <td><code>LongSupplier</code></td>
    </tr>
    <tr>
      <td><code>Supplier&lt;Boolean&gt;</code> </td>
      <td> <code>BooleanSupplier</code></td>
    </tr>
    <tr>
      <td><code>UnaryOperator&lt;Integer&gt;</code></td>
      <td><code>IntUnaryOperator</code></td>
    </tr>
    <tr>
      <td><code>UnaryOperator&lt;Double&gt;</code></td>
      <td><code>DoubleUnaryOperator</code></td>
    </tr>
    <tr>
      <td><code>UnaryOperator&lt;Long&gt;</code></td>
      <td><code>LongUnaryOperator</code></td>
    </tr>
    <tr>
      <td><code>BinaryOperator&lt;Integer&gt;</code> </td>
      <td> <code>IntBinaryOperator</code></td>
    </tr>
    <tr>
      <td><code>BinaryOperator&lt;Long&gt;</code> </td>
      <td> <code>LongBinaryOperator</code></td>
    </tr>
    <tr>
      <td><code>BinaryOperator&lt;Double&gt;</code> </td>
      <td> <code>DoubleBinaryOperator</code></td>
    </tr>
    <tr>
      <td><code>Function&lt;T, Boolean&gt;</code> </td>
      <td> <code>Predicate&lt;T&gt;</code></td>
    </tr>
    <tr>
      <td><code>BiFunction&lt;T,U,Boolean&gt;</code> </td>
      <td> <code>BiPredicate&lt;T,U&gt;</code></td>
    </tr>
  </tbody>
</table>
<h2>Noncompliant Code Example</h2>
<pre>
public class Foo implements Supplier&lt;Integer&gt; {  // Noncompliant
    @Override
    public Integer get() {
      // ...
    }
}
</pre>
<h2>Compliant Solution</h2>
<pre>
public class Foo implements IntSupplier {

  @Override
  public int getAsInt() {
    // ...
  }
}
</pre>Z
CODE_SMELL
÷
squid:S3066∆
squidS3066,"enum" fields should not be publicly mutable"MINOR*java:Î<p><code>enum</code>s are generally thought of as constant, but an <code>enum</code> with a <code>public</code> field or <code>public</code> setter is
not only non-constant, but also vulnerable to malicious code. Ideally fields in an <code>enum</code> are <code>private</code> and set in the
constructor, but if that's not possible, their visibility should be reduced as much as possible.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public enum Continent {

  NORTH_AMERICA (23, 24709000),
  // ...
  EUROPE (50, 39310000);

  public int countryCount;  // Noncompliant
  private int landMass;

  Continent(int countryCount, int landMass) {
    // ...
  }

  public void setLandMass(int landMass) {  // Noncompliant
    this.landMass = landMass;
  }
</pre>
<h2>Compliant Solution</h2>
<pre>
public enum Continent {

  NORTH_AMERICA (23, 24709000),
  // ...
  EUROPE (50, 39310000);

  private int countryCount;
  private int landMass;

  Continent(int countryCount, int landMass) {
    // ...
  }
</pre>ZVULNERABILITY
°
squid:S4032ë
squidS4032>Packages containing only "package-info.java" should be removed"MINOR*java:ß<p>There is no reason to have a package that is empty except for "package-info.java". Such packages merely clutter a project, taking up space but
adding no value. </p>Z
CODE_SMELL
—
squid:S2097¡
squidS2097."equals(Object obj)" should test argument type"MINOR*java:Ó<p>Because the <code>equals</code> method takes a generic <code>Object</code> as a parameter, any type of object may be passed to it. The method
should not assume it will only be used to test objects of its class type. It must instead check the parameter's type.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public boolean equals(Object obj) {
  MyClass mc = (MyClass)obj;  // Noncompliant
  // ...
}
</pre>
<h2>Compliant Solution</h2>
<pre>
public boolean equals(Object obj) {
  if (obj == null)
    return false;

  if (this.getClass() != obj.getClass())
    return false;

  MyClass mc = (MyClass)obj;
  // ...
}
</pre>ZBUG
ê
squid:S2094Ä
squidS2094Classes should not be empty"MINOR*java:π<p>There is no good excuse for an empty class. If it's being used simply as a common extension point, it should be replaced with an
<code>interface</code>. If it was stubbed in as a placeholder for future development it should be fleshed-out. In any other case, it should be
eliminated.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public class Nothing {  // Noncompliant
}
</pre>
<h2>Compliant Solution</h2>
<pre>
public interface Nothing {
}
</pre>
<h2>Exceptions</h2>
<p>Empty classes can be used as marker types (for Spring for instance), therefore empty classes that are annotated will be ignored.</p>
<pre>
@Configuration
@EnableWebMvc
public final class ApplicationConfiguration {

}
</pre>Z
CODE_SMELL
ˆ

squid:S899Á
squidS899OReturn values should not be ignored when they contain the operation status code"MINOR*java:Í<p>When the return value of a function call contain the operation status code, this value should be tested to make sure the operation completed
successfully.</p>
<p>This rule raises an issue when the return values of the following are ignored:</p>
<ul>
  <li> <code>java.io.File</code> operations that return a status code (except <code>mkdirs</code>) </li>
  <li> <code>Iterator.hasNext()</code> </li>
  <li> <code>Enumeration.hasMoreElements()</code> </li>
  <li> <code>Lock.tryLock()</code> </li>
  <li> non-void <code>Condition.await*</code> methods </li>
  <li> <code>CountDownLatch.await(long, TimeUnit)</code> </li>
  <li> <code>Semaphore.tryAcquire</code> </li>
  <li> <code>BlockingQueue</code>: <code>offer</code>, <code>remove</code> </li>
</ul>
<h2>Noncompliant Code Example</h2>
<pre>
public void doSomething(File file, Lock lock) {
  file.delete();  // Noncompliant
  // ...
  lock.tryLock(); // Noncompliant
}
</pre>
<h2>Compliant Solution</h2>
<pre>
public void doSomething(File file, Lock lock) {
  if (!lock.tryLock()) {
    // lock failed; take appropriate action
  }
  if (!file.delete()) {
    // file delete failed; take appropriate action
  }
}
</pre>
<h2>See</h2>
<ul>
  <li> MISRA C:2004, 16.10 - If a function returns error information, then that error information shall be tested </li>
  <li> MISRA C++:2008, 0-1-7 - The value returned by a function having a non-void return type that is not an overloaded operator shall always be used.
  </li>
  <li> MISRA C:2012, Dir. 4.7 - If a function returns error information, then that error information shall be tested </li>
  <li> MISRA C:2012, 17.7 - The value returned by a function having non-void return type shall be used </li>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/w4C4Ag">CERT, ERR33-C.</a> - Detect and handle standard library errors </li>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/iIBfBw">CERT, POS54-C.</a> - Detect and handle POSIX library errors </li>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/9gEqAQ">CERT, EXP00-J.</a> - Do not ignore values returned by methods </li>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/9YIRAQ">CERT, EXP12-C.</a> - Do not ignore values returned by functions </li>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/toHWAw">CERT, FIO02-J.</a> - Detect and handle file-related errors </li>
  <li> <a href="http://cwe.mitre.org/data/definitions/754">MITRE, CWE-754</a> - Improper Check for Unusual Exceptional Conditions </li>
</ul>ZVULNERABILITY
¨
xml:IllegalTabCheckî
xmlIllegalTabCheck(Tabulation characters should not be used"MINOR*xml:π<p>Developers should not need to configure the tab width of their text editors in order to be able to read source code.</p>
<p>So the use of the tabulation character must be banned.</p>Z
CODE_SMELL
Ë
xml:IndentCheck‘
xmlIndentCheck+Source code should be indented consistently"MINOR*xml:˙<p>Proper indentation is a simple and effective way to improve the code's readability. Consistent indentation among the developers within a team also
reduces the differences that are committed to source control systems, making code reviews easier. </p>
<p>By default this rule checks that each block of code is indented, although it does not check the size of the indent. Parameter "indentSize" allows
the expected indent size to be defined. Only the first line of a badly indented section is reported.</p>Z
CODE_SMELL
Ø
common-xml:FailedUnitTestsê

common-xmlFailedUnitTests!Failed unit tests should be fixed"MAJOR*xml:ºTest failures or errors generally indicate that regressions have been introduced. Those tests should be handled as soon as possible to reduce the cost to fix the corresponding regressions.ZBUG

common-xml:DuplicatedBlocks–

common-xmlDuplicatedBlocks2Source files should not have any duplicated blocks"MAJOR*xml:dAn issue is created on a file as soon as there is at least one block of duplicated code on this fileZ
CODE_SMELL
å
common-xml:SkippedUnitTestsÏ

common-xmlSkippedUnitTests4Skipped unit tests should be either removed or fixed"MAJOR*xml:~Skipped unit tests are considered as dead code. Either they should be activated again (and updated) or they should be removed.Z
CODE_SMELL
ö
%common-xml:InsufficientCommentDensity

common-xmlInsufficientCommentDensity>Source files should have a sufficient density of comment lines"MAJOR*xml:ÌAn issue is created on a file as soon as the density of comment lines on this file is less than the required threshold. The number of comment lines to be written in order to reach the required threshold is provided by each issue message.Z
CODE_SMELL
⁄
#common-xml:InsufficientLineCoverage≤

common-xmlInsufficientLineCoverage.Lines should have sufficient coverage by tests"MAJOR*xml:¡An issue is created on a file as soon as the line coverage on this file is less than the required threshold. It gives the number of lines to be covered in order to reach the required threshold.Z
CODE_SMELL
Ê
%common-xml:InsufficientBranchCoverageº

common-xmlInsufficientBranchCoverage1Branches should have sufficient coverage by tests"MAJOR*xml:∆An issue is created on a file as soon as the branch coverage on this file is less than the required threshold. It gives the number of branches to be covered in order to reach the required threshold.Z
CODE_SMELL
¨
squid:S1258ú
squidS1258@Classes and enums with private members should have a constructor"MAJOR*java:∞<p>Non-abstract <code>class</code>es and <code>enum</code>s with non-<code>static</code>, <code>private</code> members should explicitly initialize
those members, either in a constructor or with a default value.</p>
<h2>Noncompliant Code Example</h2>
<pre>
class A { // Noncompliant
  private int field;
}
</pre>
<h2>Compliant Solution</h2>
<pre>
class A {
  private int field;

  A(int field) {
    this.field = field;
  }
}
</pre>Z
CODE_SMELL
ó
squid:S2225á
squidS22259"toString()" and "clone()" methods should not return null"MAJOR*java:©<p>Calling <code>toString()</code> or <code>clone()</code> on an object should always return a string or an object. Returning <code>null</code>
instead contravenes the method's implicit contract.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public String toString () {
  if (this.collection.isEmpty()) {
    return null; // Noncompliant
  } else {
    // ...
 {code}
</pre>
<h2>Compliant Solution</h2>
<pre>
public String toString () {
  if (this.collection.isEmpty()) {
    return "";
  } else {
    // ...
</pre>
<h2>See</h2>
<ul>
  <li> <a href="http://cwe.mitre.org/data/definitions/476.html">MITRE CWE-476</a> - NULL Pointer Dereference </li>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/ZwDOAQ">CERT, EXP01-J.</a> - Do not use a null in a case where an object is required
  </li>
</ul>ZBUG
≥
squid:S2589£
squidS2589,Boolean expressions should not be gratuitous"MAJOR*java:À
<p>If a boolean expression doesn't change the evaluation of the condition, then it is entirely unnecessary, and can be removed. If it is gratuitous
because it does not match the programmer's intent, then it's a bug and the expression should be fixed.</p>
<h2>Noncompliant Code Example</h2>
<pre>
a = true;
if (a) { // Noncompliant
  doSomething();
}

if (b &amp;&amp; a) { // Noncompliant; "a" is always "true"
  doSomething();
}

if (c || !a) { // Noncompliant; "!a" is always "false"
  doSomething();
}
</pre>
<h2>Compliant Solution</h2>
<pre>
a = true;
if (foo(a)) {
  doSomething();
}

if (b) {
  doSomething();
}

if (c) {
  doSomething();
}
</pre>
<h2>See</h2>
<ul>
  <li> MISRA C:2004, 13.7 - Boolean operations whose results are invariant shall not be permitted. </li>
  <li> MISRA C:2012, 14.3 - Controlling expressions shall not be invariant </li>
  <li> <a href="http://cwe.mitre.org/data/definitions/571">MITRE, CWE-571</a> - Expression is Always True </li>
  <li> <a href="http://cwe.mitre.org/data/definitions/570">MITRE, CWE-570</a> - Expression is Always False </li>
  <li> <a href="http://cwe.mitre.org/data/definitions/489">MITRE, CWE-489</a> - Leftover Debug Code </li>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/NYA5">CERT, MSC12-C.</a> - Detect and remove code that has no effect or is never
  executed </li>
</ul>Z
CODE_SMELL
ã	
squid:S2226˚
squidS22260Servlets should not have mutable instance fields"MAJOR*java:¶<p>By contract, a servlet container creates one instance of each servlet and then a dedicated thread is attached to each new incoming HTTP request to
process the request. So all threads share the servlet instances and by extension their instance fields. To prevent any misunderstanding and unexpected
behavior at runtime, all servlet fields should then be either <code>static</code> and/or <code>final</code>, or simply removed.</p>
<p>With Struts 1.X, the same constraint exists on <code>org.apache.struts.action.Action</code>.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public class MyServlet extends HttpServlet {
  private String userName;  //As this field is shared by all users, it's obvious that this piece of information should be managed differently
  ...
}
</pre>
<p>or </p>
<pre>
public class MyAction extends Action {
  private String userName;  //Same reason
  ...
}
</pre>
<h2>See</h2>
<ul>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/EYBUC">CERT, MSC11-J.</a> - Do not let session information leak within a servlet </li>
</ul>ZBUG
ª
squid:S3436´
squidS34362Value-based classes should not be used for locking"MAJOR*java:‘<p>According to the documentation,</p>
<blockquote>
  A program may produce unpredictable results if it attempts to distinguish two references to equal values of a value-based class, whether directly
  via reference equality or indirectly via an appeal to synchronization...
</blockquote>
<p>This is because value-based classes are intended to be wrappers for value types, which will be primitive-like collections of data (similar to
<code>struct</code>s in other languages) that will come in future versions of Java.</p>
<blockquote>
  <p> Instances of a value-based class ... </p>
  <ul>
    <li> do not have accessible constructors, but are instead instantiated through factory methods which make no committment as to the identity of
    returned instances; </li>
  </ul>
</blockquote>
<p>Which means that you can't be sure you're the only one trying to lock on any given instance of a value-based class, opening your code up to
contention and deadlock issues.</p>
<p>Under Java 8 breaking this rule may not actually break your code, but there are no guarantees of the behavior beyond that.</p>
<p>This rule raises an issue when a known value-based class is used for synchronization. That includes all the classes in the <code>java.time</code>
package except <code>Clock</code>; the date classes for alternate calendars, <code>HijrahDate</code>, <code>JapaneseDate</code>,
<code>MinguoDate</code>, <code>ThaiBuddhistDate</code>; and the optional classes: <code>Optional</code>, <code>OptionalDouble</code>,
<code>OptionalLong</code>, <code>OptionalInt</code>.</p>
<p><strong>Note</strong> that this rule is automatically disabled when the project's <code>sonar.java.source</code> is lower than <code>8</code>.</p>
<h2>Noncompliant Code Example</h2>
<pre>
Optional&lt;Foo&gt; fOpt = doSomething();
synchronized (fOpt) {  // Noncompliant
  // ...
}
</pre>
<h2>See</h2>
<ul>
  <li> <a href="http://docs.oracle.com/javase/8/docs/api/java/lang/doc-files/ValueBased.html">Value-based classes</a> </li>
</ul>ZBUG
‹
squid:S1134Ã
squidS1134Track uses of "FIXME" tags"MAJOR*java:Ü<p><code>FIXME</code> tags are commonly used to mark places where a bug is suspected, but which the developer wants to deal with later.</p>
<p>Sometimes the developer will not have the time or will simply forget to get back to that tag.</p>
<p>This rule is meant to track those tags and to ensure that they do not go unnoticed.</p>
<h2>Noncompliant Code Example</h2>
<pre>
int divide(int numerator, int denominator) {
  return numerator / denominator;              // FIXME denominator value might be  0
}
</pre>
<h2>See</h2>
<ul>
  <li> <a href="http://cwe.mitre.org/data/definitions/546.html">MITRE, CWE-546</a> - Suspicious Comment </li>
</ul>Z
CODE_SMELL
∫	
squid:S3553™	
squidS3553,"Optional" should not be used for parameters"MAJOR*java:“<p>The Java language authors have been quite frank that <code>Optional</code> was intended for use only as a return type, as a way to convey that a
method may or may not return a value. </p>
<p>And for that, it's valuable but using <code>Optional</code> on the input side increases the work you have to do in the method without really
increasing the value. With an <code>Optional</code> parameter, you go from having 2 possible inputs: null and not-null, to three: null,
non-null-without-value, and non-null-with-value. Add to that the fact that overloading has long been available to convey that some parameters are
optional, and there's really no reason to have <code>Optional</code> parameters.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public String sayHello(Optional&lt;String&gt; name) {  // Noncompliant
  if (name == null || !name.isPresent()) {
    return "Hello World";
  } else {
    return "Hello " + name;
  }
}
</pre>
<h2>Compliant Solution</h2>
<pre>
public String sayHello(String name) {
  if (name == null) {
    return "Hello World";
  } else {
    return "Hello " + name;
  }
}
</pre>Z
CODE_SMELL
„
squid:S3551”
squidS3551DOverrides should match their parent class methods in synchronization"MAJOR*java:Í<p>When <code>@Overrides</code> of <code>synchronized</code> methods are not themselves <code>synchronized</code>, the result can be improper
synchronization as callers rely on the thread-safety promised by the parent class.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public class Parent {

  synchronized void foo() {
    //...
  }
}

public class Child extends Parent {

 @Override
  public foo () {  // Noncompliant
    // ...
    super.foo();
  }
}
</pre>
<h2>Compliant Solution</h2>
<pre>
public class Parent {

  synchronized void foo() {
    //...
  }
}

public class Child extends Parent {

  @Override
  synchronized foo () {
    // ...
    super.foo();
  }
}
</pre>
<h2>See</h2>
<ul>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/XgAZAg">CERT, TSM00-J</a> - Do not override thread-safe methods with methods that are
  not thread-safe </li>
</ul>ZBUG
¬
squid:S2583≤
squidS25831Conditionally executed blocks should be reachable"MAJOR*java:‹<p>Conditional expressions which are always <code>true</code> or <code>false</code> can lead to dead code. Such code is always buggy and should never
be used in production.</p>
<h2>Noncompliant Code Example</h2>
<pre>
a = false;
if (a) { // Noncompliant
  doSomething(); // never executed
}

if (!a || b) { // Noncompliant; "!a" is always "true", "b" is never evaluated
  doSomething();
} else {
  doSomethingElse(); // never executed
}
</pre>
<h2>Exceptions</h2>
<p>This rule will not raise an issue in either of these cases:</p>
<ul>
  <li> When the condition is a single <code>final boolean</code> </li>
</ul>
<pre>
final boolean debug = false;
//...
if (debug) {
  // Print something
}
</pre>
<ul>
  <li> When the condition is literally <code>true</code> or <code>false</code>. </li>
</ul>
<pre>
if (true) {
  // do something
}
</pre>
<p>In these cases it is obvious the code is as intended.</p>
<h2>See</h2>
<ul>
  <li> MISRA C:2004, 13.7 - Boolean operations whose results are invariant shall not be permitted. </li>
  <li> MISRA C:2012, 14.3 - Controlling expressions shall not be invariant </li>
  <li> <a href="http://cwe.mitre.org/data/definitions/570.html">MITRE, CWE-570</a> - Expression is Always False </li>
  <li> <a href="http://cwe.mitre.org/data/definitions/571">MITRE, CWE-571</a> - Expression is Always True </li>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/NYA5">CERT, MSC12-C.</a> - Detect and remove code that has no effect or is never
  executed </li>
</ul>ZBUG
Õ
squid:S3439Ω
squidS3439T"DefaultMessageListenerContainer" instances should not drop messages during restarts"MAJOR*java:ƒ<p><code>DefaultMessageListenerContainer</code> is implemented as a JMS poller. While the Spring container is shutting itself down, as each
in-progress JMS <code>Consumer.receive()</code> call completes, any non-<code>null</code> return value will be a JMS message that the DMLC will
<em>discard</em> due to the shutdown in progress. That will result in the received message never being processed. </p>
<p>To prevent message loss during restart operations, set <code>acceptMessagesWhileStopping</code> to <code>true</code> so that such messages will be
processed before shut down.</p>
<h2>Noncompliant Code Example</h2>
<pre>
&lt;bean id="listenerContainer" class="org.springframework.jms.listener.DefaultMessageListenerContainer"&gt;  &lt;!-- Noncompliant --&gt;
   &lt;property name="connectionFactory" ref="connFactory" /&gt;
   &lt;property name="destination" ref="dest" /&gt;
   &lt;property name="messageListener" ref="serviceAdapter" /&gt;
   &lt;property name="autoStartup" value="true" /&gt;
   &lt;property name="concurrentConsumers" value="10" /&gt;
   &lt;property name="maxConcurrentConsumers" value="10" /&gt;
   &lt;property name="clientId" value="myClientID" /&gt;
&lt;/bean&gt;
 {code}
</pre>
<h2>Compliant Solution</h2>
<pre>
&lt;bean id="listenerContainer" class="org.springframework.jms.listener.DefaultMessageListenerContainer"&gt;
   &lt;property name="connectionFactory" ref="connFactory" /&gt;
   &lt;property name="destination" ref="dest" /&gt;
   &lt;property name="messageListener" ref="serviceAdapter" /&gt;
   &lt;property name="autoStartup" value="true" /&gt;
   &lt;property name="concurrentConsumers" value="10" /&gt;
   &lt;property name="maxConcurrentConsumers" value="10" /&gt;
   &lt;property name="clientId" value="myClientID" /&gt;
   &lt;property name="acceptMessagesWhileStopping" value="true" /&gt;
&lt;/bean&gt;
</pre>ZBUG
ü

squid:S2109è

squidS2109>Reflection should not be used to check non-runtime annotations"MAJOR*java:¨	<p>The writer of an annotation can set one of three retention policies for it:</p>
<ul>
  <li> <code>RetentionPolicy.SOURCE</code> - these annotations are dropped during compilation, E.G. <code>@Override</code>,
  <code>@SuppressWarnings</code>. </li>
  <li> <code>RetentionPolicy.CLASS</code> - these annotations are present in a compiled class but not loaded into the JVM at runtime. This is the
  default. </li>
  <li> <code>RetentionPolicy.RUNTIME</code> - these annotations are present in the class file and loaded into the JVM. </li>
</ul>
<p>Only annotations that have been given a <code>RUNTIME</code> retention policy will be available to reflection. Testing for annotations with any
other retention policy is simply an error, since the test will always return false.</p>
<p>This rule checks that reflection is not used to detect annotations that do not have <code>RUNTIME</code> retention.</p>
<h2>Noncompliant Code Example</h2>
<pre>
Method m = String.class.getMethod("getBytes", new Class[] {int.class,
int.class, byte[].class, int.class});
if (m.isAnnotationPresent(Override.class)) {  // Noncompliant; test will always return false, even when @Override is present in the code
</pre>ZBUG
â
squid:S3438˘
squidS3438K"SingleConnectionFactory" instances should be set to "reconnectOnException""MAJOR*java:â<p>Use of a Spring <code>SingleConnectionFactory</code> without enabling the <code>reconnectOnException</code> setting will prevent automatic
connection recovery when the connection goes bad. </p>
<p>That's because the <code>reconnectOnException</code> property defaults to <code>false</code>. As a result, even if the code that uses this
connection factory (Spring's <code>DefaultMessageListenerContainer</code> or your own code) has reconnect logic, that code won't work because the
<code>SingleConnectionFactory</code> will act like a single-connection pool by preventing connection <code>close</code> calls from actually closing
anything. As a result, subsequent factory <code>create</code> operations will just hand back the original broken <code>Connection</code>.</p>
<h2>Noncompliant Code Example</h2>
<pre>
 &lt;bean id="singleCF" class="org.springframework.jms.connection.SingleConnectionFactory"&gt;  &lt;!-- Noncompliant --&gt;
   &lt;constructor-arg ref="dummyConnectionFactory" /&gt;
 &lt;/bean&gt;
</pre>
<h2>Compliant Solution</h2>
<pre>
 &lt;bean id="singleCF" class="org.springframework.jms.connection.SingleConnectionFactory" p:reconnectOnException="true"&gt;
   &lt;constructor-arg ref="dummyConnectionFactory" /&gt;
 &lt;/bean&gt;
</pre>
<p>or</p>
<pre>
 &lt;bean id="singleCF" class="org.springframework.jms.connection.SingleConnectionFactory"&gt;
   &lt;constructor-arg ref="dummyConnectionFactory" /&gt;
   &lt;property name="reconnectOnException"&gt;&lt;value&gt;true&lt;/value&gt;&lt;/property&gt;
 &lt;/bean&gt;
</pre>ZBUG
Ÿ

squid:S864 
squidS864:Limited dependence should be placed on operator precedence"MAJOR*java:Â<p>The rules of operator precedence are complicated and can lead to errors. For this reason, parentheses should be used for clarification in complex
statements. However, this does not mean that parentheses should be gratuitously added around every operation. </p>
<p>This rule raises issues when <code>&amp;&amp;</code> and <code>||</code> are used in combination, when assignment and equality or relational
operators are used in together in a condition, and for other operator combinations according to the following table:</p>
<table>
  <tbody>
    <tr>
      <td> </td>
      <td><code>+</code>, <code>-</code>, <code>*</code>, <code>/</code>, <code>%</code></td>
      <td><code>&lt;&lt;</code>, <code>&gt;&gt;</code>, <code>&gt;&gt;&gt;</code></td>
      <td><code>&amp;</code></td>
      <td><code>^</code></td>
      <td> <code>|</code> </td>
    </tr>
    <tr>
      <td><code>+</code>, <code>-</code>, <code>*</code>, <code>/</code>, <code>%</code></td>
      <td> </td>
      <td>x</td>
      <td>x</td>
      <td>x</td>
      <td>x</td>
    </tr>
    <tr>
      <td><code>&lt;&lt;</code>, <code>&gt;&gt;</code>, <code>&gt;&gt;&gt;</code></td>
      <td>x</td>
      <td> </td>
      <td>x</td>
      <td>x</td>
      <td>x</td>
    </tr>
    <tr>
      <td><code>&amp;</code></td>
      <td>x</td>
      <td>x</td>
      <td> </td>
      <td>x</td>
      <td>x</td>
    </tr>
    <tr>
      <td><code>^</code></td>
      <td>x</td>
      <td>x</td>
      <td>x</td>
      <td> </td>
      <td>x</td>
    </tr>
    <tr>
      <td> <code>|</code> </td>
      <td>x</td>
      <td>x</td>
      <td>x</td>
      <td>x</td>
      <td> </td>
    </tr>
  </tbody>
</table>
<h2>Noncompliant Code Example</h2>
<pre>
x = a + b - c;
x = a + 1 &lt;&lt; b;  // Noncompliant

if ( a &gt; b || c &lt; d || a == d) {...}
if ( a &gt; b &amp;&amp; c &lt; d || a == b) {...}  // Noncompliant
if (a = f(b,c) == 1) { ... } // Noncompliant; == evaluated first
</pre>
<h2>Compliant Solution</h2>
<pre>
x = a + b - c;
x = (a + 1) &lt;&lt; b;

if ( a &gt; b || c &lt; d || a == d) {...}
if ( (a &gt; b &amp;&amp; c &lt; d) || a == b) {...}
if ( (a = f(b,c)) == 1) { ... }
</pre>
<h2>See</h2>
<ul>
  <li> MISRA C:2004, 12.1 - Limited dependence should be placed on C's operator precedence rules in expressions </li>
  <li> MISRA C:2004, 12.2 - The value of an expression shall be the same under any order of evaluation that the standard permits. </li>
  <li> MISRA C:2004, 12.5 - The operands of a logical &amp;&amp; or || shall be primary-expressions. </li>
  <li> MISRA C++:2008, 5-0-1 - The value of an expression shall be the same under any order of evaluation that the standard permits. </li>
  <li> MISRA C++:2008, 5-0-2 - Limited dependence should be placed on C++ operator precedence rules in expressions </li>
  <li> MISRA C++:2008, 5-2-1 - Each operand of a logical &amp;&amp; or || shall be a postfix-expression. </li>
  <li> MISRA C:2012, 12.1 - The precedence of operators within expressions should be made explicit </li>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/_wI">CERT, EXP00-C.</a> - Use parentheses for precedence of operation </li>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/9wHEAw">CERT, EXP53-J.</a> - Use parentheses for precedence of operation </li>
  <li> <a href="http://cwe.mitre.org/data/definitions/783.html">MITRE, CWE-783</a> - Operator Precedence Logic Error </li>
</ul>Z
CODE_SMELL
ﬁ
squid:S00122Õ
squidS00122&Statements should be on separate lines"MAJOR*java2S122:Ù<p>For better readability, do not put more than one statement on a single line.</p>
<h2>Noncompliant Code Example</h2>
<pre>
if(someCondition) doSomething();
</pre>
<h2>Compliant Solution</h2>
<pre>
if(someCondition) {
  doSomething();
}
</pre>Z
CODE_SMELL
È
squid:S00104ÿ
squidS00104,Files should not have too many lines of code"MAJOR*java2S104:˘<p>A source file that grows too much tends to aggregate too many responsibilities and inevitably becomes harder to understand and therefore to
maintain. Above a specific threshold, it is strongly advised to refactor it into smaller pieces of code which focus on well defined tasks. Those
smaller files will not only be easier to understand but also probably easier to test.</p>Z
CODE_SMELL
·
squid:S2116—
squidS2116A"hashCode" and "toString" should not be called on array instances"MAJOR*java:Î<p>While <code>hashCode</code> and <code>toString</code> are available on arrays, they are largely useless. <code>hashCode</code> returns the array's
"identity hash code", and <code>toString</code> returns nearly the same value. Neither method's output actually reflects the array's contents.
Instead, you should pass the array to the relevant static <code>Arrays</code> method.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public static void main( String[] args )
{
    String argStr = args.toString(); // Noncompliant
    int argHash = args.hashCode(); // Noncompliant

</pre>
<h2>Compliant Solution</h2>
<pre>
public static void main( String[] args )
{
    String argStr = Arrays.toString(args);
    int argHash = Arrays.hashCode(args);

</pre>ZBUG
‡
squid:S2234–
squidS22340Parameters should be passed in the correct order"MAJOR*java:Ù<p>When the names of parameters in a method call match the names of the method arguments, it contributes to clearer, more readable code. However, when
the names match, but are passed in a different order than the method arguments, it indicates a mistake in the parameter order which will likely lead
to unexpected results.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public double divide(int divisor, int dividend) {
  return divisor/dividend;
}

public void doTheThing() {
  int divisor = 15;
  int dividend = 5;

  double result = divide(dividend, divisor);  // Noncompliant; operation succeeds, but result is unexpected
  //...
}
</pre>
<h2>Compliant Solution</h2>
<pre>
public double divide(int divisor, int dividend) {
  return divisor/dividend;
}

public void doTheThing() {
  int divisor = 15;
  int dividend = 5;

  double result = divide(divisor, dividend);
  //...
}
</pre>Z
CODE_SMELL
⁄
squid:S1145 
squidS1145FUseless "if(true) {...}" and "if(false){...}" blocks should be removed"MAJOR*java:ﬂ<p><code>if</code> statements with conditions that are always false have the effect of making blocks of code non-functional. <code>if</code>
statements with conditions that are always true are completely redundant, and make the code less readable.</p>
<p>There are three possible causes for the presence of such code: </p>
<ul>
  <li> An if statement was changed during debugging and that debug code has been committed. </li>
  <li> Some value was left unset. </li>
  <li> Some logic is not doing what the programmer thought it did. </li>
</ul>
<p>In any of these cases, unconditional <code>if</code> statements should be removed.</p>
<h2>Noncompliant Code Example</h2>
<pre>
if (true) {
  doSomething();
}
...
if (false) {
  doSomethingElse();
}

if (2 &lt; 3 ) { ... }  // Noncompliant; always false

int i = 0;
int j = 0;
// ...
j = foo();

if (j &gt; 0 &amp;&amp; i &gt; 0) { ... }  // Noncompliant; always false - i never set after initialization

boolean b = true;
//...
if (b || !b) { ... }  // Noncompliant
</pre>
<h2>Compliant Solution</h2>
<pre>
doSomething();
...
</pre>
<h2>See</h2>
<ul>
  <li> <a href="http://cwe.mitre.org/data/definitions/489.html">MITRE, CWE-489</a> - Leftover Debug Code </li>
  <li> <a href="http://cwe.mitre.org/data/definitions/570.html">MITRE, CWE-570</a> - Expression is Always False </li>
  <li> <a href="http://cwe.mitre.org/data/definitions/571.html">MITRE, CWE-571</a> - Expression is Always True </li>
  <li> MISRA C:2004, 13.7 - Boolean operations whose results are invariant shall not be permitted. </li>
  <li> MISRA C:2012, 14.3 - Controlling expressions shall not be invariant </li>
</ul>
<h2>Deprecated</h2>
<p>This rule is deprecated; use <a href='/coding_rules#rule_key=squid%3AS2583'>S2583</a> instead.</p>ZBUG
Ï
squid:S2114‹
squidS2114BCollections should not be passed as arguments to their own methods"MAJOR*java:ı<p>Passing a collection as an argument to the collection's own method is either an error - some other argument was intended - or simply nonsensical
code. </p>
<p>Further, because some methods require that the argument remain unmodified during the execution, passing a collection to itself can result in
undefined behavior. </p>
<h2>Noncompliant Code Example</h2>
<pre>
List &lt;Object&gt; objs = new ArrayList&lt;Object&gt;();
objs.add("Hello");

objs.add(objs); // Noncompliant; StackOverflowException if objs.hashCode() called
objs.addAll(objs); // Noncompliant; behavior undefined
objs.containsAll(objs); // Noncompliant; always true
objs.removeAll(objs); // Noncompliant; confusing. Use clear() instead
objs.retainAll(objs); // Noncompliant; NOOP
</pre>ZBUG
”
squid:S00103¬
squidS00103Lines should not be too long"MAJOR*java2S103:t<p>Having to scroll horizontally makes it harder to get a quick overview and understanding of any piece of code.</p>Z
CODE_SMELL
œ
squid:S2111ø
squidS2111'"BigDecimal(double)" should not be used"MAJOR*java:Û<p>Because of floating point imprecision, you're unlikely to get the value you expect from the <code>BigDecimal(double)</code> constructor. </p>
<p>From <a href="http://docs.oracle.com/javase/7/docs/api/java/math/BigDecimal.html#BigDecimal(double)">the JavaDocs</a>:</p>
<blockquote>
  The results of this constructor can be somewhat unpredictable. One might assume that writing new BigDecimal(0.1) in Java creates a BigDecimal which
  is exactly equal to 0.1 (an unscaled value of 1, with a scale of 1), but it is actually equal to
  0.1000000000000000055511151231257827021181583404541015625. This is because 0.1 cannot be represented exactly as a double (or, for that matter, as a
  binary fraction of any finite length). Thus, the value that is being passed in to the constructor is not exactly equal to 0.1, appearances
  notwithstanding.
</blockquote>
<p>Instead, you should use <code>BigDecimal.valueOf</code>, which uses a string under the covers to eliminate floating point rounding errors, or the
constructor that takes a <code>String</code> argument.</p>
<h2>Noncompliant Code Example</h2>
<pre>
double d = 1.1;

BigDecimal bd1 = new BigDecimal(d); // Noncompliant; see comment above
BigDecimal bd2 = new BigDecimal(1.1); // Noncompliant; same result
</pre>
<h2>Compliant Solution</h2>
<pre>
double d = 1.1;

BigDecimal bd1 = BigDecimal.valueOf(d);
BigDecimal bd2 = new BigDecimal("1.1"); // using String constructor will result in precise value
</pre>
<h2>See</h2>
<ul>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/NQAVAg">CERT, NUM10-J.</a> - Do not construct BigDecimal objects from floating-point
  literals </li>
</ul>ZBUG

squid:S2232‡
squidS2232'"ResultSet.isLast()" should not be used"MAJOR*java:ç<p>There are several reasons to avoid <code>ResultSet.isLast()</code>. First, support for this method is optional for <code>TYPE_FORWARD_ONLY</code>
result sets. Second, it can be expensive (the driver may need to fetch the next row to answer the question). Finally, the specification is not clear
on what should be returned when the <code>ResultSet</code> is empty, so some drivers may return the opposite of what is expected.</p>
<h2>Noncompliant Code Example</h2>
<pre>
stmt.executeQuery("SELECT name, address FROM PERSON");
ResultSet rs = stmt.getResultSet();
while (! rs.isLast()) { // Noncompliant
  // process row
}
</pre>
<h2>Compliant Solution</h2>
<pre>
ResultSet rs = stmt.executeQuery("SELECT name, address FROM PERSON");
while (! rs.next()) {
  // process row
}
</pre>Z
CODE_SMELL
í
squid:S00108Å
squidS00108.Nested blocks of code should not be left empty"MAJOR*java2S108:†<p>Most of the time a block of code is empty when a piece of code is really missing. So such empty block must be either filled or removed.</p>
<h2>Noncompliant Code Example</h2>
<pre>
for (int i = 0; i &lt; 42; i++){}  // Empty on purpose or missing piece of code ?
</pre>
<h2>Exceptions</h2>
<p>When a block contains a comment, this block is not considered to be empty unless it is a <code>synchronized</code> block. <code>synchronized</code>
blocks are still considered empty even with comments because they can still affect program flow.</p>Z
CODE_SMELL
⁄
squid:S2112 
squidS21121"URL.hashCode" and "URL.equals" should be avoided"MAJOR*java:Ì
<p>The <code>equals</code> and <code>hashCode</code> methods of <code>java.net.URL</code> both may trigger a name service (usually DNS) lookup to
resolve the host name or IP address. Depending on the configuration, and network status, that can take a long time. <code>URI</code> on the other hand
makes no such calls and should be used instead unless the specific <code>URL</code> functionality is required.</p>
<p>In general it is better to use the <code>URI</code> class until access to the resource is actually needed, at which point you can just convert the
<code>URI</code> to a <code>URL</code> using <code>URI.toURL()</code>.</p>
<p>This rule checks for uses of <code>URL</code> 's in <code>Map</code> and <code>Set</code> , and for explicit calls to the <code>equals</code> and
<code>hashCode</code> methods.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public void checkUrl(URL url) {
  Set&lt;URL&gt; sites = new HashSet&lt;URL&gt;();  // Noncompliant

  URL homepage = new URL("http://sonarsource.com");  // Compliant
  if (homepage.equals(url)) { // Noncompliant
    // ...
  }
}
</pre>
<h2>Compliant Solution</h2>
<pre>
public void checkUrl(URL url) {
  Set&lt;URI&gt; sites = new HashSet&lt;URI&gt;();  // Compliant

  URI homepage = new URI("http://sonarsource.com");  // Compliant
  URI uri = url.toURI();
  if (homepage.equals(uri)) {  // Compliant
    // ...
  }
}
</pre>Z
CODE_SMELL
‚
squid:S2230“
squidS22301Non-public methods should not be "@Transactional""MAJOR*java:¸<p>Marking a non-public method <code>@Transactional</code> is both useless and misleading because Spring doesn't "see" non-<code>public</code>
methods, and so makes no provision for their proper invocation. Nor does Spring make provision for the methods invoked by the method it called.</p>
<p>Therefore marking a <code>private</code> method, for instance, <code>@Transactional</code> can only result in a runtime error or exception if the
method is actually written to be <code>@Transactional</code>.</p>
<h2>Noncompliant Code Example</h2>
<pre>
@Transactional  // Noncompliant
private void doTheThing(ArgClass arg) {
  // ...
}
</pre>ZBUG
°
squid:S1142ë
squidS11422Methods should not have too many return statements"MAJOR*java:≥<p>Having too many return statements in a method increases the method's essential complexity because the flow of execution is broken each time a
return statement is encountered. This makes it harder to read and understand the logic of the method.</p>
<h2>Noncompliant Code Example</h2>
<p>With the default threshold of 3:</p>
<pre>
public boolean myMethod() { // Noncompliant; there are 4 return statements
  if (condition1) {
    return true;
  } else {
    if (condition2) {
      return false;
    } else {
      return true;
    }
  }
  return false;
}
</pre>Z
CODE_SMELL
º
squid:S2110¨
squidS2110(Invalid "Date" values should not be used"MAJOR*java:ﬂ<p>Whether the valid value ranges for <code>Date</code> fields start with 0 or 1 varies by field. For instance, month starts at 0, and day of month
starts at 1. Enter a date value that goes past the end of the valid range, and the date will roll without error or exception. For instance, enter 12
for month, and you'll get January of the following year.</p>
<p>This rule checks for bad values used in conjunction with <code>java.util.Date</code>, <code>java.sql.Date</code>, and
<code>java.util.Calendar</code>. Specifically, values outside of the valid ranges:</p>
<table>
  <tbody>
    <tr>
      <th>Field</th>
      <th>Valid</th>
    </tr>
    <tr>
      <td>month</td>
      <td>0-11</td>
    </tr>
    <tr>
      <td>date (day)</td>
      <td>0-31</td>
    </tr>
    <tr>
      <td>hour</td>
      <td>0-23</td>
    </tr>
    <tr>
      <td>minute</td>
      <td>0-60</td>
    </tr>
    <tr>
      <td>second</td>
      <td>0-61</td>
    </tr>
  </tbody>
</table>
<p>Note that this rule does not check for invalid leap years, leap seconds (second = 61), or invalid uses of the 31st day of the month.</p>
<h2>Noncompliant Code Example</h2>
<pre>
Date d = new Date();
d.setDate(25);
d.setYear(2014);
d.setMonth(12);  // Noncompliant; rolls d into the next year

Calendar c = new GregorianCalendar(2014, 12, 25);  // Noncompliant
if (c.get(Calendar.MONTH) == 12) {  // Noncompliant; invalid comparison
  // ...
}
</pre>
<h2>Compliant Solution</h2>
<pre>
Date d = new Date();
d.setDate(25);
d.setYear(2014);
d.setMonth(11);

Calendar c = new Gregorian Calendar(2014, 11, 25);
if (c.get(Calendar.MONTH) == 11) {
  // ...
}
</pre>ZBUG
…

squid:S881∫
squidS881~Increment (++) and decrement (--) operators should not be used in a method call or mixed with other operators in an expression"MAJOR*java:ë<p>The use of increment and decrement operators in method calls or in combination with other arithmetic operators is not recommended, because:</p>
<ul>
  <li> It can significantly impair the readability of the code. </li>
  <li> It introduces additional side effects into a statement, with the potential for undefined behavior. </li>
  <li> It is safer to use these operators in isolation from any other arithmetic operators. </li>
</ul>
<h2>Noncompliant Code Example</h2>
<pre>
u8a = ++u8b + u8c--;
foo = bar++ / 4;
</pre>
<h2>Compliant Solution</h2>
<p>The following sequence is clearer and therefore safer:</p>
<pre>
++u8b;
u8a = u8b + u8c;
u8c--;
foo = bar / 4;
bar++;
</pre>
<h2>See</h2>
<ul>
  <li> MISRA C:2004, 12.1 - Limited dependence should be placed on the C operator precedence rules in expressions. </li>
  <li> MISRA C:2004, 12.13 - The increment (++) and decrement (--) operators should not be mixed with other operators in an expression. </li>
  <li> MISRA C++:2008, 5-2-10 - The increment (++) and decrement (--) operator should not be mixed with other operators in an expression. </li>
  <li> MISRA C:2012, 12.1 - The precedence of operators within expressions should be made explicit </li>
  <li> MISRA C:2012, 13.3 - A full expression containing an increment (++) or decrement (--) operator should have no other potential side effects
  other than that cause by the increment or decrement operator </li>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/ZwE">CERT, EXP30-C.</a> - Do not depend on the order of evaluation for side effects
  </li>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/fYAyAQ">CERT, EXP50-CPP.</a> - Do not depend on the order of evaluation for side
  effects </li>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/yQC7AQ">CERT, EXP05-J.</a> - Do not follow a write by a subsequent write or read of the
  same object within an expression </li>
</ul>Z
CODE_SMELL
¢
squid:S1141í
squidS1141%Try-catch blocks should not be nested"MAJOR*java:¡<p>Nesting <code>try</code>/<code>catch</code> blocks severely impacts the readability of source code because it makes it too difficult to understand
which block will catch which exception.</p>Z
CODE_SMELL
ﬂ
squid:S00107Œ
squidS00107+Methods should not have too many parameters"MAJOR*java2S107:<p>A long parameter list can indicate that a new structure should be created to wrap the numerous parameters or that the function is doing too many
things.</p>
<h2>Noncompliant Code Example</h2>
<p>With a maximum number of 4 parameters:</p>
<pre>
public void doSomething(int param1, int param2, int param3, String param4, long param5) {
...
}
</pre>
<h2>Compliant Solution</h2>
<pre>
public void doSomething(int param1, int param2, int param3, String param4) {
...
}
</pre>
<h2>Exceptions</h2>
<p>Methods annotated with Spring's <code>@RequestMapping</code> (and related shortcut annotations, like <code>@GetRequest</code>) or
<code>@JsonCreator</code> may have a lot of parameters, encapsulation being possible. Such methods are therefore ignored.</p>Z
CODE_SMELL
È
squid:S1149Ÿ
squidS1149QSynchronized classes Vector, Hashtable, Stack and StringBuffer should not be used"MAJOR*java:‹<p>Early classes of the Java API, such as <code>Vector</code>, <code>Hashtable</code> and <code>StringBuffer</code>, were synchronized to make them
thread-safe. Unfortunately, synchronization has a big negative impact on performance, even when using these collections from a single thread.</p>
<p>It is better to use their new unsynchronized replacements:</p>
<ul>
  <li> <code>ArrayList</code> or <code>LinkedList</code> instead of <code>Vector</code> </li>
  <li> <code>Deque</code> instead of <code>Stack</code> </li>
  <li> <code>HashMap</code> instead of <code>Hashtable</code> </li>
  <li> <code>StringBuilder</code> instead of <code>StringBuffer</code> </li>
</ul>
<h2>Noncompliant Code Example</h2>
<pre>
Vector cats = new Vector();
</pre>
<h2>Compliant Solution</h2>
<pre>
ArrayList cats = new ArrayList();
</pre>
<h2>Exceptions</h2>
<p>Use of those synchronized classes is ignored in the signatures of overriding methods.</p>
<pre>
@Override
public Vector getCats() {...}
</pre>Z
CODE_SMELL
∂	
squid:S2118¶	
squidS2118.Non-serializable classes should not be written"MAJOR*java:”<p>Nothing in a non-serializable class will be written out to file, and attempting to serialize such a class will result in an exception being thrown.
Only a class that <code>implements Serializable</code> or one that extends such a class can successfully be serialized (or de-serialized). </p>
<h2>Noncompliant Code Example</h2>
<pre>
public class Vegetable {  // neither implements Serializable nor extends a class that does
  //...
}

public class Menu {
  public void meal() throws IOException {
    Vegetable veg;
    //...
    FileOutputStream fout = new FileOutputStream(veg.getName());
    ObjectOutputStream oos = new ObjectOutputStream(fout);
    oos.writeObject(veg);  // Noncompliant. Nothing will be written
  }
}
</pre>
<h2>Compliant Solution</h2>
<pre>
public class Vegetable implements Serializable {  // can now be serialized
  //...
}

public class Menu {
  public void meal() throws IOException {
    Vegetable veg;
    //...
    FileOutputStream fout = new FileOutputStream(veg.getName());
    ObjectOutputStream oos = new ObjectOutputStream(fout);
    oos.writeObject(veg);
  }
}
</pre>ZBUG
÷
squid:S00112≈
squidS00112)Generic exceptions should never be thrown"MAJOR*java2S112:È<p>Using such generic exceptions as <code>Error</code>, <code>RuntimeException</code>, <code>Throwable</code>, and <code>Exception</code> prevents
calling methods from handling true, system-generated exceptions differently than application-generated errors. </p>
<h2>Noncompliant Code Example</h2>
<pre>
public void foo(String bar) throws Throwable {  // Noncompliant
  throw new RuntimeException("My Message");     // Noncompliant
}
</pre>
<h2>Compliant Solution</h2>
<pre>
public void foo(String bar) {
  throw new MyOwnRuntimeException("My Message");
}
</pre>
<h2>Exceptions</h2>
<p>Generic exceptions in the signatures of overriding methods are ignored, because overriding method has to follow signature of the throw declaration
in the superclass. The issue will be raised on superclass declaration of the method (or won't be raised at all if superclass is not part of the
analysis).</p>
<pre>
@Override
public void myMethod() throws Exception {...}
</pre>
<p>Generic exceptions are also ignored in the signatures of methods that make calls to methods that throw generic exceptions.</p>
<pre>
public void myOtherMethod throws Exception {
  doTheThing();  // this method throws Exception
}
</pre>
<h2>See</h2>
<ul>
  <li> <a href="http://cwe.mitre.org/data/definitions/397.html">MITRE, CWE-397</a> - Declaration of Throws for Generic Exception </li>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/BoB3AQ">CERT, ERR07-J.</a> - Do not throw RuntimeException, Exception, or Throwable
  </li>
</ul>Z
CODE_SMELL
™

squid:S3655ö

squidS3655@Optional value should only be accessed after calling isPresent()"MAJOR*java:µ	<p><code>Optional</code> value can hold either a value or not. The value held in the <code>Optional</code> can be accessed using the
<code>get()</code> method, but it will throw a </p>
<p><code>NoSuchElementException</code> if there is no value present. To avoid the exception, calling the <code>isPresent()</code> method should always
be done before any call to <code>get()</code>.</p>
<p>Alternatively, note that other methods such as <code>orElse(...)</code>, <code>orElseGet(...)</code> or <code>orElseThrow(...)</code> can be used
to specify what to do with an empty <code>Optional</code>.</p>
<h2>Noncompliant Code Example</h2>
<pre>
Optional&lt;String&gt; value = this.getOptionalValue();

// ...

String stringValue = value.get(); // Noncompliant
</pre>
<h2>Compliant Solution</h2>
<pre>
Optional&lt;String&gt; value = this.getOptionalValue();

// ...

if (value.isPresent()) {
  String stringValue = value.get();
}
</pre>
<p>or</p>
<pre>
Optional&lt;String&gt; value = this.getOptionalValue();

// ...

String stringValue = value.orElse("default");
</pre>
<h2>See</h2>
<ul>
  <li> <a href="https://cwe.mitre.org/data/definitions/476.html">MITRE, CWE-476</a> - NULL Pointer Dereference </li>
</ul>ZBUG
Å
squid:S2445Ò
squidS24457Blocks should be synchronized on "private final" fields"MAJOR*java:ï<p>Synchronizing on a class field synchronizes not on the field itself, but on the object assigned to it. So synchronizing on a non-<code>final</code>
field makes it possible for the field's value to change while a thread is in a block synchronized on the old value. That would allow a second thread,
synchronized on the new value, to enter the block at the same time.</p>
<p>The story is very similar for synchronizing on parameters; two different threads running the method in parallel could pass two different object
instances in to the method as parameters, completely undermining the synchronization.</p>
<h2>Noncompliant Code Example</h2>
<pre>
private String color = "red";

private void doSomething(){
  synchronized(color) {  // Noncompliant; lock is actually on object instance "red" referred to by the color variable
    //...
    color = "green"; // other threads now allowed into this block
    // ...
  }
  synchronized(new Object()) { // Noncompliant this is a no-op.
     // ...
  }
}
</pre>
<h2>Compliant Solution</h2>
<pre>
private String color = "red";
private final Object lockObj = new Object();

private void doSomething(){
  synchronized(lockObj) {
    //...
    color = "green";
    // ...
  }
}
</pre>
<h2>See</h2>
<ul>
  <li> <a href="http://cwe.mitre.org/data/definitions/412.html">MITRE, CWE-412</a> - Unrestricted Externally Accessible Lock </li>
  <li> <a href="http://cwe.mitre.org/data/definitions/413">MITRE, CWE-413</a> - Improper Resource Locking </li>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/6IEzAg">CERT, LCK00-J.</a> - Use private final lock objects to synchronize classes that
  may interact with untrusted code </li>
</ul>ZBUG
é
squid:S2446˛
squidS2446"notifyAll" should be used"MAJOR*java:ø<p><code>notify</code> and <code>notifyAll</code> both wake up sleeping threads, but <code>notify</code> only rouses one, while <code>notifyAll</code>
rouses all of them. Since <code>notify</code> might not wake up the right thread, <code>notifyAll</code> should be used instead.</p>
<h2>Noncompliant Code Example</h2>
<pre>
class MyThread extends Thread{

  @Override
  public void run(){
    synchronized(this){
      // ...
      notify();  // Noncompliant
    }
  }
}
</pre>
<h2>Compliant Solution</h2>
<pre>
class MyThread extends Thread{

  @Override
  public void run(){
    synchronized(this){
      // ...
      notifyAll();
    }
  }
}
</pre>
<h2>See</h2>
<ul>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/OoAlAQ">CERT, THI02-J.</a> - Notify all waiting threads rather than a single thread
  </li>
</ul>ZBUG
·
squid:S2204—
squidS2204E".equals()" should not be used to test the values of "Atomic" classes"MAJOR*java:Á<p><code>AtomicInteger</code>, and <code>AtomicLong</code> extend <code>Number</code>, but they're distinct from <code>Integer</code> and
<code>Long</code> and should be handled differently. <code>AtomicInteger</code> and <code>AtomicLong</code> are designed to support lock-free,
thread-safe programming on single variables. As such, an <code>AtomicInteger</code> will only ever be "equal" to itself. Instead, you should
<code>.get()</code> the value and make comparisons on it.</p>
<p>This applies to all the atomic, seeming-primitive wrapper classes: <code>AtomicInteger</code>, <code>AtomicLong</code>, and
<code>AtomicBoolean</code>.</p>
<h2>Noncompliant Code Example</h2>
<pre>
AtomicInteger aInt1 = new AtomicInteger(0);
AtomicInteger aInt2 = new AtomicInteger(0);

if (aInt1.equals(aInt2)) { ... }  // Noncompliant
</pre>
<h2>Compliant Solution</h2>
<pre>
AtomicInteger aInt1 = new AtomicInteger(0);
AtomicInteger aInt2 = new AtomicInteger(0);

if (aInt1.get() == aInt2.get()) { ... }
</pre>ZBUG
î
squid:S2201Ñ
squidS2201GReturn values from functions without side effects should not be ignored"MAJOR*java:ò<p>When the call to a function doesn't have any side effects, what is the point of making the call if the results are ignored? In such case, either
the function call is useless and should be dropped or the source code doesn't behave as expected. </p>
<p>To prevent generating any false-positives, this rule triggers an issue only on the following predefined list of immutable classes in the Java API
:</p>
<ul>
  <li> <code>java.lang.String</code> </li>
  <li> <code>java.lang.Boolean</code> </li>
  <li> <code>java.lang.Integer</code> </li>
  <li> <code>java.lang.Double</code> </li>
  <li> <code>java.lang.Float</code> </li>
  <li> <code>java.lang.Byte</code> </li>
  <li> <code>java.lang.Character</code> </li>
  <li> <code>java.lang.Short</code> </li>
  <li> <code>java.lang.StackTraceElement</code> </li>
  <li> <code>java.time.DayOfWeek</code> </li>
  <li> <code>java.time.Duration</code> </li>
  <li> <code>java.time.Instant</code> </li>
  <li> <code>java.time.LocalDate</code> </li>
  <li> <code>java.time.LocalDateTime</code> </li>
  <li> <code>java.time.LocalTime</code> </li>
  <li> <code>java.time.Month</code> </li>
  <li> <code>java.time.MonthDay</code> </li>
  <li> <code>java.time.OffsetDateTime</code> </li>
  <li> <code>java.time.OffsetTime</code> </li>
  <li> <code>java.time.Period</code> </li>
  <li> <code>java.time.Year</code> </li>
  <li> <code>java.time.YearMonth</code> </li>
  <li> <code>java.time.ZonedDateTime</code> </li>
  <li> <code>java.math.BigInteger</code> </li>
  <li> <code>java.math.BigDecimal</code> </li>
  <li> <code>java.util.Optional</code> </li>
</ul>
<p>and also on <code>ConcurrentMap.putIfAbsent</code> calls ignored return value.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public void handle(String command){
  command.toLowerCase(); // Noncompliant; result of method thrown away
  ...
}
</pre>
<h2>Compliant Solution</h2>
<pre>
public void handle(String command){
  String formattedCommand = command.toLowerCase();
  ...
}
</pre>
<h2>Exceptions</h2>
<p>This rule will not raise an issue when both these conditions are met:</p>
<ul>
  <li> The method call is in a <code>try</code> block with an associated <code>catch</code> clause. </li>
  <li> The method name starts with "parse", "format", "decode" or "valueOf" or the method is <code>String.getBytes(Charset)</code>. </li>
</ul>
<pre>
private boolean textIsInteger(String textToCheck) {

    try {
        Integer.parseInt(textToCheck, 10); // OK
        return true;
    } catch (NumberFormatException ignored) {
        return false;
    }
}
</pre>
<h2>See</h2>
<ul>
  <li> MISRA C:2012, 17.7 - The value returned by a function having non-void return type shall be used </li>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/9YIRAQ">CERT, EXP12-C.</a> - Do not ignore values returned by functions </li>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/9gEqAQ">CERT, EXP00-J.</a> - Do not ignore values returned by methods </li>
</ul>ZBUG
Ì	
squid:S2441›	
squidS2441FNon-serializable objects should not be stored in "HttpSession" objects"MAJOR*java:Ú<p>If you have no intention of writting an <code>HttpSession</code> object to file, then storing non-<code>serializable</code> objects in it may not
seem like a big deal. But whether or not you explicitly serialize the session, it may be written to disk anyway, as the server manages its memory use
in a process called "passivation". Further, some servers automatically write their active sessions out to file at shutdown &amp; deserialize any such
sessions at startup.</p>
<p>The point is, that even though <code>HttpSession</code> does not <code>extend Serializable</code>, you must nonetheless assume that it will be
serialized, and understand that if you've stored non-serializable objects in the session, errors will result. </p>
<h2>Noncompliant Code Example</h2>
<pre>
public class Address {
  //...
}

//...
HttpSession session = request.getSession();
session.setAttribute("address", new Address());  // Noncompliant; Address isn't serializable
</pre>
<h2>See</h2>
<ul>
  <li> <a href="http://cwe.mitre.org/data/definitions/579.html">MITRE, CWE-579</a> - J2EE Bad Practices: Non-serializable Object Stored in Session
  </li>
</ul>ZBUG
¸
squid:S2442Ï
squidS2442+"Lock" objects should not be "synchronized""MAJOR*java:ï<p><code>java.util.concurrent.locks.Lock</code> offers far more powerful and flexible locking operations than are available with
<code>synchronized</code> blocks. So synchronizing on a <code>Lock</code> throws away the power of the object, and is just silly. Instead, such
objects should be locked and unlocked using <code>tryLock()</code> and <code>unlock()</code>.</p>
<h2>Noncompliant Code Example</h2>
<pre>
Lock lock = new MyLockImpl();
synchronized(lock) {  // Noncompliant
  //...
}
</pre>
<h2>Compliant Solution</h2>
<pre>
Lock lock = new MyLockImpl();
lock.tryLock();
//...
</pre>
<h2>See</h2>
<ul>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/cQCaAg">CERT, LCK03-J.</a> - Do not synchronize on the intrinsic locks of high-level
  concurrency objects </li>
</ul>Z
CODE_SMELL
ö	
squid:S2440ä	
squidS2440=Classes with only "static" methods should not be instantiated"MAJOR*java:°<p><code>static</code> methods can be accessed without an instance of the enclosing class, so there's no reason to instantiate a class that has only
<code>static</code> methods.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public class TextUtils {
  public static String stripHtml(String source) {
    return source.replaceAll("&lt;[^&gt;]+&gt;", "");
  }
}

public class TextManipulator {

  // ...

  public void cleanText(String source) {
    TextUtils textUtils = new TextUtils(); // Noncompliant

    String stripped = textUtils.stripHtml(source);

    //...
  }
}
</pre>
<h2>Compliant Solution</h2>
<pre>
public class TextUtils {
  public static String stripHtml(String source) {
    return source.replaceAll("&lt;[^&gt;]+&gt;", "");
  }
}

public class TextManipulator {

  // ...

  public void cleanText(String source) {
    String stripped = TextUtils.stripHtml(source);

    //...
  }
}
</pre>
<h2>See Also</h2>
<ul>
  <li> <a href='/coding_rules#rule_key=squid%3AS1118'>S1118</a> - Utility classes should not have public constructors </li>
</ul>Z
CODE_SMELL
¸
squid:S2681Ï
squidS26813Multiline blocks should be enclosed in curly braces"MAJOR*java:ç<p>Curly braces can be omitted from a one-line block, such as with an <code>if</code> statement or <code>for</code> loop, but doing so can be
misleading and induce bugs. </p>
<p>This rule raises an issue when the whitespacing of the lines after a one line block indicates an intent to include those lines in the block, but
the omission of curly braces means the lines will be unconditionally executed once.</p>
<h2>Noncompliant Code Example</h2>
<pre>
if (condition)
  firstActionInBlock();
  secondAction();  // Noncompliant; executed unconditionally
thirdAction();

if (condition) firstActionInBlock(); secondAction();  // Noncompliant; secondAction executed unconditionally

if (condition) firstActionInBlock();  // Noncompliant
  secondAction();  // Executed unconditionally

if (condition); secondAction();  // Noncompliant; secondAction executed unconditionally

String str = null;
for (int i = 0; i &lt; array.length; i++)
  str = array[i];
  doTheThing(str);  // Noncompliant; executed only on last array element
</pre>
<h2>Compliant Solution</h2>
<pre>
if (condition) {
  firstActionInBlock();
  secondAction();
}
thirdAction();

String str = null;
for (int i = 0; i &lt; array.length; i++) {
  str = array[i];
  doTheThing(str);
}
</pre>
<h2>See</h2>
<ul>
  <li> <a href="http://cwe.mitre.org/data/definitions/483.html">MITRE, CWE-483</a> - Incorrect Block Delimitation </li>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/3wHEAw">CERT, EXP52-J.</a> - Use braces for the body of an if, for, or while statement
  </li>
</ul>Z
CODE_SMELL
Å
squid:NoSonarÔ
squidNoSonar Track uses of "NOSONAR" comments"MAJOR*java2S1291:ö<p>Any issue to quality rule can be deactivated with the <code>NOSONAR</code> marker. This marker is pretty useful to exclude false-positive results
but it can also be used abusively to hide real quality flaws.</p>
<p>This rule raises an issue when <code>NOSONAR</code> is used.</p>Z
CODE_SMELL
„
squid:S2209”
squidS2209."static" members should be accessed statically"MAJOR*java:˘<p>While it is <em>possible</em> to access <code>static</code> members from a class instance, it's bad form, and considered by most to be misleading
because it implies to the readers of your code that there's an instance of the member per class instance.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public class A {
  public static int counter = 0;
}

public class B {
  private A first = new A();
  private A second = new A();

  public void runUpTheCount() {
    first.counter ++;  // Noncompliant
    second.counter ++;  // Noncompliant. A.counter is now 2, which is perhaps contrary to expectations
  }
}
</pre>
<h2>Compliant Solution</h2>
<pre>
public class A {
  public static int counter = 0;
}

public class B {
  private A first = new A();
  private A second = new A();

  public void runUpTheCount() {
    A.counter ++;  // Compliant
    A.counter ++;  // Compliant
  }
}
</pre>Z
CODE_SMELL
†
squid:S3417ê
squidS3417%Track uses of disallowed dependencies"MAJOR*java:Ω<p>Whether they are disallowed locally for security, license, or dependability reasons, forbidden dependencies should not be used. </p>
<p>This rule raises an issue when the group or artifact id of a direct dependency matches the configured forbidden dependency pattern. </p>
<h2>Noncompliant Code Example</h2>
<p>With a parameter of: <code>*:.*log4j.*</code></p>
<pre>
&lt;dependency&gt; &lt;!-- Noncompliant --&gt;
    &lt;groupId&gt;log4j&lt;/groupId&gt;
    &lt;artifactId&gt;log4j&lt;/artifactId&gt;
    &lt;version&gt;1.2.17&lt;/version&gt;
&lt;/dependency&gt;
</pre>@Z
CODE_SMELL
∏
squid:S1118®
squidS11183Utility classes should not have public constructors"MAJOR*java:…<p>Utility classes, which are collections of <code>static</code> members, are not meant to be instantiated. Even abstract utility classes, which can
be extended, should not have public constructors.</p>
<p>Java adds an implicit public constructor to every class which does not define at least one explicitly. Hence, at least one non-public constructor
should be defined.</p>
<h2>Noncompliant Code Example</h2>
<pre>
class StringUtils { // Noncompliant

  public static String concatenate(String s1, String s2) {
    return s1 + s2;
  }

}
</pre>
<h2>Compliant Solution</h2>
<pre>
class StringUtils { // Compliant

  private StringUtils() {
    throw new IllegalStateException("Utility class");
  }

  public static String concatenate(String s1, String s2) {
    return s1 + s2;
  }

}
</pre>
<h2>Exceptions</h2>
<p>When class contains <code>public static void main(String[] args)</code> method it is not considered as utility class and will be ignored by this
rule.</p>Z
CODE_SMELL
¿
squid:S3415∞
squidS34159Assertion arguments should be passed in the correct order"MAJOR*java:À<p>The standard assertions library methods such as <code>org.junit.Assert.assertEquals</code>, and <code>org.junit.Assert.assertSame</code> expect the
first argument to be the expected value and the second argument to be the actual value. Swap them, and your test will still have the same outcome
(succeed/fail when it should) but the error messages will be confusing. </p>
<p>This rule raises an issue when the second argument to an assertions library method is a hard-coded value and the first argument is not.</p>
<h2>Noncompliant Code Example</h2>
<pre>
org.junit.Assert.assertEquals(runner.exitCode(), 0, "Unexpected exit code");  // Noncompliant; Yields error message like: Expected:&lt;-1&gt;. Actual:&lt;0&gt;.
</pre>
<h2>Compliant Solution</h2>
<pre>
org.junit.Assert.assertEquals(0, runner.exitCode(), "Unexpected exit code");
</pre>Z
CODE_SMELL
¯
squid:S2326Ë
squidS2326(Unused type parameters should be removed"MAJOR*java:î<p>Type parameters that aren't used are dead code, which can only distract and possibly confuse developers during maintenance. Therefore, unused type
parameters should be removed.</p>
<h2>Noncompliant Code Example</h2>
<pre>
int &lt;T&gt; Add(int a, int b) // Noncompliant; &lt;T&gt; is ignored
{
  return a + b;
}
</pre>
<h2>Compliant Solution</h2>
<pre>
int Add(int a, int b)
{
  return a + b;
}
</pre>Z
CODE_SMELL
’
squid:S1479≈
squidS1479;"switch" statements should not have too many "case" clauses"MAJOR*java:ﬁ<p>When <code>switch</code> statements have large sets of <code>case</code> clauses, it is usually an attempt to map two sets of data. A real map
structure would be more readable and maintainable, and should be used instead.</p>
<h2>Exceptions</h2>
<p>This rule ignores <code>switch</code>es over <code>Enum</code>s and empty, fall-through cases.</p>Z
CODE_SMELL
·
squid:UnusedPrivateMethod√
squidUnusedPrivateMethod*Unused "private" methods should be removed"MAJOR*java2S1144:ÿ<p><code>private</code> methods that are never executed are dead code: unnecessary, inoperative code that should be removed. Cleaning out dead code
decreases the size of the maintained codebase, making it easier to understand the program and preventing bugs from being introduced.</p>
<p>Note that this rule does not take reflection into account, which means that issues will be raised on <code>private</code> methods that are only
accessed using the reflection API.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public class Foo implements Serializable
{
  private Foo(){}     //Compliant, private empty constructor intentionally used to prevent any direct instantiation of a class.
  public static void doSomething(){
    Foo foo = new Foo();
    ...
  }
  private void unusedPrivateMethod(){...}
  private void writeObject(ObjectOutputStream s){...}  //Compliant, relates to the java serialization mechanism
  private void readObject(ObjectInputStream in){...}  //Compliant, relates to the java serialization mechanism
}
</pre>
<h2>Compliant Solution</h2>
<pre>
public class Foo implements Serializable
{
  private Foo(){}     //Compliant, private empty constructor intentionally used to prevent any direct instantiation of a class.
  public static void doSomething(){
    Foo foo = new Foo();
    ...
  }

  private void writeObject(ObjectOutputStream s){...}  //Compliant, relates to the java serialization mechanism

  private void readObject(ObjectInputStream in){...}  //Compliant, relates to the java serialization mechanism
}
</pre>
<h2>Exceptions</h2>
<p>This rule doesn't raise any issue on annotated methods.</p>Z
CODE_SMELL
€
squid:UselessParenthesesCheckπ
squidUselessParenthesesCheck0Redundant pairs of parentheses should be removed"MAJOR*java2S1110:ƒ<p>The use of parentheses, even those not required to enforce a desired order of operations, can clarify the intent behind a piece of code. But
redundant pairs of parentheses could be misleading, and should be removed. </p>
<h2>Noncompliant Code Example</h2>
<pre>
int x = (y / 2 + 1);   //Compliant even if the parenthesis are ignored by the compiler

if (a &amp;&amp; ((x+y &gt; 0))) {  // Noncompliant
  //...
}

return ((x + 1));  // Noncompliant
</pre>
<h2>Compliant Solution</h2>
<pre>
int x = (y / 2 + 1);

if (a &amp;&amp; (x+y &gt; 0)) {
  //...
}

return (x + 1);
</pre>Z
CODE_SMELL
‹
squid:S1244Ã
squidS12448Floating point numbers should not be tested for equality"MAJOR*java:Ô<p>Floating point math is imprecise because of the challenges of storing such values in a binary representation. Even worse, floating point math is
not associative; push a <code>float</code> or a <code>double</code> through a series of simple mathematical operations and the answer will be
different based on the order of those operation because of the rounding that takes place at each step.</p>
<p>Even simple floating point assignments are not simple:</p>
<pre>
float f = 0.1; // 0.100000001490116119384765625
double d = 0.1; // 0.1000000000000000055511151231257827021181583404541015625
</pre>
<p>(Results will vary based on compiler and compiler settings);</p>
<p>Therefore, the use of the equality (<code>==</code>) and inequality (<code>!=</code>) operators on <code>float</code> or <code>double</code> values
is almost always an error. Instead the best course is to avoid floating point comparisons altogether. When that is not possible, you should consider
using one of Java's float-handling <code>Numbers</code> such as <code>BigDecimal</code> which can properly handle floating point comparisons. A third
option is to look not for equality but for whether the value is close enough. I.e. compare the absolute value of the difference between the stored
value and the expected value against a margin of acceptable error. Note that this does not cover all cases (<code>NaN</code> and <code>Infinity</code>
for instance).</p>
<p>This rule checks for the use of direct and indirect equality/inequailty tests on floats and doubles.</p>
<h2>Noncompliant Code Example</h2>
<pre>
float myNumber = 3.146;
if ( myNumber == 3.146f ) { //Noncompliant. Because of floating point imprecision, this will be false
  // ...
}
if ( myNumber != 3.146f ) { //Noncompliant. Because of floating point imprecision, this will be true
  // ...
}

if (myNumber &lt; 4 || myNumber &gt; 4) { // Noncompliant; indirect inequality test
  // ...
}

float zeroFloat = 0.0f;
if (zeroFloat == 0) {  // Noncompliant. Computations may end up with a value close but not equal to zero.
}
</pre>
<h2>Exceptions</h2>
<p>Since <code>NaN</code> is not equal to itself, the specific case of testing a floating point value against itself is a valid test for
<code>NaN</code> and is therefore ignored. Though using <code>Double.isNaN</code> method should be preferred instead, as intent is more explicit.</p>
<pre>
float f;
double d;
if(f != f) { // Compliant; test for NaN value
  System.out.println("f is NaN");
} else if (f != d) { // Noncompliant
  // ...
}
</pre>
<h2>See</h2>
<ul>
  <li> MISRA C:2004, 13.3 - Floating-point expressions shall not be tested for equality or inequality. </li>
  <li> MISRA C++:2008, 6-2-2 - Floating-point expressions shall not be directly or indirectly tested for equality or inequality </li>
</ul>ZBUG
Ö
squid:S2694ı
squidS2694LInner classes which do not reference their owning classes should be "static""MAJOR*java:˝<p>A non-static inner class has a reference to its outer class, and access to the outer class' fields and methods. That class reference makes the
inner class larger and could cause the outer class instance to live in memory longer than necessary. </p>
<p>If the reference to the outer class isn't used, it is more efficient to make the inner class <code>static</code> (also called nested). If the
reference is used only in the class constructor, then explicitly pass a class reference to the constructor. If the inner class is anonymous, it will
also be necessary to name it. </p>
<p>However, while a nested/<code>static</code> class would be more efficient, it's worth noting that there are semantic differences between an inner
class and a nested one:</p>
<ul>
  <li> an inner class can only be instantiated within the context of an instance of the outer class. </li>
  <li> a nested (<code>static</code>) class can be instantiated independently of the outer class. </li>
</ul>
<h2>Noncompliant Code Example</h2>
<pre>
public class Fruit {
  // ...

  public class Seed {  // Noncompliant; there's no use of the outer class reference so make it static
    int germinationDays = 0;
    public Seed(int germinationDays) {
      this.germinationDays = germinationDays;
    }
    public int getGerminationDays() {
      return germinationDays;
    }
  }
}
</pre>
<h2>Compliant Solution</h2>
<pre>
public class Fruit {
  // ...

  public static class Seed {
    int germinationDays = 0;
    public Seed(int germinationDays) {
      this.germinationDays = germinationDays;
    }
    public int getGerminationDays() {
      return germinationDays;
    }
  }
}
</pre>Z
CODE_SMELL
Á
squid:S2211◊
squidS2211Types should be used in lambdas"MAJOR*java:å<p>Shared coding conventions allow teams to collaborate effectively. While types for lambda arguments are optional, specifying them anyway makes the
code clearer and easier to read.</p>
<h2>Noncompliant Code Example</h2>
<pre>
Arrays.sort(rosterAsArray,
    (a, b) -&gt; {  // Noncompliant
        return a.getBirthday().compareTo(b.getBirthday());
    }
);
</pre>
<h2>Compliant Solution</h2>
<pre>
Arrays.sort(rosterAsArray,
    (Person a, Person b) -&gt; {
        return a.getBirthday().compareTo(b.getBirthday());
    }
);
</pre>
<h2>Exceptions</h2>
<p>When the lambda has one or two parameters and does not have a block this rule will not fire up an issue as things are considered more readable in
those cases.</p>
<pre>
stream.map((a, b) -&gt; a.length); // compliant
</pre>Z
CODE_SMELL
’
squid:S3306≈
squidS3306?Constructor injection should be used instead of field injection"MAJOR*java:·
<p>Field injection seems like a tidy way to get your classes what they need to do their jobs, but it's really a <code>NullPointerException</code>
waiting to happen unless all your class constructors are <code>private</code>. That's because any class instances that are constructed by callers,
rather than instantiated by a Dependency Injection framework compliant with the JSR-330 (Spring, Guice, ...), won't have the ability to perform the
field injection.</p>
<p>Instead <code>@Inject</code> should be moved to the constructor and the fields required as constructor parameters.</p>
<p>This rule raises an issue when classes with non-<code>private</code> constructors (including the default constructor) use field injection.</p>
<h2>Noncompliant Code Example</h2>
<pre>
class MyComponent {  // Anyone can call the default constructor

  @Inject MyCollaborator collaborator;  // Noncompliant

  public void myBusinessMethod() {
    collaborator.doSomething();  // this will fail in classes new-ed by a caller
  }
}
</pre>
<h2>Compliant Solution</h2>
<pre>
class MyComponent {

  private final MyCollaborator collaborator;

  @Inject
  public MyComponent(MyCollaborator collaborator) {
    Assert.notNull(collaborator, "MyCollaborator must not be null!");
    this.collaborator = collaborator;
  }

  public void myBusinessMethod() {
    collaborator.doSomething();
  }
}
</pre>ZBUG
é

squid:S4517˛	
squidS4517@InputSteam.read() implementation should not return a signed byte"MAJOR*java:ô	<p>According to the Java documentation, any implementation of the <code>InputSteam.read()</code> method is supposed to read the next byte of data from
the input stream. The value byte must be an <code>int</code> in the range 0 to 255. If no byte is available because the end of the stream has been
reached, the value -1 is returned.</p>
<p>But in Java, the <code>byte</code> primitive data type is an 8-bit signed two's complement integer. It has a minimum value of -128 and a maximum
value of 127. So by contract, the implementation of an <code>InputSteam.read()</code> method should never directly return a <code>byte</code>
primitive data type. A conversion into an unsigned byte must be done before by applying a bitmask.</p>
<h2>Noncompliant Code Example</h2>
<pre>
@Override
public int read() throws IOException {
  if (pos == buffer.length()) {
    return -1;
  }
  return buffer.getByte(pos++); // Noncompliant, a signed byte value is returned
}
</pre>
<h2>Compliant Solution</h2>
<pre>
@Override
public int read() throws IOException {
  if (pos == buffer.length()) {
    return -1;
  }
  return buffer.getByte(pos++) &amp; 0xFF; // The 0xFF bitmask is applied
}
</pre>ZBUG
é
squid:S3358˛
squidS3358&Ternary operators should not be nested"MAJOR*java:¨<p>Just because you <em>can</em> do something, doesn't mean you should, and that's the case with nested ternary operations. Nesting ternary operators
results in the kind of code that may seem clear as day when you write it, but six months later will leave maintainers (or worse - future you)
scratching their heads and cursing.</p>
<p>Instead, err on the side of clarity, and use another line to express the nested operation as a separate statement.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public String getTitle(Person p) {
  return p.gender == Person.MALE ? "Mr. " : p.isMarried() ? "Mrs. " : "Miss ";  // Noncompliant
}
</pre>
<h2>Compliant Solution</h2>
<pre>
public String getTitle(Person p) {
  if (p.gender == Person.MALE) {
    return "Mr. ";
  }
  return p.isMarried() ? "Mrs. " : "Miss ";
}
</pre>Z
CODE_SMELL
ë
squid:S2388Å
squidS2388>Inner class calls to super class methods should be unambiguous"MAJOR*java:ó<p>When an inner class extends another class, and both its outer class and its parent class have a method with the same name, calls to that method can
be confusing. The compiler will resolve the call to the superclass method, but maintainers may be confused, so the superclass method should be called
explicitly, using <code>super.</code>.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public class Parent {
  public void foo() { ... }
}

public class Outer {

  public void foo() { ... }

  public class Inner extends Parent {

    public void doTheThing() {
      foo();  // Noncompliant; was Outer.this.foo() intended instead?
      // ...
    }
  }
}
</pre>
<h2>Compliant Solution</h2>
<pre>
public class Parent {
  public void foo() { ... }
}

public class Outer {

  public void foo() { ... }

  public class Inner extends Parent {

    public void doTheThing() {
      super.foo();
      // ...
    }
  }
}
</pre>Z
CODE_SMELL
ñ
squid:S2142Ü
squidS2142,"InterruptedException" should not be ignored"MAJOR*java:µ<p><code>InterruptedExceptions</code> should never be ignored in the code, and simply logging the exception counts in this case as "ignoring". The
throwing of the <code>InterruptedException</code> clears the interrupted state of the Thread, so if the exception is not handled properly the fact
that the thread was interrupted will be lost. Instead, <code>InterruptedExceptions</code> should either be rethrown - immediately or after cleaning up
the method's state - or the thread should be re-interrupted by calling <code>Thread.interrupt()</code> even if this is supposed to be a
single-threaded application. Any other course of action risks delaying thread shutdown and loses the information that the thread was interrupted -
probably without finishing its task.</p>
<p>Similarly, the <code>ThreadDeath</code> exception should also be propagated. According to its JavaDoc:</p>
<blockquote>
  <p>If <code>ThreadDeath</code> is caught by a method, it is important that it be rethrown so that the thread actually dies.</p>
</blockquote>
<h2>Noncompliant Code Example</h2>
<pre>
public void run () {
  try {
    while (true) {
      // do stuff
    }
  }catch (InterruptedException e) { // Noncompliant; logging is not enough
    LOGGER.log(Level.WARN, "Interrupted!", e);
  }
}
</pre>
<h2>Compliant Solution</h2>
<pre>
public void run () {
  try {
    while (true) {
      // do stuff
    }
  }catch (InterruptedException e) {
    LOGGER.log(Level.WARN, "Interrupted!", e);
    // Restore interrupted state...
    Thread.currentThread().interrupt();
  }
}
</pre>
<h2>See</h2>
<ul>
  <li> <a href="http://cwe.mitre.org/data/definitions/391.html">MITRE, CWE-391</a> - Unchecked Error Condition </li>
  <li> <a href="https://www.ibm.com/developerworks/java/library/j-jtp05236/index.html?ca=drs-#2.1">Dealing with InterruptedException</a> </li>
</ul>ZBUG
É
squid:S2143Û
squidS21436"java.time" classes should be used for dates and times"MAJOR*java:ë<p>The old, much-derided <code>Date</code> and <code>Calendar</code> classes have always been confusing and difficult to use properly, particularly in
a multi-threaded context. <code>JodaTime</code> has long been a popular alternative, but now an even better option is built-in. Java 8's JSR 310
implementation offers specific classes for:</p>
<table>
  <tbody>
    <tr>
      <th>Class</th>
      <th>Use for</th>
    </tr>
    <tr>
      <td>LocalDate</td>
      <td>a date, without time of day, offset, or zone</td>
    </tr>
    <tr>
      <td>LocalTime</td>
      <td>the time of day, without date, offset, or zone</td>
    </tr>
    <tr>
      <td>LocalDateTime</td>
      <td>the date and time, without offset, or zone</td>
    </tr>
    <tr>
      <td>OffsetDate</td>
      <td>a date with an offset such as +02:00, without time of day, or zone</td>
    </tr>
    <tr>
      <td>OffsetTime</td>
      <td>the time of day with an offset such as +02:00, without date, or zone</td>
    </tr>
    <tr>
      <td>OffsetDateTime</td>
      <td>the date and time with an offset such as +02:00, without a zone</td>
    </tr>
    <tr>
      <td>ZonedDateTime</td>
      <td>the date and time with a time zone and offset</td>
    </tr>
    <tr>
      <td>YearMonth</td>
      <td>a year and month</td>
    </tr>
    <tr>
      <td>MonthDay</td>
      <td>month and day</td>
    </tr>
    <tr>
      <td>Year/MonthOfDay/DayOfWeek/...</td>
      <td>classes for the important fields</td>
    </tr>
    <tr>
      <td>DateTimeFields</td>
      <td>stores a map of field-value pairs which may be invalid</td>
    </tr>
    <tr>
      <td>Calendrical</td>
      <td>access to the low-level API</td>
    </tr>
    <tr>
      <td>Period</td>
      <td>a descriptive amount of time, such as "2 months and 3 days"</td>
    </tr>
  </tbody>
</table>
<h2>Noncompliant Code Example</h2>
<pre>
Date now = new Date();  // Noncompliant
DateFormat df = new SimpleDateFormat("dd.MM.yyyy");
Calendar christmas  = Calendar.getInstance();  // Noncompliant
christmas.setTime(df.parse("25.12.2020"));
</pre>
<h2>Compliant Solution</h2>
<pre>
LocalDate now = LocalDate.now();  // gets calendar date. no time component
LocalTime now2 = LocalTime.now(); // gets current time. no date component
LocalDate christmas = LocalDate.of(2020,12,25);
</pre>Z
CODE_SMELL
æ
squid:S4449Æ
squidS4449+Nullness of parameters should be guaranteed"MAJOR*java:◊<p>When using null-related annotations at global scope level, for instance using <code>javax.annotation.ParametersAreNonnullByDefault</code> (from
JSR-305) at package level, it means that all the parameters to all the methods included in the package will, or should, be considered
Non-<code>null</code>. It is equivalent to annotating every parameter in every method with non-null annotations (such as <code>@Nonnull</code>).</p>
<p>The rule raises an issue every time a parameter could be <code>null</code> for a method invocation, where the method is annotated as forbidding
null parameters.</p>
<h2>Noncompliant Code Example</h2>
<pre>
@javax.annotation.ParametersAreNonnullByDefault
class A {

  void foo() {
    bar(getValue()); // Noncompliant - method 'bar' do not expect 'null' values as parameter
  }

  void bar(Object o) { // 'o' is by contract expected never to be null
    // ...
  }

  @javax.annotation.CheckForNull
  abstract Object getValue();
}
</pre>
<h2>Compliant Solution</h2>
<p>Two solutions are possible: </p>
<ul>
  <li> The signature of the method is correct, and null check should be done prior to the call. </li>
  <li> The signature of the method is not coherent and should be annotated to allow null values being passed as parameter </li>
</ul>
<pre>
@javax.annotation.ParametersAreNonnullByDefault
abstract class A {

  void foo() {
      Object o = getValue();
      if (o != null) {
        bar(); // Compliant - 'o' can not be null
      }
  }

  void bar(Object o) {
    // ...
  }

  @javax.annotation.CheckForNull
  abstract Object getValue();
}
</pre>
<p>or </p>
<pre>
@javax.annotation.ParametersAreNonnullByDefault
abstract class A {

  void foo() {
    bar(getValue());
  }

  void bar(@javax.annotation.Nullable Object o) { // annotation was missing
    // ...
  }

  @javax.annotation.CheckForNull
  abstract Object getValue();
}
</pre>Z
CODE_SMELL
Ï
squid:S2141‹
squidS2141CClasses that don't define "hashCode()" should not be used in hashes"MAJOR*java:Ù<p>Because <code>Object</code> implements <code>hashCode</code>, any Java class can be put into a hash structure. However, classes that define
<code>equals(Object)</code> but not <code>hashCode()</code> aren't truly hash-able because instances that are equivalent according to the
<code>equals</code> method can return different hashes.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public class Student {  // no hashCode() method; not hash-able
  // ...

  public boolean equals(Object o) {
    // ...
  }
}

public class School {
  private Map&lt;Student, Integer&gt; studentBody = // okay so far
          new HashTable&lt;Student, Integer&gt;(); // Noncompliant

  // ...
</pre>
<h2>Compliant Solution</h2>
<pre>
public class Student {  // has hashCode() method; hash-able
  // ...

  public boolean equals(Object o) {
    // ...
  }
  public int hashCode() {
    // ...
  }
}

public class School {
  private Map&lt;Student, Integer&gt; studentBody = new HashTable&lt;Student, Integer&gt;();

  // ...
</pre>ZBUG
÷
squid:S1172∆
squidS1172*Unused method parameters should be removed"MAJOR*java:<p>Unused parameters are misleading. Whatever the values passed to such parameters, the behavior will be the same.</p>
<h2>Noncompliant Code Example</h2>
<pre>
void doSomething(int a, int b) {     // "b" is unused
  compute(a);
}
</pre>
<h2>Compliant Solution</h2>
<pre>
void doSomething(int a) {
  compute(a);
}
</pre>
<h2>Exceptions</h2>
<p>The rule will not raise issues for unused parameters:</p>
<ul>
  <li> that are annotated with <code>@javax.enterprise.event.Observes</code> </li>
  <li> in overrides and implementation methods </li>
  <li> in interface <code>default</code> methods </li>
  <li> in non-private methods that only <code>throw</code> or that have empty bodies </li>
  <li> in annotated methods, unless the annotation is <code>@SuppressWarning("unchecked")</code> or <code>@SuppressWarning("rawtypes")</code>, in
  which case the annotation will be ignored </li>
  <li> in overridable methods (non-final, or not member of a final class, non-static, non-private), if the parameter is documented with a proper
  javadoc. </li>
</ul>
<pre>
@Override
void doSomething(int a, int b) {     // no issue reported on b
  compute(a);
}

public void foo(String s) {
  // designed to be extended but noop in standard case
}

protected void bar(String s) {
  //open-closed principle
}

public void qix(String s) {
  throw new UnsupportedOperationException("This method should be implemented in subclasses");
}

/**
 * @param s This string may be use for further computation in overriding classes
 */
protected void foobar(int a, String s) { // no issue, method is overridable and unused parameter has proper javadoc
  compute(a);
}
</pre>
<h2>See</h2>
<ul>
  <li> MISRA C++:2008, 0-1-11 - There shall be no unused parameters (named or unnamed) in nonvirtual functions. </li>
  <li> MISRA C:2012, 2.7 - There should be no unused parameters in functions </li>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/NYA5">CERT, MSC12-C.</a> - Detect and remove code that has no effect or is never
  executed </li>
</ul>Z
CODE_SMELL
Ò
squid:S1171·
squidS1171-Only static class initializers should be used"MAJOR*java:à<p>Non-static initializers are rarely used, and can be confusing for most developers because they only run when new class instances are created. When
possible, non-static initializers should be refactored into standard constructors or field initializers.</p>
<h2>Noncompliant Code Example</h2>
<pre>
class MyClass {
  private static final Map&lt;String, String&gt; MY_MAP = new HashMap&lt;String, String&gt;() {

    // Noncompliant - HashMap should be extended only to add behavior, not for initialization
    {
      put("a", "b");
    }

  };
}
</pre>
<h2>Compliant Solution</h2>
<pre>
class MyClass {
  private static final Map&lt;String, String&gt; MY_MAP = new HashMap&lt;String, String&gt;();

  static {
    MY_MAP.put("a", "b");
  }
}
</pre>
<p>or using Guava:</p>
<pre>
class MyClass {
  // Compliant
  private static final Map&lt;String, String&gt; MY_MAP = ImmutableMap.of("a", "b");
}
</pre>Z
CODE_SMELL
’
squid:S2159≈
squidS2159(Silly equality checks should not be made"MAJOR*java:¯<p>Comparisons of dissimilar types will always return false. The comparison and all its dependent code can simply be removed. This includes:</p>
<ul>
  <li> comparing an object with null </li>
  <li> comparing an object with an unrelated primitive (E.G. a string with an int) </li>
  <li> comparing unrelated classes </li>
  <li> comparing an unrelated <code>class</code> and <code>interface</code> </li>
  <li> comparing unrelated <code>interface</code> types </li>
  <li> comparing an array to a non-array </li>
  <li> comparing two arrays </li>
</ul>
<p>Specifically in the case of arrays, since arrays don't override <code>Object.equals()</code>, calling <code>equals</code> on two arrays is the same
as comparing their addresses. This means that <code>array1.equals(array2)</code> is equivalent to <code>array1==array2</code>.</p>
<p>However, some developers might expect <code>Array.equals(Object obj)</code> to do more than a simple memory address comparison, comparing for
instance the size and content of the two arrays. Instead, the <code>==</code> operator or <code>Arrays.equals(array1, array2)</code> should always be
used with arrays.</p>
<h2>Noncompliant Code Example</h2>
<pre>
interface KitchenTool { ... };
interface Plant {...}

public class Spatula implements KitchenTool { ... }
public class Tree implements Plant { ...}
//...

Spatula spatula = new Spatula();
KitchenTool tool = spatula;
KitchenTool [] tools = {tool};

Tree tree = new Tree();
Plant plant = tree;
Tree [] trees = {tree};


if (spatula.equals(tree)) { // Noncompliant; unrelated classes
  // ...
}
else if (spatula.equals(plant)) { // Noncompliant; unrelated class and interface
  // ...
}
else if (tool.equals(plant)) { // Noncompliant; unrelated interfaces
  // ...
}
else if (tool.equals(tools)) { // Noncompliant; array &amp; non-array
  // ...
}
else if (trees.equals(tools)) {  // Noncompliant; incompatible arrays
  // ...
}
else if (tree.equals(null)) {  // Noncompliant
  // ...
}
</pre>
<h2>See</h2>
<ul>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/IQAlAg">CERT, EXP02-J.</a> - Do not use the Object.equals() method to compare two
  arrays </li>
</ul>ZBUG
‘
squid:S1068ƒ
squidS1068)Unused "private" fields should be removed"MAJOR*java:Ô<p>If a <code>private</code> field is declared but not used in the program, it can be considered dead code and should therefore be removed. This will
improve maintainability because developers will not wonder what the variable is used for.</p>
<p>Note that this rule does not take reflection into account, which means that issues will be raised on <code>private</code> fields that are only
accessed using the reflection API.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public class MyClass {
  private int foo = 42;

  public int compute(int a) {
    return a * 42;
  }

}
</pre>
<h2>Compliant Solution</h2>
<pre>
public class MyClass {
  public int compute(int a) {
    return a * 42;
  }
}
</pre>
<h2>Exceptions</h2>
<p>The Java serialization runtime associates with each serializable class a version number, called <code>serialVersionUID</code>, which is used during
deserialization to verify that the sender and receiver of a serialized object have loaded classes for that object that are compatible with respect to
serialization.</p>
<p>A serializable class can declare its own <code>serialVersionUID</code> explicitly by declaring a field named <code>serialVersionUID</code> that
must be static, final, and of type long. By definition those <code>serialVersionUID</code> fields should not be reported by this rule:</p>
<pre>
public class MyClass implements java.io.Serializable {
  private static final long serialVersionUID = 42L;
}
</pre>
<p>Moreover, this rule doesn't raise any issue on annotated fields.</p>Z
CODE_SMELL
⁄
squid:S1188 
squidS1188DLambdas and anonymous classes should not have too many lines of code"MAJOR*java:⁄<p>Anonymous classes and lambdas (with Java 8) are a very convenient and compact way to inject a behavior without having to create a dedicated class.
But those anonymous inner classes and lambdas should be used only if the behavior to be injected can be defined in a few lines of code, otherwise the
source code can quickly become unreadable.</p>Z
CODE_SMELL
Ω
squid:S3366≠
squidS3366."this" should not be exposed from constructors"MAJOR*java:”<p>In single-threaded environments, the use of <code>this</code> in constructors is normal, and expected. But in multi-threaded environments, it could
expose partially-constructed objects to other threads, and should be used with caution.</p>
<p>The classic example is a class with a <code>static</code> list of its instances. If the constructor stores <code>this</code> in the list, another
thread could access the object before it's fully-formed. Even when the storage of <code>this</code> is the last instruction in the constructor,
there's still a danger if the class is not <code>final</code>. In that case, the initialization of subclasses won't be complete before
<code>this</code> is exposed.</p>
<p>This rule raises an issue when <code>this</code> is assigned to any globally-visible object in a constructor, and when it is passed to the method
of another object in a constructor</p>
<h2>Noncompliant Code Example</h2>
<pre>
public class Monument {

  public static final List&lt;Monument&gt; ALL_MONUMENTS = new ArrayList()&lt;&gt;;
  // ...

  public Monument(String location, ...) {
    ALL_MONUMENTS.add(this);  // Noncompliant; passed to a method of another object

    this.location = location;
    // ...
  }
}
</pre>
<h2>Exceptions</h2>
<p>This rule ignores instances of assigning <code>this</code> directly to a <code>static</code> field of the same class because that case is covered
by S3010.</p>
<h2>See</h2>
<ul>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/aAD1AQ">CERT, TSM01-J.</a> - Do not let the this reference escape during object
  construction </li>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/7ABQAg">CERT, TSM03-J.</a> - Do not publish partially initialized objects </li>
</ul>Z
CODE_SMELL
ô
squid:S1066â
squidS1066,Collapsible "if" statements should be merged"MAJOR*java:±<p>Merging collapsible <code>if</code> statements increases the code's readability.</p>
<h2>Noncompliant Code Example</h2>
<pre>
if (file != null) {
  if (file.isFile() || file.isDirectory()) {
    /* ... */
  }
}
</pre>
<h2>Compliant Solution</h2>
<pre>
if (file != null &amp;&amp; isFileOrDirectory(file)) {
  /* ... */
}

private static boolean isFileOrDirectory(File file) {
  return file.isFile() || file.isDirectory();
}
</pre>Z
CODE_SMELL
√
squid:S1065≥
squidS1065Unused labels should be removed"MAJOR*java:Ë<p>If a label is declared but not used in the program, it can be considered as dead code and should therefore be removed.</p>
<p>This will improve maintainability as developers will not wonder what this label is used for.</p>
<h2>Noncompliant Code Example</h2>
<pre>
void foo() {
  outer: //label is not used.
  for(int i = 0; i&lt;10; i++) {
    break;
  }
}
</pre>
<h2>Compliant Solution</h2>
<pre>
void foo() {
  for(int i = 0; i&lt;10; i++) {
    break;
  }
}
</pre>
<h2>See</h2>
<ul>
  <li> MISRA C:2012, 2.6 - A function should not contain unused label declarations </li>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/NYA5">CERT, MSC12-C.</a> - Detect and remove code that has no effect or is never
  executed </li>
</ul>Z
CODE_SMELL
Ä
squid:S2154
squidS2154cDissimilar primitive wrappers should not be used with the ternary operator without explicit casting"MAJOR*java:Ë<p>If wrapped primitive values (e.g. <code>Integers</code> and <code>Floats</code>) are used in a ternary operator (e.g. <code>a?b:c</code>), both
values will be unboxed and coerced to a common type, potentially leading to unexpected results. To avoid this, add an explicit cast to a compatible
type.</p>
<h2>Noncompliant Code Example</h2>
<pre>
Integer i = 123456789;
Float f = 1.0f;
Number n = condition ? i : f;  // Noncompliant; i is coerced to float. n = 1.23456792E8
</pre>
<h2>Compliant Solution</h2>
<pre>
Integer i = 123456789;
Float f = 1.0f;
Number n = condition ? (Number) i : f;  // n = 123456789
</pre>ZBUG
⁄
squid:UndocumentedApi¿
squidUndocumentedApiHPublic types, methods and fields (API) should be documented with Javadoc"MAJOR*java2S1176:ª<p>Try to imagine using the standard Java API (Collections, JDBC, IO, ...) without Javadoc. It would be a nightmare, because Javadoc is the only way
to understand of the contract of the API. Documenting an API with Javadoc increases the productivity of the developers consuming it.</p>
<p>On top of a main description for each member of a public API, the following Javadoc elements are required to be described:</p>
<ul>
  <li> Parameters, using <code>@param parameterName</code>. </li>
  <li> Thrown exceptions, using <code>@throws exceptionName</code>. </li>
  <li> Method return values, using <code>@return</code>. </li>
  <li> Generic types, using <code>@param &lt;T&gt;</code>. </li>
</ul>
<p>Furthermore the following guidelines should be followed:</p>
<ul>
  <li> At least 1 line of description. </li>
  <li> All parameters documented with <code>@param</code>, and names should match. </li>
  <li> All checked exceptions documented with <code>@throws</code> </li>
  <li> <code>@return</code> present and documented when not <code>void</code>. </li>
  <li> Placeholders like "TODO", "FIXME", "..." should be avoided. </li>
</ul>
<p>The following public methods and constructors are not taken into account by this rule:</p>
<ul>
  <li> Getters and setters. </li>
  <li> Methods overriding another method (usually decorated with <code>@Override</code>). </li>
  <li> Empty constructors. </li>
  <li> Static constants. </li>
</ul>
<h2>Noncompliant Code Example</h2>
<pre>
/**
  * This is a Javadoc comment
  */
public class MyClass&lt;T&gt; implements Runnable {    // Noncompliant - missing '@param &lt;T&gt;'

  public static final DEFAULT_STATUS = 0;    // Compliant - static constant
  private int status;                           // Compliant - not public

  public String message;                  // Noncompliant

  public MyClass() {                         // Noncompliant - missing documentation
    this.status = DEFAULT_STATUS;
  }

  public void setStatus(int status) {  // Compliant - setter
    this.status = status;
  }

  @Override
  public void run() {                          // Compliant - has @Override annotation
  }

  protected void doSomething() {    // Compliant - not public
  }

  public void doSomething2(int value) {  // Noncompliant
  }

  public int doSomething3(int value) {  // Noncompliant
    return value;
  }
}
</pre>
<h2>Compliant Solution</h2>
<pre>
/**
  * This is a Javadoc comment
  * @param &lt;T&gt; the parameter of the class
  */
public class MyClass&lt;T&gt; implements Runnable {

  public static final DEFAULT_STATUS = 0;
  private int status;

  /**
    * This is a Javadoc comment
    */
  public String message;

  /**
   * Class comment...
   */
  public MyClass() {
    this.status = DEFAULT_STATUS;
  }

  public void setStatus(int status) {
    this.status = status;
  }

  @Override
  public void run() {
  }

  protected void doSomething() {
  }

  /**
    * Will do something.
    * @param value the value to be used
    */
  public void doSomething(int value) {

  /**
    *  {@inheritDoc}
    */
  public int doSomething(int value) {
    return value;
  }
}
</pre>Z
CODE_SMELL
≥	
squid:S2273£	
squidS2273a"wait", "notify" and "notifyAll" should only be called when a lock is obviously held on an object"MAJOR*java:ù<p>By contract, the method <code>Object.wait(...)</code>, <code>Object.notify()</code> and <code>Object.notifyAll()</code> should be called by a
thread that is the owner of the object's monitor. If this is not the case an <code>IllegalMonitorStateException</code> exception is thrown. This rule
reinforces this constraint by making it mandatory to call one of these methods only inside a <code>synchronized</code> method or statement. </p>
<h2>Noncompliant Code Example</h2>
<pre>
private void removeElement() {
  while (!suitableCondition()){
    obj.wait();
  }
  ... // Perform removal
}
</pre>
<p>or</p>
<pre>
private void removeElement() {
  while (!suitableCondition()){
    wait();
  }
  ... // Perform removal
}
</pre>
<h2>Compliant Solution</h2>
<pre>
private void removeElement() {
  synchronized(obj) {
    while (!suitableCondition()){
      obj.wait();
    }
    ... // Perform removal
  }
}
</pre>
<p>or</p>
<pre>
private synchronized void removeElement() {
  while (!suitableCondition()){
    wait();
  }
  ... // Perform removal
}
</pre>ZBUG
‘
squid:S1181ƒ
squidS1181(Throwable and Error should not be caught"MAJOR*java:<p><code>Throwable</code> is the superclass of all errors and exceptions in Java. <code>Error</code> is the superclass of all errors, which are not
meant to be caught by applications.</p>
<p>Catching either <code>Throwable</code> or <code>Error</code> will also catch <code>OutOfMemoryError</code> and <code>InternalError</code>, from
which an application should not attempt to recover.</p>
<h2>Noncompliant Code Example</h2>
<pre>
try { /* ... */ } catch (Throwable t) { /* ... */ }
try { /* ... */ } catch (Error e) { /* ... */ }
</pre>
<h2>Compliant Solution</h2>
<pre>
try { /* ... */ } catch (RuntimeException e) { /* ... */ }
try { /* ... */ } catch (MyException e) { /* ... */ }
</pre>
<h2>See</h2>
<ul>
  <li> <a href="http://cwe.mitre.org/data/definitions/396.html">MITRE, CWE-396</a> - Declaration of Catch for Generic Exception </li>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/BIB3AQ">CERT, ERR08-J.</a> - Do not catch NullPointerException or any of its ancestors
  </li>
</ul>Z
CODE_SMELL
ª
squid:S4424´
squidS44248TrustManagers should not blindly accept any certificates"MAJOR*java:ƒ<p>Empty implementations of the <code>X509TrustManager</code> interface are often created to allow connection to a host that is not signed by a root
certificate authority. Such an implementation will accept any certificate, which leaves the application vulnerable to Man-in-the-middle attacks. The
correct solution is to provide an appropriate trust store.</p>
<p>This rule raises an issue when an implementation of <code>X509TrustManager</code> never throws exception.</p>
<h2>Noncompliant Code Example</h2>
<pre>
class TrustAllManager implements X509TrustManager {

    @Override
    public void checkClientTrusted(X509Certificate[] x509Certificates, String s) throws CertificateException {  // Noncompliant, nothing means trust any client
    }

    @Override
    public void checkServerTrusted(X509Certificate[] x509Certificates, String s) throws CertificateException { // Noncompliant, this method never throws exception, it means trust any client
        LOG.log(Level.SEVERE, ERROR_MESSAGE);
    }

    @Override
    public X509Certificate[] getAcceptedIssuers() {
        return null;
    }
}
</pre>
<h2>See</h2>
<ul>
  <li> <a href="http://cwe.mitre.org/data/definitions/295.html">MITRE, CWE-295</a> - Improper Certificate Validation </li>
  <li> OWASP Top 10 2017 Category A6 - Security Misconfiguration </li>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/VwAZAg">CERT, MSC61-J.</a> - Do not use insecure or weak cryptographic algorithms </li>
</ul>ZVULNERABILITY
æ
squid:S3457Æ
squidS34574Printf-style format strings should be used correctly"MAJOR*java:Œ<p>Because <code>printf</code>-style format strings are interpreted at runtime, rather than validated by the compiler, they can contain errors that
result in the wrong strings being created. This rule statically validates the correlation of <code>printf</code>-style format strings to their
arguments when calling the <code>format(...)</code> methods of <code>java.util.Formatter</code>, <code>java.lang.String</code>,
<code>java.io.PrintStream</code>, <code>MessageFormat</code>, and <code>java.io.PrintWriter</code> classes and the <code>printf(...)</code> methods of
<code>java.io.PrintStream</code> or <code>java.io.PrintWriter</code> classes. </p>
<h2>Noncompliant Code Example</h2>
<pre>
String.format("First {0} and then {1}", "foo", "bar");  //Noncompliant. Looks like there is a confusion with the use of {{java.text.MessageFormat}}, parameters "foo" and "bar" will be simply ignored here
String.format("Display %3$d and then %d", 1, 2, 3);   //Noncompliant; the second argument '2' is unused
String.format("Too many arguments %d and %d", 1, 2, 3);  //Noncompliant; the third argument '3' is unused
String.format("First Line\n");   //Noncompliant; %n should be used in place of \n to produce the platform-specific line separator
String.format("Is myObject null ? %b", myObject);   //Noncompliant; when a non-boolean argument is formatted with %b, it prints true for any nonnull value, and false for null. Even if intended, this is misleading. It's better to directly inject the boolean value (myObject == null in this case)
String.format("value is " + value); // Noncompliant
String s = String.format("string without arguments"); // Noncompliant

MessageFormat.format("Result '{0}'.", value); // Noncompliant; String contains no format specifiers. (quote are discarding format specifiers)
MessageFormat.format("Result {0}.", value, value);  // Noncompliant; 2nd argument is not used
MessageFormat.format("Result {0}.", myObject.toString()); // Noncompliant; no need to call toString() on objects

java.util.Logger logger;
logger.log(java.util.logging.Level.SEVERE, "Result {0}.", myObject.toString()); // Noncompliant; no need to call toString() on objects
logger.log(java.util.logging.Level.SEVERE, "Result.", new Exception()); // compliant, parameter is an exception
logger.log(java.util.logging.Level.SEVERE, "Result '{0}'", 14); // Noncompliant {{String contains no format specifiers.}}

org.slf4j.Logger slf4jLog;
org.slf4j.Marker marker;

slf4jLog.debug(marker, "message {}");
slf4jLog.debug(marker, "message ", 1); // Noncompliant {{String contains no format specifiers.}}
</pre>
<h2>Compliant Solution</h2>
<pre>
String.format("First %s and then %s", "foo", "bar");
String.format("Display %2$d and then %d", 1, 3);
String.format("Too many arguments %d %d", 1, 2);
String.format("First Line%n");
String.format("Is myObject null ? %b", myObject == null);
String.format("value is %d", value);
String s = "string without arguments";

MessageFormat.format("Result {0}.", value);
MessageFormat.format("Result '{0}'  =  {0}", value);
MessageFormat.format("Result {0}.", myObject);

java.util.Logger logger;
logger.log(java.util.logging.Level.SEVERE, "Result {0}.", myObject);
logger.log(java.util.logging.Level.SEVERE, "Result {0}'", 14);


org.slf4j.Logger slf4jLog;
org.slf4j.Marker marker;

slf4jLog.debug(marker, "message {}");
slf4jLog.debug(marker, "message {}", 1);
</pre>
<h2>See</h2>
<ul>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/wQA1">CERT, FIO47-C.</a> - Use valid format strings </li>
</ul>Z
CODE_SMELL
Ω
squid:S2127≠
squidS21276"Double.longBitsToDouble" should not be used for "int""MAJOR*java:“<p><code>Double.longBitsToDouble</code> expects a 64-bit, <code>long</code> argument. Pass it a smaller value, such as an <code>int</code> and the
mathematical conversion into a <code>double</code> simply won't work as anticipated because the layout of the bits will be interpreted incorrectly, as
if a child were trying to use an adult's gloves.</p>
<h2>Noncompliant Code Example</h2>
<pre>
int i = 42;
double d = Double.longBitsToDouble(i);  // Noncompliant
</pre>ZBUG
Ÿ
squid:S4423…
squidS4423%Weak SSL protocols should not be used"MAJOR*java:ı<p><code>javax.net.ssl.SSLContext.getInstance</code> returns a SSLContext object that implements the specified secure socket protocol. However, not
all protocols are created equal and some legacy ones like "SSL", have been proven to be insecure.</p>
<p>This rule raises an issue when an <code>SSLContext</code> is created with an insecure protocol (ie: a protocol different from "TLS", "DTLS",
"TLSv1.2", "DTLSv1.2", "TLSv1.3", "DTLSv1.3").</p>
<p>The recommended value is "TLS" or "DTLS" as it will always use the latest version of the protocol. However an issue will be raised if the bytecode
was compiled with JDK7 or an even older version of JDK because they are not alias for TLSv1.2 and DTLSv1.2 but for weaker protocols.</p>
<p>Note that calling <code>SSLContext.getInstance(...)</code> with "TLSv1.2" or "DTLSv1.2" doesn't prevent protocol version negotiation. For example,
if a client connects with "TLSv1.1" and the server used <code>SSLContext.getInstance("TLSv1.2")</code>, the connection will use "TLSv1.1". It is
possible to enable only specific protocol versions by calling <code>setEnabledProtocols</code> on <code>SSLSocket</code>, <code>SSLServerSocket</code>
or <code>SSLEngine</code>. However this should be rarely needed as clients usually ask for the most secure protocol supported.</p>
<h2>Noncompliant Code Example</h2>
<pre>
context = SSLContext.getInstance("SSL"); // Noncompliant
</pre>
<h2>Compliant Solution</h2>
<pre>
context = SSLContext.getInstance("TLSv1.2");
</pre>
<h2>See</h2>
<ul>
  <li> <a href="http://cwe.mitre.org/data/definitions/326.html">MITRE, CWE-327</a> - Inadequate Encryption Strength </li>
  <li> <a href="http://cwe.mitre.org/data/definitions/327.html">MITRE, CWE-326</a> - Use of a Broken or Risky Cryptographic Algorithm </li>
  <li> OWASP Top 10 2017 Category A3 - Sensitive Data Exposure </li>
  <li> OWASP Top 10 2017 Category A6 - Security Misconfiguration </li>
  <li> <a href="https://www.sans.org/top25-software-errors/#cat3">SANS Top 25</a> - Porous Defenses </li>
  <li> <a href="https://blogs.oracle.com/java-platform-group/diagnosing-tls,-ssl,-and-https">Diagnosing TLS, SSL, and HTTPS</a> </li>
</ul>ZVULNERABILITY
∏
squid:S4425®
squidS4425E"Integer.toHexString" should not be used to build hexadecimal strings"MAJOR*java:∑<p>Using <code>Integer.toHexString</code> is a common mistake when converting sequences of bytes into hexadecimal string representations. The problem
is that the method trims leading zeroes, which can lead to wrong conversions. For instance a two bytes value of <code>0x4508</code> would be converted
into <code>45</code> and <code>8</code> which once concatenated would give <code>0x458</code>.</p>
<p>This is particularly damaging when converting hash-codes and could lead to a security vulnerability.</p>
<p>This rule raises an issue when <code>Integer.toHexString</code> is used in any kind of string concatenations.</p>
<h2>Noncompliant Code Example</h2>
<pre>
MessageDigest md = MessageDigest.getInstance("SHA-256");
byte[] bytes = md.digest(password.getBytes("UTF-8"));

StringBuilder sb = new StringBuilder();
for (byte b : bytes) {
    sb.append(Integer.toHexString( b &amp; 0xFF )); // Noncompliant
}
</pre>
<h2>Compliant Solution</h2>
<pre>
MessageDigest md = MessageDigest.getInstance("SHA-256");
byte[] bytes = md.digest(password.getBytes("UTF-8"));

StringBuilder sb = new StringBuilder();
for (byte b : bytes) {
    sb.append(String.format("%02X", b));
}
</pre>
<h2>See</h2>
<ul>
  <li> <a href="http://cwe.mitre.org/data/definitions/704.html">MITRE, CWE-704</a> - Incorrect Type Conversion or Cast </li>
  <li> Derived from FindSecBugs rule <a href="https://find-sec-bugs.github.io/bugs.htm#BAD_HEXA_CONVERSION">BAD_HEXA_CONVERSION</a> </li>
</ul>Z
CODE_SMELL
‚
 squid:LabelsShouldNotBeUsedCheckΩ
squidLabelsShouldNotBeUsedCheckLabels should not be used"MAJOR*java2S1119:‹<p>Labels are not commonly used in Java, and many developers do not understand how they work. Moreover, their usage makes the control flow harder to
follow, which reduces the code's readability.</p>
<h2>Noncompliant Code Example</h2>
<pre>
int matrix[][] = {
  {1, 2, 3},
  {4, 5, 6},
  {7, 8, 9}
};

outer: for (int row = 0; row &lt; matrix.length; row++) {   // Non-Compliant
  for (int col = 0; col &lt; matrix[row].length; col++) {
    if (col == row) {
      continue outer;
    }
    System.out.println(matrix[row][col]);                // Prints the elements under the diagonal, i.e. 4, 7 and 8
  }
}
</pre>
<h2>Compliant Solution</h2>
<pre>
for (int row = 1; row &lt; matrix.length; row++) {          // Compliant
  for (int col = 0; col &lt; row; col++) {
    System.out.println(matrix[row][col]);                // Also prints 4, 7 and 8
  }
}
</pre>Z
CODE_SMELL
Ç
squid:S2123Ú
squidS2123*Values should not be uselessly incremented"MAJOR*java:£<p>A value that is incremented or decremented and then not stored is at best wasted code and at worst a bug.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public int pickNumber() {
  int i = 0;
  int j = 0;

  i = i++; // Noncompliant; i is still zero

  return j++; // Noncompliant; 0 returned
}
</pre>
<h2>Compliant Solution</h2>
<pre>
public int pickNumber() {
  int i = 0;
  int j = 0;

  i++;
  return ++j;
}
</pre>ZBUG
≈
squid:S2129µ
squidS2129qConstructors should not be used to instantiate "String", "BigInteger", "BigDecimal" and primitive-wrapper classes"MAJOR*java:ò<p>Constructors for <code>String</code>, <code>BigInteger</code>, <code>BigDecimal</code> and the objects used to wrap primitives should never be
used. Doing so is less clear and uses more memory than simply using the desired value in the case of strings, and using <code>valueOf</code> for
everything else.</p>
<h2>Noncompliant Code Example</h2>
<pre>
String empty = new String(); // Noncompliant; yields essentially "", so just use that.
String nonempty = new String("Hello world"); // Noncompliant
Double myDouble = new Double(1.1); // Noncompliant; use valueOf
Integer integer = new Integer(1); // Noncompliant
Boolean bool = new Boolean(true); // Noncompliant
BigInteger bigInteger1 = new BigInteger("3"); // Noncompliant
BigInteger bigInteger2 = new BigInteger("9223372036854775807"); // Noncompliant
BigInteger bigInteger3 = new BigInteger("111222333444555666777888999"); // Compliant, greater than Long.MAX_VALUE
</pre>
<h2>Compliant Solution</h2>
<pre>
String empty = "";
String nonempty = "Hello world";
Double myDouble = Double.valueOf(1.1);
Integer integer = Integer.valueOf(1);
Boolean bool = Boolean.valueOf(true);
BigInteger bigInteger1 = BigInteger.valueOf(3);
BigInteger bigInteger2 = BigInteger.valueOf(9223372036854775807L);
BigInteger bigInteger3 = new BigInteger("111222333444555666777888999");
</pre>
<h2>Exceptions</h2>
<p><code>BigDecimal</code> constructor with <code>double</code> argument is ignored as using <code>valueOf</code> instead might change resulting
value. See <a href='/coding_rules#rule_key=squid%3AS2111'>S2111</a>.</p>Z
CODE_SMELL
ß
squid:S1150ó
squidS1150%Enumeration should not be implemented"MAJOR*java:∆<p>From the official Oracle Javadoc:</p>
<blockquote>
  <p>NOTE: The functionality of this Enumeration interface is duplicated by the Iterator interface. In addition, Iterator adds an optional remove
  operation, and has shorter method names. New implementations should consider using Iterator in preference to Enumeration.</p>
</blockquote>
<h2>Noncompliant Code Example</h2>
<pre>
public class MyClass implements Enumeration {  // Non-Compliant
  /* ... */
}
</pre>
<h2>Compliant Solution</h2>
<pre>
public class MyClass implements Iterator {     // Compliant
  /* ... */
}
</pre>Z
CODE_SMELL
„
squid:S1151”
squidS1151<"switch case" clauses should not have too many lines of code"MAJOR*java:Î<p>The <code>switch</code> statement should be used only to clearly define some new branches in the control flow. As soon as a <code>case</code>
clause contains too many statements this highly decreases the readability of the overall control flow statement. In such case, the content of the
<code>case</code> clause should be extracted into a dedicated method.</p>
<h2>Noncompliant Code Example</h2>
<p>With the default threshold of 5:</p>
<pre>
switch (myVariable) {
  case 0: // Noncompliant: 6 lines till next case
    methodCall1("");
    methodCall2("");
    methodCall3("");
    methodCall4("");
    break;
  case 1:
  ...
}
</pre>
<h2>Compliant Solution</h2>
<pre>
switch (myVariable) {
  case 0:
    doSomething()
    break;
  case 1:
  ...
}
...
private void doSomething(){
    methodCall1("");
    methodCall2("");
    methodCall3("");
    methodCall4("");
}
</pre>Z
CODE_SMELL
 
squid:S2259∫
squidS2259(Null pointers should not be dereferenced"MAJOR*java:Ì<p>A reference to <code>null</code> should never be dereferenced/accessed. Doing so will cause a <code>NullPointerException</code> to be thrown. At
best, such an exception will cause abrupt program termination. At worst, it could expose debugging information that would be useful to an attacker, or
it could allow an attacker to bypass security measures.</p>
<p>Note that when they are present, this rule takes advantage of <code>@CheckForNull</code> and <code>@Nonnull</code> annotations defined in <a
href="https://jcp.org/en/jsr/detail?id=305">JSR-305</a> to understand which values are and are not nullable except when <code>@Nonnull</code> is used
on the parameter to <code>equals</code>, which by contract should always work with null.</p>
<h2>Noncompliant Code Example</h2>
<pre>
@CheckForNull
String getName(){...}

public boolean isNameEmpty() {
  return getName().length() == 0; // Noncompliant; the result of getName() could be null, but isn't null-checked
}
</pre>
<pre>
Connection conn = null;
Statement stmt = null;
try{
  conn = DriverManager.getConnection(DB_URL,USER,PASS);
  stmt = conn.createStatement();
  // ...

}catch(Exception e){
  e.printStackTrace();
}finally{
  stmt.close();   // Noncompliant; stmt could be null if an exception was thrown in the try{} block
  conn.close();  // Noncompliant; conn could be null if an exception was thrown
}
</pre>
<pre>
private void merge(@Nonnull Color firstColor, @Nonnull Color secondColor){...}

public  void append(@CheckForNull Color color) {
    merge(currentColor, color);  // Noncompliant; color should be null-checked because merge(...) doesn't accept nullable parameters
}
</pre>
<pre>
void paint(Color color) {
  if(color == null) {
    System.out.println("Unable to apply color " + color.toString());  // Noncompliant; NullPointerException will be thrown
    return;
  }
  ...
}
</pre>
<h2>See</h2>
<ul>
  <li> <a href="http://cwe.mitre.org/data/definitions/476.html">MITRE, CWE-476</a> - NULL Pointer Dereference </li>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/PAw">CERT, EXP34-C.</a> - Do not dereference null pointers </li>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/ZwDOAQ">CERT, EXP01-J.</a> - Do not use a null in a case where an object is required
  </li>
</ul>ZBUG
º
squid:S1168¨
squidS1168?Empty arrays and collections should be returned instead of null"MAJOR*java:¡<p>Returning <code>null</code> instead of an actual array or collection forces callers of the method to explicitly test for nullity, making them more
complex and less readable.</p>
<p>Moreover, in many cases, <code>null</code> is used as a synonym for empty.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public static List&lt;Result&gt; getResults() {
  return null;                             // Noncompliant
}

public static Result[] getResults() {
  return null;                             // Noncompliant
}

public static void main(String[] args) {
  Result[] results = getResults();

  if (results != null) {                   // Nullity test required to prevent NPE
    for (Result result: results) {
      /* ... */
    }
  }
}

</pre>
<h2>Compliant Solution</h2>
<pre>
public static List&lt;Result&gt; getResults() {
  return Collections.emptyList();          // Compliant
}

public static Result[] getResults() {
  return new Result[0];
}

public static void main(String[] args) {
  for (Result result: getResults()) {
    /* ... */
  }
}
</pre>
<h2>See</h2>
<ul>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/AgG7AQ">CERT, MSC19-C.</a> - For functions that return an array, prefer returning an
  empty array over a null value </li>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/zwHEAw">CERT, MET55-J.</a> - Return an empty array or collection instead of a null
  value for methods that return an array or collection </li>
</ul>Z
CODE_SMELL
ÿ
squid:S3346»
squidS3346<Expressions used in "assert" should not produce side effects"MAJOR*java:Á<p>Since <code>assert</code> statements aren't executed by default (they must be enabled with JVM flags) developers should never rely on their
execution the evaluation of any logic required for correct program function.</p>
<h2>Noncompliant Code Example</h2>
<pre>
assert myList.remove(myList.get(0));  // Noncompliant
</pre>
<h2>Compliant Solution</h2>
<pre>
boolean removed = myList.remove(myList.get(0));
assert removed;
</pre>
<h2>See</h2>
<ul>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/vwG7AQ">CERT, EXP06-J.</a> - Expressions used in assertions must not produce side
  effects </li>
</ul>ZBUG
ﬁ
squid:S2133Œ
squidS21330Objects should not be created only to "getClass""MAJOR*java:Ú<p>Creating an object for the sole purpose of calling <code>getClass</code> on it is a waste of memory and cycles. Instead, simply use the class'
<code>.class</code> property.</p>
<h2>Noncompliant Code Example</h2>
<pre>
MyObject myOb = new MyObject();  // Noncompliant
Class c = myOb.getClass();
</pre>
<h2>Compliant Solution</h2>
<pre>
Class c = MyObject.class;
</pre>Z
CODE_SMELL
Ó
squid:S1166ﬁ
squidS1166:Exception handlers should preserve the original exceptions"MAJOR*java:¯<p>When handling a caught exception, the original exception's message and stack trace should be logged or passed forward.</p>
<h2>Noncompliant Code Example</h2>
<pre>
try {
  /* ... */
} catch (Exception e) {   // Noncompliant - exception is lost
  LOGGER.info("context");
}

try {
  /* ... */
} catch (Exception e) {  // Noncompliant - exception is lost (only message is preserved)
  LOGGER.info(e.getMessage());
}

try {
  /* ... */
} catch (Exception e) {  // Noncompliant - original exception is lost
  throw new RuntimeException("context");
}
</pre>
<h2>Compliant Solution</h2>
<pre>
try {
  /* ... */
} catch (Exception e) {
  LOGGER.info(e);  // exception is logged
}

try {
  /* ... */
} catch (Exception e) {
  throw new RuntimeException(e);   // exception stack trace is propagated
}

try {
  /* ... */
} catch (RuntimeException e) {
  doSomething();
  throw e;  // original exception passed forward
} catch (Exception e) {
  throw new RuntimeException(e);  // Conversion into unchecked exception is also allowed
}
</pre>
<h2>Exceptions</h2>
<p><code>InterruptedException</code>, <code>NumberFormatException</code>, <code>DateTimeParseException</code>, <code>ParseException</code> and
<code>MalformedURLException</code> exceptions are arguably used to indicate nonexceptional outcomes. Similarly, handling
<code>NoSuchMethodException</code> is often required when dealing with the Java reflection API.</p>
<p>Because they are part of Java, developers have no choice but to deal with them. This rule does not verify that those particular exceptions are
correctly handled.</p>
<pre>
int myInteger;
try {
  myInteger = Integer.parseInt(myString);
} catch (NumberFormatException e) {
  // It is perfectly acceptable to not handle "e" here
  myInteger = 0;
}
</pre>
<p>Furthermore, no issue will be raised if the exception message is logged with additional information, as it shows that the developer added some
context to the error message.</p>
<pre>
try {
  /* ... */
} catch (Exception e) {
  String message = "Exception raised while authenticating user: " + e.getMessage();
  LOGGER.warn(message); // Compliant - exception message logged with some contextual information
}
</pre>
<h2>See</h2>
<ul>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/6gEqAQ">CERT, ERR00-J.</a> - Do not suppress or ignore checked exceptions </li>
  <li> <a href="https://cwe.mitre.org/data/definitions/778.html">MITRE, CWE-778</a> - Insufficient Logging </li>
  <li> OWASP Top 10 2017 Category A10 - Insufficient Logging &amp; Monitoring </li>
</ul>Z
CODE_SMELL
†
squid:S2134ê
squidS2134CClasses extending java.lang.Thread should override the "run" method"MAJOR*java:®<p>According to the Java API documentation:</p>
<blockquote>
  <p>There are two ways to create a new thread of execution. One is to declare a class to be a subclass of Thread. This subclass should override the
  run method of class Thread. An instance of the subclass can then be allocated and started...</p>
  <p>The other way to create a thread is to declare a class that implements the Runnable interface. That class then implements the run method. An
  instance of the class can then be allocated, passed as an argument when creating Thread, and started.</p>
</blockquote>
<p>By definition, extending the Thread class without overriding the <code>run</code> method doesn't make sense, and implies that the contract of the
<code>Thread</code> class is not well understood.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public class MyRunner extends Thread { // Noncompliant; run method not overridden

  public void doSometing() {...}
}
</pre>
<h2>Exceptions</h2>
<p>If <code>run()</code> is not overridden in a class extending <code>Thread</code>, it means that starting the thread will actually call
<code>Thread.run()</code>. However, <code>Thread.run()</code> does nothing if it has not been fed with a target <code>Runnable</code>. The rule
consequently ignore classes extending <code>Thread</code> if they are calling, in their constructors, the <code>super(...)</code> constructor with a
proper <code>Runnable</code> target.</p>
<pre>
class MyThread extends Thread { // Compliant - calling super constructor with a Runnable
  MyThread(Runnable target) {
    super(target); // calling super constructor with a Runnable, which will be used for when Thread.run() is executed
    // ...
  }
}
</pre>ZBUG
˘
squid:S4551È
squidS4551(Enum values should be compared with "==""MAJOR*java:ï<p>Testing equality of an enum value with <code>equals</code> is perfectly valid because an enum is an Object and every Java developer knows "=="
should not be used to compare the content of an Object. At the same time, using "==" on enums:</p>
<p>- provides the same expected comparison (content) as <code>equals</code></p>
<p>- is more null-safe than equals()</p>
<p>- provides compile-time (static) checking rather than runtime checking</p>
<p>For these reasons, use of "==" should be preferred to <code>equals</code>.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public enum Fruit {
   APPLE, BANANA, GRAPE
}

public enum Cake {
  LEMON_TART, CHEESE_CAKE
}

public boolean isFruitGrape(Fruit candidateFruit) {
  return candidateFruit.equals(Fruit.GRAPE); // Noncompliant; this will raise an NPE if candidateFruit is NULL
}

public boolean isFruitGrape(Cake candidateFruit) {
  return candidateFruit.equals(Fruit.GRAPE); // Noncompliant; always returns false
}

</pre>
<h2>Compliant Solution</h2>
<pre>
public boolean isFruitGrape(Fruit candidateFruit) {
  return candidateFruit == Fruit.GRAPE; // Compliant; there is only one instance of Fruit.GRAPE - if candidateFruit is a GRAPE it will have the same reference as Fruit.GRAPE
}

public boolean isFruitGrape(Cake candidateFruit) {
  return candidateFruit == Fruit.GRAPE; // Compliant; compilation time failure
}
</pre>
<h2>See</h2>
<ul>
  <li> <a href="https://www.javaworld.com/article/2074292/core-java/use-----or-----to-compare-java-enums.html">Use == (or !=) to Compare Java
  Enums</a> </li>
</ul>Z
CODE_SMELL
ü
squid:S2131è
squidS2131;Primitives should not be boxed just for "String" conversion"MAJOR*java:®<p>"Boxing" is the process of putting a primitive value into a primitive-wrapper object. When that's done purely to use the wrapper class'
<code>toString</code> method, it's a waste of memory and cycles because those methods are <code>static</code>, and can therefore be used without a
class instance. Similarly, using the <code>static</code> method <code>valueOf</code> in the primitive-wrapper classes with a non-<code>String</code>
argument should be avoided.</p>
<h2>Noncompliant Code Example</h2>
<pre>
int myInt = 4;
String myIntString = (new Integer(myInt)).toString(); // Noncompliant; creates &amp; discards an Integer object
myIntString = Integer.valueOf(myInt).toString(); // Noncompliant
</pre>
<h2>Compliant Solution</h2>
<pre>
int myInt = 4;
String myIntString = Integer.toString(myInt);
</pre>Z
CODE_SMELL
±
squid:S2252°
squidS2252,Loop conditions should be true at least once"MAJOR*java:–<p>If a <code>for</code> loop's condition is false before the first loop iteration, the loop will never be executed. Such loops are almost always
bugs, particularly when the initial value and stop conditions are hard-coded.</p>
<h2>Noncompliant Code Example</h2>
<pre>
for (int i = 10; i &lt; 10; i++) {  // Noncompliant
  // ...
</pre>ZBUG
´
squid:S2253õ
squidS2253 Track uses of disallowed methods"MAJOR*java:Õ<p>This rule allows banning certain methods.</p>
<h2>Noncompliant Code Example</h2>
<p>Given parameters:</p>
<ul>
  <li> className:java.lang.String </li>
  <li> methodName: replace </li>
  <li> argumentTypes: java.lang.CharSequence, java.lang.CharSequence </li>
</ul>
<pre>
String name;
name.replace("A","a");  // Noncompliant
</pre>@Z
CODE_SMELL
Ï
squid:S2139‹
squidS2139;Exceptions should be either logged or rethrown but not both"MAJOR*java:ı<p>In applications where the accepted practice is to log an <code>Exception</code> and then rethrow it, you end up with miles-long logs that contain
multiple instances of the same exception. In multi-threaded applications debugging this type of log can be particularly hellish because messages from
other threads will be interwoven with the repetitions of the logged-and-thrown <code>Exception</code>. Instead, exceptions should be either logged or
rethrown, not both.</p>
<h2>Noncompliant Code Example</h2>
<pre>
catch (SQLException e) {
  ...
  LOGGER.log(Level.ERROR,  contextInfo, e);
  throw new MySQLException(contextInfo, e);
}
</pre>
<h2>Compliant Solution</h2>
<pre>
catch (SQLException e) {
  ...
  throw new MySQLException(contextInfo, e);
}
</pre>
<p>or </p>
<pre>
catch (SQLException e) {
  ...
  LOGGER.log(Level.ERROR,  contextInfo, e);
  // handle exception...
}
</pre>Z
CODE_SMELL
æ
squid:S1162Æ
squidS1162'Checked exceptions should not be thrown"MAJOR*java:€<p>The purpose of checked exceptions is to ensure that errors will be dealt with, either by propagating them or by handling them, but some believe
that checked exceptions negatively impact the readability of source code, by spreading this error handling/propagation logic everywhere.</p>
<p>This rule verifies that no method throws a new checked exception.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public void myMethod1() throws CheckedException {
  ...
  throw new CheckedException(message);   // Noncompliant
  ...
  throw new IllegalArgumentException(message); // Compliant; IllegalArgumentException is unchecked
}

public void myMethod2() throws CheckedException {  // Compliant; propagation allowed
  myMethod1();
}
</pre>Z
CODE_SMELL
˙
squid:S2251Í
squidS2251IA "for" loop update clause should move the counter in the right direction"MAJOR*java:¸<p>A <code>for</code> loop with a counter that moves in the wrong direction is not an infinite loop. Because of wraparound, the loop will eventually
reach its stop condition, but in doing so, it will run many, many more times than anticipated, potentially causing unexpected behavior. </p>
<h2>Noncompliant Code Example</h2>
<pre>
public void doSomething(String [] strings) {
  for (int i = 0; i &lt; strings.length; i--) { // Noncompliant;
    String string = strings[i];  // ArrayIndexOutOfBoundsException when i reaches -1
    //...
  }
</pre>
<h2>Compliant Solution</h2>
<pre>
public void doSomething(String [] strings) {
  for (int i = 0; i &lt; strings.length; i++) {
    String string = strings[i];
    //...
  }
</pre>
<h2>See</h2>
<ul>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/zYEzAg">CERT, MSC54-J.</a> - Avoid inadvertent wrapping of loop counters </li>
</ul>ZBUG
ò
squid:S1161à
squidS1161A"@Override" should be used on overriding and implementing methods"MAJOR*java:õ<p>Using the <code>@Override</code> annotation is useful for two reasons :</p>
<ul>
  <li> It elicits a warning from the compiler if the annotated method doesn't actually override anything, as in the case of a misspelling. </li>
  <li> It improves the readability of the source code by making it obvious that methods are overridden. </li>
</ul>
<h2>Noncompliant Code Example</h2>
<pre>
class ParentClass {
  public boolean doSomething(){...}
}
class FirstChildClass extends ParentClass {
  public boolean doSomething(){...}  // Noncompliant
}
</pre>
<h2>Compliant Solution</h2>
<pre>
class ParentClass {
  public boolean doSomething(){...}
}
class FirstChildClass extends ParentClass {
  @Override
  public boolean doSomething(){...}  // Compliant
}
</pre>
<h2>Exceptions</h2>
<p>This rule is relaxed when overriding a method from the <code>Object</code> class like <code>toString()</code>, <code>hashCode()</code>, ...</p>Z
CODE_SMELL
≠
squid:S1160ù
squidS11609Public methods should throw at most one checked exception"MAJOR*java:∏<p>Using checked exceptions forces method callers to deal with errors, either by propagating them or by handling them. Throwing exceptions makes them
fully part of the API of the method.</p>
<p>But to keep the complexity for callers reasonable, methods should not throw more than one kind of checked exception.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public void delete() throws IOException, SQLException {      // Noncompliant
  /* ... */
}
</pre>
<h2>Compliant Solution</h2>
<pre>
public void delete() throws SomeApplicationLevelException {
  /* ... */
}
</pre>
<h2>Exceptions</h2>
<p>Overriding methods are not checked by this rule and are allowed to throw several checked exceptions.</p>Z
CODE_SMELL
â
squid:S1774˘
squidS1774'The ternary operator should not be used"MAJOR*java:¶<p>While the ternary operator is pleasingly compact, its use can make code more difficult to read. It should therefore be avoided in favor of the more
verbose <code>if</code>/<code>else</code> structure.</p>
<h2>Noncompliant Code Example</h2>
<pre>
System.out.println(i&gt;10?"yes":"no");
</pre>
<h2>Compliant Solution</h2>
<pre>
if (i &gt; 10) {
  System.out.println(("yes");
} else {
  System.out.println("no");
}
</pre>Z
CODE_SMELL
ä
squid:S2864˙
squidS2864F"entrySet()" should be iterated when both the key and value are needed"MAJOR*java:à<p>When only the keys from a map are needed in a loop, iterating the <code>keySet</code> makes sense. But when both the key and the value are needed,
it's more efficient to iterate the <code>entrySet</code>, which will give access to both the key and value, instead.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public void doSomethingWithMap(Map&lt;String,Object&gt; map) {
  for (String key : map.keySet()) {  // Noncompliant; for each key the value is retrieved
    Object value = map.get(key);
    // ...
  }
}
</pre>
<h2>Compliant Solution</h2>
<pre>
public void doSomethingWithMap(Map&lt;String,Object&gt; map) {
  for (Map.Entry&lt;String,Object&gt; entry : map.entrySet()) {
    String key = entry.getKey();
    Object value = entry.getValue();
    // ...
  }
}
</pre>Z
CODE_SMELL
≈
$squid:AssignmentInSubExpressionCheckú
squidAssignmentInSubExpressionCheck:Assignments should not be made from within sub-expressions"MAJOR*java2S1121:ñ<p>Assignments within sub-expressions are hard to spot and therefore make the code less readable. Ideally, sub-expressions should not have
side-effects.</p>
<h2>Noncompliant Code Example</h2>
<pre>
if ((str = cont.substring(pos1, pos2)).isEmpty()) {  // Noncompliant
  //...
</pre>
<h2>Compliant Solution</h2>
<pre>
str = cont.substring(pos1, pos2);
if (str.isEmpty()) {
  //...
</pre>
<h2>Exceptions</h2>
<p>Assignments in <code>while</code> statement conditions, and assignments enclosed in relational expressions are ignored.</p>
<pre>
BufferedReader br = new BufferedReader(/* ... */);
String line;
while ((line = br.readLine()) != null) {...}
</pre>
<p>Chained assignments, including compound assignments, are ignored.</p>
<pre>
int i = j = 0;
int k = (j += 1);
result = (bresult = new byte[len]);
</pre>
<h2>See</h2>
<ul>
  <li> MISRA C:2004, 13.1 - Assignment operators shall not be used in expressions that yield a Boolean value </li>
  <li> MISRA C++:2008, 6-2-1 - Assignment operators shall not be used in sub-expressions </li>
  <li> MISRA C:2012, 13.4 - The result of an assignment operator should not be used </li>
  <li> <a href="http://cwe.mitre.org/data/definitions/481.html">MITRE, CWE-481</a> - Assigning instead of Comparing </li>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/nYFtAg">CERT, EXP45-C.</a> - Do not perform assignments in selection statements </li>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/1gCTAw">CERT, EXP51-J.</a> - Do not perform assignments in conditional expressions
  </li>
</ul>Z
CODE_SMELL
·
squid:S2629—
squidS2629C"Preconditions" and logging arguments should not require evaluation"MAJOR*java:‚<p>Passing message arguments that require further evaluation into a Guava <code>com.google.common.base.Preconditions</code> check can result in a
performance penalty. That's because whether or not they're needed, each argument must be resolved before the method is actually called.</p>
<p>Similarly, passing concatenated strings into a logging method can also incur a needless performance hit because the concatenation will be performed
every time the method is called, whether or not the log level is low enough to show the message.</p>
<p>Instead, you should structure your code to pass static or pre-computed values into <code>Preconditions</code> conditions check and logging
calls.</p>
<p>Specifically, the built-in string formatting should be used instead of string concatenation, and if the message is the result of a method call,
then <code>Preconditions</code> should be skipped altoghether, and the relevant exception should be conditionally thrown instead.</p>
<h2>Noncompliant Code Example</h2>
<pre>
logger.log(Level.DEBUG, "Something went wrong: " + message);  // Noncompliant; string concatenation performed even when log level too high to show DEBUG messages

logger.fine("An exception occurred with message: " + message); // Noncompliant

LOG.error("Unable to open file " + csvPath, e);  // Noncompliant

Preconditions.checkState(a &gt; 0, "Arg must be positive, but got " + a);  // Noncompliant. String concatenation performed even when a &gt; 0

Preconditions.checkState(condition, formatMessage());  // Noncompliant. formatMessage() invoked regardless of condition

Preconditions.checkState(condition, "message: %s", formatMessage());  // Noncompliant
</pre>
<h2>Compliant Solution</h2>
<pre>
logger.log(Level.SEVERE, "Something went wrong: {0} ", message);  // String formatting only applied if needed

logger.fine("An exception occurred with message: {}", message);  // SLF4J, Log4j

logger.log(Level.SEVERE, () -&gt; "Something went wrong: " + message); // since Java 8, we can use Supplier , which will be evaluated lazily

LOG.error("Unable to open file {0}", csvPath, e);

if (LOG.isDebugEnabled() {
  LOG.debug("Unable to open file " + csvPath, e);  // this is compliant, because it will not evaluate if log level is above debug.
}

Preconditions.checkState(arg &gt; 0, "Arg must be positive, but got %d", a);  // String formatting only applied if needed

if (!condition) {
  throw new IllegalStateException(formatMessage());  // formatMessage() only invoked conditionally
}

if (!condition) {
  throw new IllegalStateException("message: " + formatMessage());
}
</pre>
<h2>Exceptions</h2>
<p><code>catch</code> blocks are ignored, because the performance penalty is unimportant on exceptional paths (catch block should not be a part of
standard program flow). Getters are ignored as well as methods called on annotations which can be considered as getters. This rule accounts for
explicit test-level testing with SLF4J methods <code>isXXXEnabled</code> and ignores the bodies of such <code>if</code> statements.</p>Z
CODE_SMELL
	
squid:S3958‡	
squidS39585Intermediate Stream methods should not be left unused"MAJOR*java:Ü	<p>There are two types of stream operations: intermediate operations, which return another stream, and terminal operations, which return something
other than a stream. Intermediate operations are lazy, meaning they aren't actually executed until and unless a terminal stream operation is performed
on their results. Consequently if the result of an intermediate stream operation is not fed to a terminal operation, it serves no purpose, which is
almost certainly an error.</p>
<h2>Noncompliant Code Example</h2>
<pre>
widgets.stream().filter(b -&gt; b.getColor() == RED); // Noncompliant
</pre>
<h2>Compliant Solution</h2>
<pre>
int sum = widgets.stream()
                      .filter(b -&gt; b.getColor() == RED)
                      .mapToInt(b -&gt; b.getWeight())
                      .sum();
Stream&lt;Widget&gt; pipeline = widgets.stream()
                                 .filter(b -&gt; b.getColor() == GREEN)
                                 .mapToInt(b -&gt; b.getWeight());
sum = pipeline.sum();
</pre>
<h2>See</h2>
<p><a href="https://docs.oracle.com/javase/8/docs/api/java/util/stream/package-summary.html#StreamOps">Stream Operations</a></p>ZBUG
¡
squid:ObjectFinalizeCheck£
squidObjectFinalizeCheck1The Object.finalize() method should not be called"MAJOR*java2S1111:∏<p>According to the official javadoc documentation, this Object.finalize() is called by the garbage collector on an object when garbage collection
determines that there are no more references to the object. Calling this method explicitly breaks this contract and so is misleading. </p>
<h2>Noncompliant Code Example</h2>
<pre>
public void dispose() throws Throwable {
  this.finalize();                       // Noncompliant
}
</pre>
<h2>See</h2>
<ul>
  <li> <a href="http://cwe.mitre.org/data/definitions/586.html">MITRE, CWE-586</a> - Explicit Call to Finalize() </li>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/H4cbAQ">CERT, MET12-J.</a> - Do not use finalizers </li>
</ul>ZBUG
Ù
squid:S3959‰
squidS3959.Consumed Stream pipelines should not be reused"MAJOR*java:ë<p>Stream operations are divided into intermediate and terminal operations, and are combined to form stream pipelines. After the terminal operation is
performed, the stream pipeline is considered consumed, and cannot be used again. Such a reuse will yield unexpected results.</p>
<h2>Noncompliant Code Example</h2>
<pre>
Stream&lt;Widget&gt; pipeline = widgets.stream().filter(b -&gt; b.getColor() == RED);
int sum1 = pipeline.sum();
int sum2 = pipeline.mapToInt(b -&gt; b.getWeight()).sum(); // Noncompliant
</pre>
<h2>See</h2>
<p><a href="https://docs.oracle.com/javase/8/docs/api/java/util/stream/package-summary.html#StreamOps">Stream Operations</a></p>ZBUG
À
squid:ParsingError¥
squidParsingErrorJava parser failure"MAJOR*java2S2260:Á<p>When the Java parser fails, it is possible to record the failure as a violation on the file. This way, not only it is possible to track the number
of files that do not parse but also to easily find out why they do not parse.</p>Z
CODE_SMELL
ª
squid:S1656´
squidS1656%Variables should not be self-assigned"MAJOR*java:·<p>There is no reason to re-assign a variable to itself. Either this statement is redundant and should be removed, or the re-assignment is a mistake
and some other value or variable was intended for the assignment instead.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public void setName(String name) {
  name = name;
}
</pre>
<h2>Compliant Solution</h2>
<pre>
public void setName(String name) {
  this.name = name;
}
</pre>
<h2>See</h2>
<ul>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/NYA5">CERT, MSC12-C.</a> - Detect and remove code that has no effect or is never
  executed </li>
</ul>ZBUG
ˆ
squid:S4925Ê
squidS49253"Class.forName()" should not load JDBC 4.0+ drivers"MAJOR*java:á<p>In the past, it was required to load a JDBC driver before creating a <code>java.sql.Connection</code>. Nowadays, when using JDBC 4.0 drivers, this
is no longer required and <code>Class.forName()</code> can be safely removed because JDBC 4.0 (JDK 6) drivers available in the classpath are
automatically loaded.</p>
<p>This rule raises an issue when <code>Class.forName()</code> is used with one of the following values:</p>
<ul>
  <li> <code>com.mysql.jdbc.Driver</code> </li>
  <li> <code>oracle.jdbc.driver.OracleDriver</code> </li>
  <li> <code>com.ibm.db2.jdbc.app.DB2Driver</code> </li>
  <li> <code>com.ibm.db2.jdbc.net.DB2Driver</code> </li>
  <li> <code>com.sybase.jdbc.SybDriver</code> </li>
  <li> <code>com.sybase.jdbc2.jdbc.SybDriver</code> </li>
  <li> <code>com.teradata.jdbc.TeraDriver</code> </li>
  <li> <code>com.microsoft.sqlserver.jdbc.SQLServerDriver</code> </li>
  <li> <code>org.postgresql.Driver</code> </li>
  <li> <code>sun.jdbc.odbc.JdbcOdbcDriver</code> </li>
  <li> <code>org.hsqldb.jdbc.JDBCDriver</code> </li>
  <li> <code>org.h2.Driver</code> </li>
  <li> <code>org.firebirdsql.jdbc.FBDriver</code> </li>
  <li> <code>net.sourceforge.jtds.jdbc.Driver</code> </li>
</ul>
<h2>Noncompliant Code Example</h2>
<pre>
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Demo {
  private static final String DRIVER_CLASS_NAME = "org.postgresql.Driver";
  private final Connection connection;

  public Demo(String serverURI) throws SQLException, ClassNotFoundException {
    Class.forName(DRIVER_CLASS_NAME); // Noncompliant; no longer required to load the JDBC Driver using Class.forName()
    connection = DriverManager.getConnection(serverURI);
  }
}
</pre>
<h2>Compliant Solution</h2>
<pre>
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Demo {
    private final Connection connection;

    public Demo(String serverURI) throws SQLException {
        connection = DriverManager.getConnection(serverURI);
    }
}
</pre>Z
CODE_SMELL
Ú	
squid:S2639‚	
squidS26394Inappropriate regular expressions should not be used"MAJOR*java:â	<p>Regular expressions are powerful but tricky, and even those long used to using them can make mistakes.</p>
<p>The following should not be used as regular expressions:</p>
<ul>
  <li> <code>.</code> - matches any single character. Used in <code>replaceAll</code>, it matches <em>everything</em> </li>
  <li> <code>|</code> - normally used as an option delimiter. Used stand-alone, it matches the space between characters </li>
  <li> <code>File.separator</code> - matches the platform-specific file path delimiter. On Windows, this will be taken as an escape character </li>
</ul>
<h2>Noncompliant Code Example</h2>
<pre>
String str = "/File|Name.txt";

String clean = str.replaceAll(".",""); // Noncompliant; probably meant to remove only dot chars, but returns an empty string
String clean2 = str.replaceAll("|","_"); // Noncompliant; yields _/_F_i_l_e_|_N_a_m_e_._t_x_t_
String clean3 = str.replaceAll(File.separator,""); // Noncompliant; exception on Windows

String clean4 = str.replaceFirst(".",""); // Noncompliant;
String clean5 = str.replaceFirst("|","_"); // Noncompliant;
String clean6 = str.replaceFirst(File.separator,""); // Noncompliant;
</pre>ZBUG
ä
squid:S2757˙
squidS2757'"=+" should not be used instead of "+=""MAJOR*java:Æ<p>The use of operators pairs ( <code>=+</code>, <code>=-</code> or <code>=!</code> ) where the reversed, single operator was meant (<code>+=</code>,
<code>-=</code> or <code>!=</code>) will compile and run, but not produce the expected results.</p>
<p>This rule raises an issue when <code>=+</code>, <code>=-</code>, or <code>=!</code> is used without any spacing between the two operators and when
there is at least one whitespace character after.</p>
<h2>Noncompliant Code Example</h2>
<pre>
int target = -5;
int num = 3;

target =- num;  // Noncompliant; target = -3. Is that really what's meant?
target =+ num; // Noncompliant; target = 3
</pre>
<h2>Compliant Solution</h2>
<pre>
int target = -5;
int num = 3;

target = -num;  // Compliant; intent to assign inverse value of num is clear
target += num;
</pre>ZBUG
ò
squid:S3725à
squidS3725*Java 8's "Files.exists" should not be used"MAJOR*java:≤<p>The <code>Files.exists</code> method has noticeably poor performance in JDK 8, and can slow an application significantly when used to check files
that don't actually exist. </p>
<p>The same goes for <code>Files.notExists</code>, <code>Files.isDirectory</code> and <code>Files.isRegularFile</code>.</p>
<p><strong>Note</strong> that this rule is automatically disabled when the project's <code>sonar.java.source</code> is not 8.</p>
<h2>Noncompliant Code Example</h2>
<pre>
Path myPath;
if(java.nio.Files.exists(myPath)) {  // Noncompliant
 // do something
}
</pre>
<h2>Compliant Solution</h2>
<pre>
Path myPath;
if(myPath.toFile().exists())) {
 // do something
}
</pre>
<h2>See</h2>
<ul>
  <li> <a href="https://bugs.openjdk.java.net/browse/JDK-8153414">https://bugs.openjdk.java.net/browse/JDK-8153414</a> </li>
  <li> <a href="https://bugs.openjdk.java.net/browse/JDK-8154077">https://bugs.openjdk.java.net/browse/JDK-8154077</a> </li>
</ul>Z
CODE_SMELL
∏	
squid:S1751®	
squidS17515Loops with at most one iteration should be refactored"MAJOR*java:Œ<p>A loop with at most one iteration is equivalent to the use of an <code>if</code> statement to conditionally execute one piece of code. No developer
expects to find such a use of a loop statement. If the initial intention of the author was really to conditionally execute one piece of code, an
<code>if</code> statement should be used instead.</p>
<p>At worst that was not the initial intention of the author and so the body of the loop should be fixed to use the nested <code>return</code>,
<code>break</code> or <code>throw</code> statements in a more appropriate way.</p>
<h2>Noncompliant Code Example</h2>
<pre>
for (int i = 0; i &lt; 10; i++) { // noncompliant, loop only executes once
  printf("i is %d", i);
  break;
}
...
for (int i = 0; i &lt; 10; i++) { // noncompliant, loop only executes once
  if(i == x) {
    break;
  } else {
    printf("i is %d", i);
    return;
  }
}
</pre>
<h2>Compliant Solution</h2>
<pre>
for (int i = 0; i &lt; 10; i++) {
  printf("i is %d", i);
}
...
for (int i = 0; i &lt; 10; i++) {
  if(i == x) {
    break;
  } else {
    printf("i is %d", i);
  }
}
</pre>ZBUG
Ì
squid:S1872›
squidS1872&Classes should not be compared by name"MAJOR*java:í<p>There is no requirement that class names be unique, only that they be unique within a package. Therefore trying to determine an object's type based
on its class name is an exercise fraught with danger. One of those dangers is that a malicious user will send objects of the same name as the trusted
class and thereby gain trusted access.</p>
<p>Instead, the <code>instanceof</code> operator or the <code>Class.isAssignableFrom()</code> method should be used to check the object's underlying
type.</p>
<h2>Noncompliant Code Example</h2>
<pre>
package computer;
class Pear extends Laptop { ... }

package food;
class Pear extends Fruit { ... }

class Store {

  public boolean hasSellByDate(Object item) {
    if ("Pear".equals(item.getClass().getSimpleName())) {  // Noncompliant
      return true;  // Results in throwing away week-old computers
    }
    return false;
  }

  public boolean isList(Class&lt;T&gt; valueClass) {
    if (List.class.getName().equals(valueClass.getName())) {  // Noncompliant
      return true;
    }
    return false;
  }
}
</pre>
<h2>Compliant Solution</h2>
<pre>
class Store {

  public boolean hasSellByDate(Object item) {
    if (item instanceof food.Pear) {
      return true;
    }
    return false;
  }

  public boolean isList(Class&lt;T&gt; valueClass) {
    if (valueClass.isAssignableFrom(List.class)) {
      return true;
    }
    return false;
  }
}
</pre>
<h2>See</h2>
<ul>
  <li> <a href="http://cwe.mitre.org/data/definitions/486.html">MITRE, CWE-486</a> - Comparison of Classes by Name </li>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/LAFlAQ">CERT, OBJ09-J.</a> - Compare classes and not class names </li>
</ul>ZBUG
∏
squid:S1871®
squidS1871WTwo branches in a conditional structure should not have exactly the same implementation"MAJOR*java:•<p>Having two <code>cases</code> in a <code>switch</code> statement or two branches in an <code>if</code> chain with the same implementation is at
best duplicate code, and at worst a coding error. If the same logic is truly needed for both instances, then in an <code>if</code> chain they should
be combined, or for a <code>switch</code>, one should fall through to the other. </p>
<h2>Noncompliant Code Example</h2>
<pre>
switch (i) {
  case 1:
    doFirstThing();
    doSomething();
    break;
  case 2:
    doSomethingDifferent();
    break;
  case 3:  // Noncompliant; duplicates case 1's implementation
    doFirstThing();
    doSomething();
    break;
  default:
    doTheRest();
}

if (a &gt;= 0 &amp;&amp; a &lt; 10) {
  doFirstThing();
  doTheThing();
}
else if (a &gt;= 10 &amp;&amp; a &lt; 20) {
  doTheOtherThing();
}
else if (a &gt;= 20 &amp;&amp; a &lt; 50) {
  doFirstThing();
  doTheThing();  // Noncompliant; duplicates first condition
}
else {
  doTheRest();
}
</pre>
<h2>Exceptions</h2>
<p>Blocks in an <code>if</code> chain that contain a single line of code are ignored, as are blocks in a <code>switch</code> statement that contain a
single line of code with or without a following <code>break</code>.</p>
<pre>
if(a == 1) {
  doSomething();  //no issue, usually this is done on purpose to increase the readability
} else if (a == 2) {
  doSomethingElse();
} else {
  doSomething();
}
</pre>
<p>But this exception does not apply to <code>if</code> chains without <code>else</code>-s, or to <code>switch</code>-es without default clauses when
all branches have the same single line of code. In case of <code>if</code> chains with <code>else</code>-s, or of <code>switch</code>-es with default
clauses, rule <a href='/coding_rules#rule_key=squid%3AS3923'>S3923</a> raises a bug. </p>
<pre>
if(a == 1) {
  doSomething();  //Noncompliant, this might have been done on purpose but probably not
} else if (a == 2) {
  doSomething();
}
</pre>Z
CODE_SMELL
›
squid:CommentedOutCodeLineæ
squidCommentedOutCodeLine,Sections of code should not be commented out"MAJOR*java2S125:—<p>Programmers should not comment out code as it bloats programs and reduces readability.</p>
<p>Unused code should be deleted and can be retrieved from source control history if required.</p>
<h2>See</h2>
<ul>
  <li> MISRA C:2004, 2.4 - Sections of code should not be "commented out". </li>
  <li> MISRA C++:2008, 2-7-2 - Sections of code shall not be "commented out" using C-style comments. </li>
  <li> MISRA C++:2008, 2-7-3 - Sections of code should not be "commented out" using C++ comments. </li>
  <li> MISRA C:2012, Dir. 4.4 - Sections of code should not be "commented out" </li>
</ul>Z
CODE_SMELL
π
squid:S1996©
squidS1996?Files should contain only one top-level class or interface each"MAJOR*java:æ<p>A file that grows too much tends to aggregate too many responsibilities and inevitably becomes harder to understand and therefore to maintain. This
is doubly true for a file with multiple top-level classes and interfaces. It is strongly advised to divide the file into one top-level class or
interface per file.</p>Z
CODE_SMELL
‚
squid:S1764“
squidS1764KIdentical expressions should not be used on both sides of a binary operator"MAJOR*java:‚<p>Using the same value on either side of a binary operator is almost always a mistake. In the case of logical operators, it is either a copy/paste
error and therefore a bug, or it is simply wasted code, and should be simplified. In the case of bitwise operators and most binary mathematical
operators, having the same value on both sides of an operator yields predictable results, and should be simplified.</p>
<h2>Noncompliant Code Example</h2>
<pre>
if ( a == a ) { // always true
  doZ();
}
if ( a != a ) { // always false
  doY();
}
if ( a == b &amp;&amp; a == b ) { // if the first one is true, the second one is too
  doX();
}
if ( a == b || a == b ) { // if the first one is true, the second one is too
  doW();
}

int j = 5 / 5; //always 1
int k = 5 - 5; //always 0

c.equals(c); //always true
</pre>
<h2>Exceptions</h2>
<ul>
  <li> This rule ignores <code>*</code>, <code>+</code>, and <code>=</code>. </li>
  <li> The specific case of testing a floating point value against itself is a valid test for <code>NaN</code> and is therefore ignored. </li>
  <li> Similarly, left-shifting 1 onto 1 is common in the construction of bit masks, and is ignored. </li>
</ul>
<pre>
float f;
if(f != f) { //test for NaN value
  System.out.println("f is NaN");
}

int i = 1 &lt;&lt; 1; // Compliant
int j = a &lt;&lt; a; // Noncompliant
</pre>
<h2>See</h2>
<ul>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/NYA5">CERT, MSC12-C.</a> - Detect and remove code that has no effect or is never
  executed </li>
  <li> <a href='/coding_rules#rule_key=squid%3AS1656'>S1656</a> - Implements a check on <code>=</code>. </li>
</ul>ZBUG
¡
squid:S2973±
squidS2973-Escaped Unicode characters should not be used"MAJOR*java:ÿ<p>The use of Unicode escape sequences should be reserved for characters that would otherwise be ambiguous, such as unprintable characters.</p>
<p>This rule ignores sequences composed entirely of Unicode characters, but otherwise raises an issue for each Unicode character that represents a
printable character.</p>
<h2>Noncompliant Code Example</h2>
<pre>
String prefix = "n\u00E9e"; // Noncompliant
</pre>
<h2>Compliant Solution</h2>
<pre>
String prefix = "n√©e";
</pre>Z
CODE_SMELL
∏
squid:S2972®
squidS29724Inner classes should not have too many lines of code"MAJOR*java:»<p>Inner classes should be short and sweet, to manage complexity in the overall file. An inner class that has grown longer than a certain threshold
should probably be externalized to its own file.</p>Z
CODE_SMELL
—
squid:S3824¡
squidS3824C"Map.get" and value test should be replaced with single method call"MAJOR*java:“<p>It's a common pattern to test the result of a <code>java.util.Map.get()</code> against <code>null</code> before proceeding with adding or changing
the value in the map. However the <code>java.util.Map</code> API offers a significantly better alternative in the form of the
<code>computeIfPresent()</code> and <code>computeIfAbsent()</code> methods. Using these instead leads to cleaner and more readable code.</p>
<p><strong>Note</strong> that this rule is automatically disabled when the project's <code>sonar.java.source</code> is not 8.</p>
<h2>Noncompliant Code Example</h2>
<pre>
V value = map.get(key);
if (value == null) {  // Noncompliant
  value = V.createFor(key);
  if (value != null) {
    map.put(key, value);
  }
}
return value;
</pre>
<h2>Compliant Solution</h2>
<pre>
return map.computeIfAbsent(key, k -&gt; V.createFor(k));
</pre>Z
CODE_SMELL
ª
squid:S1697´
squidS1697WShort-circuit logic should be used to prevent null pointer dereferences in conditionals"MAJOR*java:Ø<p>When either the equality operator in a null test or the logical operator that follows it is reversed, the code has the appearance of safely
null-testing the object before dereferencing it. Unfortunately the effect is just the opposite - the object is null-tested and then dereferenced
<em>only</em> if it is null, leading to a guaranteed null pointer dereference.</p>
<h2>Noncompliant Code Example</h2>
<pre>
if (str == null &amp;&amp; str.length() == 0) {
  System.out.println("String is empty");
}

if (str != null || str.length() &gt; 0) {
  System.out.println("String is not empty");
}
</pre>
<h2>Compliant Solution</h2>
<pre>
if (str == null || str.length() == 0) {
  System.out.println("String is empty");
}

if (str != null &amp;&amp; str.length() &gt; 0) {
  System.out.println("String is not empty");
}
</pre>
<h2>Deprecated</h2>
<p>This rule is deprecated; use <a href='/coding_rules#rule_key=squid%3AS2259'>S2259</a> instead.</p>ZBUG
∞	
squid:S1696†	
squidS1696+"NullPointerException" should not be caught"MAJOR*java:…<p><code>NullPointerException</code> should be avoided, not caught. Any situation in which <code>NullPointerException</code> is explicitly caught can
easily be converted to a <code>null</code> test, and any behavior being carried out in the catch block can easily be moved to the "is null" branch of
the conditional.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public int lengthPlus(String str) {
  int len = 2;
  try {
    len += str.length();
  }
  catch (NullPointerException e) {
    log.info("argument was null");
  }
  return len;
}
</pre>
<h2>Compliant Solution</h2>
<pre>
public int lengthPlus(String str) {
  int len = 2;

  if (str != null) {
    len += str.length();
  }
  else {
    log.info("argument was null");
  }
  return len;
}
</pre>
<h2>See</h2>
<ul>
  <li> <a href="http://cwe.mitre.org/data/definitions/395.html">MITRE, CWE-395</a> - Use of NullPointerException Catch to Detect NULL Pointer
  Dereference </li>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/BIB3AQ">CERT, ERR08-J.</a> - Do not catch NullPointerException or any of its ancestors
  </li>
</ul>Z
CODE_SMELL
’
squid:S3631≈
squidS36313"Arrays.stream" should be used for primitive arrays"MAJOR*java:Ê<p>For arrays of objects, <code>Arrays.asList(T ... a).stream()</code> and <code>Arrays.stream(array)</code> are basically equivalent in terms of
performance. However, for arrays of primitives, using <code>Arrays.asList</code> will force the construction of a list of boxed types, and then use
<em>that</em> list as a stream. On the other hand, <code>Arrays.stream</code> uses the appropriate primitive stream type (<code>IntStream</code>,
<code>LongStream</code>, <code>DoubleStream</code>) when applicable, with much better performance.</p>
<h2>Noncompliant Code Example</h2>
<pre>
Arrays.asList("a1", "a2", "b1", "c2", "c1").stream()
    .filter(...)
    .forEach(...);

Arrays.asList(1, 2, 3, 4).stream() // Noncompliant
    .filter(...)
    .forEach(...);
</pre>
<h2>Compliant Solution</h2>
<pre>
Arrays.asList("a1", "a2", "b1", "c2", "c1").stream()
    .filter(...)
    .forEach(...);

int[] intArray = new int[]{1, 2, 3, 4};
Arrays.stream(intArray)
    .filter(...)
    .forEach(...);
</pre>Z
CODE_SMELL
å
squid:S1695¸
squidS16956"NullPointerException" should not be explicitly thrown"MAJOR*java:ö<p>A <code>NullPointerException</code> should indicate that a <code>null</code> value was unexpectedly encountered. Good programming practice dictates
that code is structured to avoid NPE's. </p>
<p>Explicitly throwing <code>NullPointerException</code> forces a method's callers to explicitly catch it, rather than coding to avoid it. Further, it
makes it difficult to distinguish between the unexpectedly-encountered <code>null</code> value and the condition which causes the method to purposely
throw an NPE.</p>
<p>If an NPE is being thrown to indicate that a parameter to the method should not have been null, use the <code>@NotNull</code> annotation
instead.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public void doSomething (String aString) throws NullPointerException {
     throw new NullPointerException();
}
</pre>
<h2>Compliant Solution</h2>
<pre>
public void doSomething (@NotNull String aString) {
}
</pre>Z
CODE_SMELL
‘	
squid:S2301ƒ	
squidS23014Public methods should not contain selector arguments"MAJOR*java:‰<p>A selector argument is a <code>boolean</code> argument that's used to determine which of two paths to take through a method. Specifying such a
parameter may seem innocuous, particularly if it's well named. </p>
<p>Unfortunately, the maintainers of the code calling the method won't see the parameter name, only its value. They'll be forced either to guess at
the meaning or to take extra time to look the method up.</p>
<p>Instead, separate methods should be written.</p>
<p>This rule finds methods with a <code>boolean</code> that's used to determine which path to take through the method.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public String tempt(String name, boolean ofAge) {
  if (ofAge) {
    offerLiquor(name);
  } else {
    offerCandy(name);
  }
}

// ...
public void corrupt() {
  tempt("Joe", false); // does this mean not to temp Joe?
}
</pre>
<h2>Compliant Solution</h2>
<pre>
public void temptAdult(String name) {
  offerLiquor(name);
}

public void temptChild(String name) {
    offerCandy(name);
}

// ...
public void corrupt() {
  age &lt; legalAge ? temptChild("Joe") : temptAdult("Joe");
}
</pre>Z
CODE_SMELL
˝
squid:S3750Ì
squidS37504Spring "@Controller" classes should not use "@Scope""MAJOR*java:î<p>Spring <code>@Controller</code>s, <code>@Service</code>s, and <code>@Repository</code>s have <code>singleton</code> scope by default, meaning only
one instance of the class is ever instantiated in the application. Defining any other scope for one of these class types will result in needless churn
as new instances are created and destroyed. In a busy web application, this could cause a significant amount of needless additional load on the
server.</p>
<p>This rule raises an issue when the <code>@Scope</code> annotation is applied to a <code>@Controller</code>, <code>@Service</code>, or
<code>@Repository</code> with any value but "singleton". <code>@Scope("singleton")</code> is redundant, but ignored.</p>
<h2>Noncompliant Code Example</h2>
<pre>
@Scope("prototype")  // Noncompliant
@Controller
public class HelloWorld {
</pre>
<h2>Compliant Solution</h2>
<pre>
@Controller
public class HelloWorld {
</pre>ZBUG
¡
squid:S4604±
squidS4604/"@EnableAutoConfiguration" should be fine-tuned"MAJOR*java:÷<p>"@EnableAutoConfiguration" is a convenient feature to configure the Spring Application Context by attempting to guess the beans that you are likely
to need. The drawback is that it may load and configure beans the application will never use and therefore consume more CPU and RAM than really
required. <code>@EnableAutoConfiguration</code> should be configured to exclude all the beans not required by the application. Alternatively, use the
<code>@Import</code> annotation instead of <code>@EnableAutoConfiguration</code>, to explicitly import the useful AutoConfiguration classes.</p>
<p>This rule applies for <code>@SpringBootApplication</code> as well.</p>
<h2>Noncompliant Code Example</h2>
<pre>
@SpringBootApplication
public class MyApplication {
...
}
</pre>
<pre>
@Configuration
@EnableAutoConfiguration
public class MyApplication {
...
}
</pre>
<h2>Compliant Solution</h2>
<pre>
@SpringBootApplication(exclude = {
  MultipartAutoConfiguration.class,
  JmxAutoConfiguration.class,
})
public class MyApplication {
...
}
</pre>
<pre>
@Configuration
@EnableAutoConfiguration(exclude = {
  MultipartAutoConfiguration.class,
  JmxAutoConfiguration.class,
})
public class MyApplication {
...
}
</pre>
<pre>
@Configuration
@Import({
        DispatcherServletAutoConfiguration.class,
        EmbeddedServletContainerAutoConfiguration.class,
        ErrorMvcAutoConfiguration.class,
        HttpEncodingAutoConfiguration.class,
        HttpMessageConvertersAutoConfiguration.class,
        JacksonAutoConfiguration.class,
        ServerPropertiesAutoConfiguration.class,
        PropertyPlaceholderAutoConfiguration.class,
        ThymeleafAutoConfiguration.class,
        WebMvcAutoConfiguration.class
})
public class MyApplication {
...
}
</pre>Z
CODE_SMELL
ö
squid:S1217ä
squidS1217,"Thread.run()" should not be called directly"MAJOR*java:π<p>The purpose of the <code>Thread.run()</code> method is to execute code in a separate, dedicated thread. Calling this method directly doesn't make
sense because it causes its code to be executed in the current thread. </p>
<p>To get the expected behavior, call the <code>Thread.start()</code> method instead.</p>
<h2>Noncompliant Code Example</h2>
<pre>
Thread myThread = new Thread(runnable);
myThread.run(); // Noncompliant
</pre>
<h2>Compliant Solution</h2>
<pre>
Thread myThread = new Thread(runnable);
myThread.start(); // Compliant
</pre>
<h2>See</h2>
<ul>
  <li> <a href="http://cwe.mitre.org/data/definitions/572.html">MITRE, CWE-572</a> - Call to Thread run() instead of start() </li>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/KQAiAg">CERT THI00-J.</a> - Do not invoke Thread.run() </li>
</ul>ZBUG
Û
squid:S4603„
squidS46033"@Import"s should be preferred to "@ComponentScan"s"MAJOR*java:Ñ<p><code>@ComponentScan</code> is used to find which Spring <code>@Component</code> beans (<code>@Service</code> or <code>@Repository</code> or
<code>Controller</code>) are available in the classpath so they can be used in the application context. This is a convenient feature especially when
you begin a new project but it comes with the drawback of slowing down the application start-up time especially when the application becomes bigger
(ie: it references a large JAR file, or it references a significant number of JAR files, or the base-package refers to a large amount of .class
files).</p>
<p><code>@ComponentScan</code> should be replaced by an explicit list of Spring beans loaded by <code>@Import</code>.</p>
<p>The interface <code>@SpringBootApplication</code> is also considered by this rule because it is annotated with <code>@ComponentScan</code>.</p>
<h2>Noncompliant Code Example</h2>
<pre>
@ComponentScan
public class MyApplication {
...
}

@SpringBootApplication
public class MyApplication {
...
}
</pre>
<h2>Compliant Solution</h2>
<pre>
@Configuration
@Import({
        DispatcherServletAutoConfiguration.class,
        ErrorMvcAutoConfiguration.class,
        HttpEncodingAutoConfiguration.class,
        HttpMessageConvertersAutoConfiguration.class,
        MultipartAutoConfiguration.class,
        ServerPropertiesAutoConfiguration.class,
        PropertyPlaceholderAutoConfiguration.class,
        WebMvcAutoConfiguration.class
})
public class MyApplication {
...
}
</pre>
<h2>See</h2>
<ul>
  <li> <a href="https://cloud.google.com/appengine/articles/spring_optimization">Optimizing Spring Framework for App Engine Applications</a> </li>
</ul>Z
CODE_SMELL
”
squid:S2789√
squidS2789)"null" should not be used with "Optional""MAJOR*java:ı<p>The concept of <code>Optional</code> is that it will be used when <code>null</code> could cause errors. In a way, it replaces <code>null</code>,
and when <code>Optional</code> is in use, there should never be a question of returning or receiving <code>null</code> from a call.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public void doSomething () {
  Optional&lt;String&gt; optional = getOptional();
  if (optional != null) {  // Noncompliant
    // do something with optional...
  }
}

@Nullable // Noncompliant
public Optional&lt;String&gt; getOptional() {
  // ...
  return null;  // Noncompliant
}
</pre>
<h2>Compliant Solution</h2>
<pre>
public void doSomething () {
  Optional&lt;String&gt; optional = getOptional();
  optional.ifPresent(
    // do something with optional...
  );
}

public Optional&lt;String&gt; getOptional() {
  // ...
  return Optional.empty();
}
</pre>ZBUG
è	
squid:S2677ˇ
squidS26772"read" and "readLine" return values should be used"MAJOR*java:®<p>When a method is called that returns data read from some data source, that data should be stored rather than thrown away. Any other course of
action is surely a bug.</p>
<p>This rule raises an issue when the return value of any of the following is ignored or merely null-checked: <code>BufferedReader.readLine()</code>,
<code>Reader.read()</code>, and these methods in any child classes.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public void doSomethingWithFile(String fileName) {
  BufferedReader buffReader = null;
  try {
    buffReader = new BufferedReader(new FileReader(fileName));
    while (buffReader.readLine() != null) { // Noncompliant
      // ...
    }
  } catch (IOException e) {
    // ...
  }
}
</pre>
<h2>Compliant Solution</h2>
<pre>
public void doSomethingWithFile(String fileName) {
  BufferedReader buffReader = null;
  try {
    buffReader = new BufferedReader(new FileReader(fileName));
    String line = null;
    while ((line = buffReader.readLine()) != null) {
      // ...
    }
  } catch (IOException e) {
    // ...
  }
}
</pre>ZBUG
Ø
squid:S4973ü
squidS4973;Strings and Boxed types should be compared using "equals()""MAJOR*java:ø
<p>It's almost always a mistake to compare two instances of <code>java.lang.String</code> or boxed types like <code>java.lang.Integer</code> using
reference equality <code>==</code> or <code>!=</code>, because it is not comparing actual value but locations in memory.</p>
<h2>Noncompliant Code Example</h2>
<pre>
String firstName = getFirstName(); // String overrides equals
String lastName = getLastName();

if (firstName == lastName) { ... }; // Non-compliant; false even if the strings have the same value
</pre>
<h2>Compliant Solution</h2>
<pre>
String firstName = getFirstName();
String lastName = getLastName();

if (firstName != null &amp;&amp; firstName.equals(lastName)) { ... };
</pre>
<h2>See</h2>
<ul>
  <li> <a href="http://cwe.mitre.org/data/definitions/595.html">MITRE, CWE-595</a> - Comparison of Object References Instead of Object Contents </li>
  <li> <a href="http://cwe.mitre.org/data/definitions/597.html">MITRE, CWE-597</a> - Use of Wrong Operator in String Comparison </li>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/wwD1AQ">CERT, EXP03-J.</a> - Do not use the equality operators when comparing values of
  boxed primitives </li>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/8AEqAQ">CERT, EXP50-J.</a> - Do not confuse abstract object equality with reference
  equality </li>
</ul>ZBUG
Ï
squid:S1223‹
squidS1223LNon-constructor methods should not have the same name as the enclosing class"MAJOR*java:‰<p>Having a class and some of its methods sharing the same name is misleading, and leaves others to wonder whether it was done that way on purpose, or
was the methods supposed to be a constructor.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public class Foo {
   public Foo() {...}
   public void Foo(String label) {...}  // Noncompliant
}
</pre>
<h2>Compliant Solution</h2>
<pre>
public class Foo {
   public Foo() {...}
   public void foo(String label) {...}  // Compliant
}
</pre>Z
CODE_SMELL
§
squid:S2675î
squidS2675)"readObject" should not be "synchronized""MAJOR*java:ø<p>A <code>readObject</code> method is written when a <code>Serializable</code> object needs special handling to be rehydrated from file. It should be
the case that the object being created by <code>readObject</code> is only visible to the thread that invoked the method, and the
<code>synchronized</code> keyword is not needed, and using <code>synchronized</code> anyway is just confusing. If this is not the case, the method
should be refactored to make it the case.</p>
<h2>Noncompliant Code Example</h2>
<pre>
private synchronized void readObject(java.io.ObjectInputStream in)
     throws IOException, ClassNotFoundException { // Noncompliant
  //...
}
</pre>
<h2>Compliant Solution</h2>
<pre>
private void readObject(java.io.ObjectInputStream in)
     throws IOException, ClassNotFoundException { // Compliant
  //...
}
</pre>Z
CODE_SMELL
œ
squid:S1221ø
squidS1221=Methods should not be named "tostring", "hashcode" or "equal""MAJOR*java:›<p>Naming a method <code>tostring</code>, <code>hashcode()</code> or <code>equal</code> is either:</p>
<ul>
  <li> A bug in the form of a typo. Overriding <code>toString</code>, <code>Object.hashCode()</code> (note the camelCasing) or
  <code>Object.equals</code> (note the 's' on the end) was meant, and the application does not behave as expected. </li>
  <li> Done on purpose. The name however will confuse every other developer, who may not notice the naming difference, or who will think it is a bug.
  </li>
</ul>
<p>In both cases, the method should be renamed.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public int hashcode() { /* ... */ }  // Noncompliant

public String tostring() { /* ... */ } // Noncompliant

public boolean equal(Object obj) { /* ... */ }  // Noncompliant
</pre>
<h2>Compliant Solution</h2>
<pre>
@Override
public int hashCode() { /* ... */ }

@Override
public String toString() { /* ... */ }

@Override
public boolean equals(Object obj) { /* ... */ }
</pre>ZBUG

squid:S2438‡
squidS2438;"Threads" should not be used where "Runnables" are expected"MAJOR*java:˘<p>While it is technically correct to use a <code>Thread</code> where a <code>Runnable</code> is called for, the semantics of the two objects are
different, and mixing them is a bad practice that will likely lead to headaches in the future.</p>
<p>The crux of the issue is that <code>Thread</code> is a larger concept than <code>Runnable</code>. A <code>Runnable</code> is an object whose
running should be managed. A <code>Thread</code> expects to manage the running of itself or other <code>Runnables</code>. </p>
<h2>Noncompliant Code Example</h2>
<pre>
	public static void main(String[] args) {
		Thread r =new Thread() {
			int p;
			@Override
			public void run() {
				while(true)
					System.out.println("a");
			}
		};
		new Thread(r).start();  // Noncompliant
</pre>
<h2>Compliant Solution</h2>
<pre>
	public static void main(String[] args) {
		Runnable r =new Runnable() {
			int p;
			@Override
			public void run() {
				while(true)
					System.out.println("a");
			}
		};
		new Thread(r).start();
</pre>Z
CODE_SMELL
“
squid:S4738¬
squidS4738,Java 8 features should be preferred to Guava"MAJOR*java:Í<p>Some Guava features were really useful for Java 7 application because Guava was bringing APIs missing in the JDK. Java 8 fixed these limitations.
When migrating an application to Java 8 or even when starting a new one, it's recommended to prefer Java 8 APIs over Guava ones to ease its
maintenance: developers don't need to learn how to use two APIs and can stick to the standard one.</p>
<p>This rule raises an issue when the following Guava APIs are used:</p>
<table>
  <tbody>
    <tr>
      <th> Guava API </th>
      <th> Java 8 API </th>
    </tr>
    <tr>
      <td> com.google.common.io.BaseEncoding#base64() </td>
      <td> java.util.Base64 </td>
    </tr>
    <tr>
      <td> com.google.common.io.BaseEncoding#base64Url() </td>
      <td> java.util.Base64 </td>
    </tr>
    <tr>
      <td> com.google.common.base.Joiner.on() </td>
      <td> java.lang.String#join() or java.util.stream.Collectors#joining() </td>
    </tr>
    <tr>
      <td> com.google.common.base.Optional#of() </td>
      <td> java.util.Optional#of() </td>
    </tr>
    <tr>
      <td> com.google.common.base.Optional#absent() </td>
      <td> java.util.Optional#empty() </td>
    </tr>
    <tr>
      <td> com.google.common.base.Optional#fromNullable() </td>
      <td> java.util.Optional#ofNullable() </td>
    </tr>
    <tr>
      <td> com.google.common.base.Optional </td>
      <td> java.util.Optional </td>
    </tr>
    <tr>
      <td> com.google.common.base.Predicate </td>
      <td> java.util.function.Predicate </td>
    </tr>
    <tr>
      <td> com.google.common.base.Function </td>
      <td> java.util.function.Function </td>
    </tr>
    <tr>
      <td> com.google.common.base.Supplier </td>
      <td> java.util.function.Supplier </td>
    </tr>
  </tbody>
</table>Z
CODE_SMELL
ú
 squid:ForLoopCounterChangedCheck˜
squidForLoopCounterChangedCheck."for" loop stop conditions should be invariant"MAJOR*java2S127:Ç<p>A <code>for</code> loop stop condition should test the loop counter against an invariant value (i.e. one that is true at both the beginning and
ending of every loop iteration). Ideally, this means that the stop condition is set to a local variable just before the loop begins. </p>
<p>Stop conditions that are not invariant are slightly less efficient, as well as being difficult to understand and maintain, and likely lead to the
introduction of errors in the future.</p>
<p>This rule tracks three types of non-invariant stop conditions:</p>
<ul>
  <li> When the loop counters are updated in the body of the <code>for</code> loop </li>
  <li> When the stop condition depend upon a method call </li>
  <li> When the stop condition depends on an object property, since such properties could change during the execution of the loop. </li>
</ul>
<h2>Noncompliant Code Example</h2>
<pre>
for (int i = 0; i &lt; 10; i++) {
  ...
  i = i - 1; // Noncompliant; counter updated in the body of the loop
  ...
}
</pre>
<h2>Compliant Solution</h2>
<pre>
for (int i = 0; i &lt; 10; i++) {...}
</pre>
<h2>See</h2>
<ul>
  <li> MISRA C:2004, 13.6 - Numeric variables being used within a <em>for</em> loop for iteration counting shall not be modified in the body of the
  loop. </li>
  <li> MISRA C++:2008, 6-5-3 - The <em>loop-counter</em> shall not be modified within <em>condition</em> or <em>statement</em>. </li>
</ul>Z
CODE_SMELL
•
squid:S2885ï
squidS2885+Non-thread-safe fields should not be static"MAJOR*java:≈<p>Not all classes in the standard Java library were written to be thread-safe. Using them in a multi-threaded manner is highly likely to cause data
problems or exceptions at runtime.</p>
<p>This rule raises an issue when an instance of <code>Calendar</code>, <code>DateFormat</code>, <code>javax.xml.xpath.XPath</code>, or
<code>javax.xml.validation.SchemaFactory</code> is marked <code>static</code>.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public class MyClass {
  private static SimpleDateFormat format = new SimpleDateFormat("HH-mm-ss");  // Noncompliant
  private static Calendar calendar = Calendar.getInstance();  // Noncompliant
</pre>
<h2>Compliant Solution</h2>
<pre>
public class MyClass {
  private SimpleDateFormat format = new SimpleDateFormat("HH-mm-ss");
  private Calendar calendar = Calendar.getInstance();
</pre>ZBUG
÷
squid:S2886∆
squidS28863Getters and setters should be synchronized in pairs"MAJOR*java:Ó
<p>When one part of a getter/setter pair is <code>synchronized</code> the other part should be too. Failure to synchronize both sides of a pair may
result in inconsistent behavior at runtime as callers access an inconsistent method state.</p>
<p>This rule raises an issue when either the method or the contents of one method in a getter/setter pair are synchrnoized but the other is not.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public class Person {
  String name;
  int age;

  public synchronized void setName(String name) {
    this.name = name;
  }

  public String getName() {  // Noncompliant
    return this.name;
  }

  public void setAge(int age) {  // Noncompliant
    this.age = age;
  }

  public int getAge() {
    synchronized (this) {
      return this.age;
    }
  }
}
</pre>
<h2>Compliant Solution</h2>
<pre>
public class Person {
  String name;
  int age;

  public synchronized void setName(String name) {
    this.name = name;
  }

  public synchronized String getName() {
    return this.name;
  }

  public void setAge(int age) {
    synchronized (this) {
      this.age = age;
   }
  }

  public int getAge() {
    synchronized (this) {
      return this.age;
    }
  }
}
</pre>
<h2>See</h2>
<ul>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/I4BoAg">CERT, VNA01-J.</a> - Ensure visibility of shared references to immutable
  objects </li>
</ul>ZBUG
˝
squid:S2761Ì
squidS2761-Unary prefix operators should not be repeated"MAJOR*java:õ<p>The needless repetition of an operator is usually a typo. There is no reason to write <code>!!!i</code> when <code>!i</code> will do.</p>
<p>On the other hand, the repetition of increment and decrement operators may have been done on purpose, but doing so obfuscates the meaning, and
should be simplified.</p>
<p>This rule raises an issue for sequences of: <code>!</code>, <code>~</code>, <code>-</code>, and <code>+</code>.</p>
<h2>Noncompliant Code Example</h2>
<pre>
int i = 1;

int j = - - -i;  // Noncompliant; just use -i
int k = ~~~i;    // Noncompliant; same as i
int m = + +i;    // Noncompliant; operators are useless here

boolean b = false;
boolean c = !!!b;   // Noncompliant
</pre>
<h2>Compliant Solution</h2>
<pre>
int i =  1;

int j = -i;
int k = ~i;
int m =  i;

boolean b = false;
boolean c = !b;
</pre>
<h2>Exceptions</h2>
<p>Overflow handling for GWT compilation using <code>~~</code> is ignored.</p>ZBUG
„
squid:S1317”
squidS1317N"StringBuilder" and "StringBuffer" should not be instantiated with a character"MAJOR*java:‡<p>Instantiating a <code>StringBuilder</code> or a <code>StringBuffer</code> with a character is misleading because most Java developers would expect
the character to be the initial value of the <code>StringBuffer</code>. </p>
<p>What actually happens is that the int representation of the character is used to determine the initial size of the <code>StringBuffer</code>.</p>
<h2>Noncompliant Code Example</h2>
<pre>
StringBuffer foo = new StringBuffer('x');   //equivalent to StringBuffer foo = new StringBuffer(120);
</pre>
<h2>Compliant Solution</h2>
<pre>
StringBuffer foo = new StringBuffer("x");
</pre>ZBUG
Õ
squid:MaximumInheritanceDepth´
squidMaximumInheritanceDepth2Inheritance tree of classes should not be too deep"MAJOR*java2S110:µ<p>Inheritance is certainly one of the most valuable concepts in object-oriented programming. It's a way to compartmentalize and reuse code by
creating collections of attributes and behaviors called classes which can be based on previously created classes. But abusing this concept by creating
a deep inheritance tree can lead to very complex and unmaintainable source code. Most of the time a too deep inheritance tree is due to bad object
oriented design which has led to systematically use 'inheritance' when for instance 'composition' would suit better.</p>
<p>This rule raises an issue when the inheritance tree, starting from <code>Object</code> has a greater depth than is allowed. </p>Z
CODE_SMELL
Ñ
squid:S3864Ù
squidS3864)"Stream.peek" should be used with caution"MAJOR*java:ü<p>According to its JavaDocs, <code>java.util.Stream.peek()</code> ‚Äúexists mainly to support debugging‚Äù purposes. Although this does not mean that
using it for other purposes is discouraged, relying on <code>peek()</code> without careful consideration can lead to error-prone code such as:</p>
<ul>
  <li> If the stream pipeline does not include a terminal operation, no elements will be consumed and the <code>peek()</code> action will not be
  invoked at all. </li>
  <li> As long as a stream implementation can reach the final step, it can freely optimize processing by only producing some elements or even none at
  all (e.g. relying on other collection methods for counting elements). Accordingly, the <code>peek()</code> action will be invoked for fewer elements
  or not at all. </li>
</ul>
<p>This rule raises an issue for each use of <code>peek()</code> to be sure that it is challenged and validated by the team to be meant for production
debugging/logging purposes.</p>
<h2>Noncompliant Code Example</h2>
<pre>
Stream.of("one", "two", "three", "four")
         .filter(e -&gt; e.length() &gt; 3)
         .peek(e -&gt; System.out.println("Filtered value: " + e)); // Noncompliant
</pre>
<h2>See</h2>
<ul>
  <li> <a href="https://docs.oracle.com/javase/8/docs/api/java/util/stream/Stream.html#peek-java.util.function.Consumer-">Java 8 API Documentation</a>
  </li>
  <li> 4comprehension: <a href="https://4comprehension.com/idiomatic-peeking/">Idiomatic Peeking with Java Stream API</a> </li>
  <li> Data Geekery: <a href="https://blog.jooq.org/2014/06/13/java-8-friday-10-subtle-mistakes-when-using-the-streams-api/">10 Subtle Mistakes When
  Using the Streams API</a> </li>
</ul>Z
CODE_SMELL
Ñ
squid:S3985Ù
squidS3985*Unused "private" classes should be removed"MAJOR*java:û<p><code>private</code> classes that are never used are dead code: unnecessary, inoperative code that should be removed. Cleaning out dead code
decreases the size of the maintained codebase, making it easier to understand the program and preventing bugs from being introduced.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public class Foo
{
  ...
  private class MyUnusedPrivateClass {...} // Noncompliant
}
</pre>Z
CODE_SMELL
ó
squid:S3986á
squidS39869Week Year ("YYYY") should not be used for date formatting"MAJOR*java:©<p>Few developers are aware of the difference between <code>Y</code> for "Week year" and <code>y</code> for Year when formatting and parsing a date
with <code>SimpleDateFormat</code>. That's likely because for most dates, Week year and Year are the same, so testing at any time other than the first
or last week of the year will yield the same value for both <code>y</code> and <code>Y</code>. But in the last week of December and the first week of
January, you may get unexpected results.</p>
<p>According to the <a href="http://docs.oracle.com/javase/8/docs/api/java/util/GregorianCalendar.html#week_year">Javadoc</a>:</p>
<blockquote>
  <p>A week year is in sync with a WEEK_OF_YEAR cycle. All weeks between the first and last weeks (inclusive) have the same week year value.
  Therefore, the first and last days of a week year may have different calendar year values.</p>
  <p>For example, January 1, 1998 is a Thursday. If getFirstDayOfWeek() is MONDAY and getMinimalDaysInFirstWeek() is 4 (ISO 8601 standard compatible
  setting), then week 1 of 1998 starts on December 29, 1997, and ends on January 4, 1998. The week year is 1998 for the last three days of calendar
  year 1997. If, however, getFirstDayOfWeek() is SUNDAY, then week 1 of 1998 starts on January 4, 1998, and ends on January 10, 1998; the first three
  days of 1998 then are part of week 53 of 1997 and their week year is 1997.</p>
</blockquote>
<h2>Noncompliant Code Example</h2>
<pre>
Date date = new SimpleDateFormat("yyyy/MM/dd").parse("2015/12/31");
String result = new SimpleDateFormat("YYYY/MM/dd").format(date);   //Noncompliant; yields '2016/12/31'
</pre>
<h2>Compliant Solution</h2>
<pre>
Date date = new SimpleDateFormat("yyyy/MM/dd").parse("2015/12/31");
String result = new SimpleDateFormat("yyyy/MM/dd").format(date);   //Yields '2015/12/31' as expected
</pre>
<h2>Exceptions</h2>
<pre>
Date date = new SimpleDateFormat("yyyy/MM/dd").parse("2015/12/31");
String result = new SimpleDateFormat("YYYY-ww").format(date);  //compliant, 'Week year' is used along with 'Week of year'. result = '2016-01'
</pre>ZBUG
ä
squid:S1201˙
squidS1201;"equals" method overrides should accept "Object" parameters"MAJOR*java:ö<p>"equals" as a method name should be used exclusively to override <code>Object.equals(Object)</code> to prevent any confusion.</p>
<p>It is tempting to overload the method to take a specific class instead of <code>Object</code> as parameter, to save the class comparison check.
However, this will not work as expected when that is the only override.</p>
<h2>Noncompliant Code Example</h2>
<pre>
class MyClass {
  private int foo = 1;

  public boolean equals(MyClass o) {  // Noncompliant; does not override Object.equals(Object)
    return o != null &amp;&amp; o.foo == this.foo;
  }

  public static void main(String[] args) {
    MyClass o1 = new MyClass();
    Object o2 = new MyClass();
    System.out.println(o1.equals(o2));  // Prints "false" because o2 an Object not a MyClass
  }
}

class MyClass2 {
  public boolean equals(MyClass2 o) {  // Ignored; `boolean equals(Object)` also present
    //..
  }

  public boolean equals(Object o) {
    //...
  }
}
</pre>
<h2>Compliant Solution</h2>
<pre>
class MyClass {
  private int foo = 1;

  @Override
  public boolean equals(Object o) {
    if (this == o) {
        return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }

    MyClass other = (MyClass)o;
    return this.foo == other.foo;
  }

  /* ... */
}

class MyClass2 {
  public boolean equals(MyClass2 o) {
    //..
  }

  public boolean equals(Object o) {
    //...
  }
}
</pre>ZBUG
Ã
squid:S3984º
squidS39844Exception should not be created without being thrown"MAJOR*java:„<p>Creating a new <code>Throwable</code> without actually throwing it is useless and is probably due to a mistake.</p>
<h2>Noncompliant Code Example</h2>
<pre>
if (x &lt; 0)
  new IllegalArgumentException("x must be nonnegative");
</pre>
<h2>Compliant Solution</h2>
<pre>
if (x &lt; 0)
  throw new IllegalArgumentException("x must be nonnegative");
</pre>ZBUG
Ò
squid:S1200·
squidS1200YClasses should not be coupled to too many other classes (Single Responsibility Principle)"MAJOR*java:‹
<p>According to the Single Responsibility Principle, introduced by Robert C. Martin in his book "Principles of Object Oriented Design", a class should
have only one responsibility:</p>
<blockquote>
  <p>If a class has more than one responsibility, then the responsibilities become coupled.</p>
  <p>Changes to one responsibility may impair or inhibit the class' ability to meet the others.</p>
  <p>This kind of coupling leads to fragile designs that break in unexpected ways when changed.</p>
</blockquote>
<p>Classes which rely on many other classes tend to aggregate too many responsibilities and should be split into several smaller ones.</p>
<p>Nested classes dependencies are not counted as dependencies of the outer class.</p>
<h2>Noncompliant Code Example</h2>
<p>With a threshold of 5:</p>
<pre>
class Foo {                        // Noncompliant - Foo depends on too many classes: T1, T2, T3, T4, T5, T6 and T7
  T1 a1;                           // Foo is coupled to T1
  T2 a2;                           // Foo is coupled to T2
  T3 a3;                           // Foo is coupled to T3

  public T4 compute(T5 a, T6 b) {  // Foo is coupled to T4, T5 and T6
    T7 result = a.getResult(b);    // Foo is coupled to T7
    return result;
  }

  public static class Bar {        // Compliant - Bar depends on 2 classes: T8 and T9
    T8 a8;
    T9 a9;
  }
}
</pre>Z
CODE_SMELL
∏
squid:S3981®
squidS3981?Collection sizes and array length comparisons should make sense"MAJOR*java:ƒ<p>The size of a collection and the length of an array are always greater than or equal to zero. So testing that a size or length is greater than or
equal to zero doesn't make sense, since the result is always <code>true</code>. Similarly testing that it is less than zero will always return
<code>false</code>. Perhaps the intent was to check the non-emptiness of the collection or array instead. </p>
<h2>Noncompliant Code Example</h2>
<pre>
if (myList.size() &gt;= 0) { ... }

if (myList.size() &lt; 0) { ... }

boolean result = myArray.length &gt;= 0;

if (0 &gt; myArray.length) { ... }
</pre>
<h2>Compliant Solution</h2>
<pre>
if (!myList.isEmpty()) { ... }

if (myArray.length &gt;= 42) { ... }
</pre>ZBUG
˘
squid:S1448È
squidS1448(Classes should not have too many methods"MAJOR*java:ï<p>A class that grows too much tends to aggregate too many responsibilities and inevitably becomes harder to understand and therefore to maintain.
Above a specific threshold, it is strongly advised to refactor the class into smaller ones which focus on well defined topics.</p>Z
CODE_SMELL
æ	
squid:S1700Æ	
squidS1700=A field should not duplicate the name of its containing class"MAJOR*java:≈<p>It's confusing to have a class member with the same name (case differences aside) as its enclosing class. This is particularly so when you consider
the common practice of naming a class instance for the class itself.</p>
<p>Best practice dictates that any field or member with the same name as the enclosing class be renamed to be more descriptive of the particular
aspect of the class it represents or holds.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public class Foo {
  private String foo;

  public String getFoo() { }
}

Foo foo = new Foo();
foo.getFoo() // what does this return?
</pre>
<h2>Compliant Solution</h2>
<pre>
public class Foo {
  private String name;

  public String getName() { }
}

//...

Foo foo = new Foo();
foo.getName()

</pre>
<h2>Exceptions</h2>
<p>When the type of the field is the containing class and that field is static, no issue is raised to allow singletons named like the type. </p>
<pre>
public class Foo {
  ...
  private static Foo foo;
  public Foo getInstance() {
    if(foo==null) {
      foo = new Foo();
    }
    return foo;
  }
  ...
}
</pre>Z
CODE_SMELL
Õ
squid:S1820Ω
squidS1820'Classes should not have too many fields"MAJOR*java:Í<p>A class that grows too much tends to aggregate too many responsibilities and inevitably becomes harder to understand and therefore to maintain, and
having a lot of fields is an indication that a class has grown too large.</p>
<p>Above a specific threshold, it is strongly advised to refactor the class into smaller ones which focus on well defined topics.</p>Z
CODE_SMELL
ﬁ
"squid:CallToFileDeleteOnExitMethod∑
squidCallToFileDeleteOnExitMethod!"deleteOnExit" should not be used"MAJOR*java2S2308:Ã<p>Use of <code>File.deleteOnExit()</code> is not recommended for the following reasons:</p>
<ul>
  <li> The deletion occurs only in the case of a normal JVM shutdown but not when the JVM crashes or is killed. </li>
  <li> For each file handler, the memory associated with the handler is released only at the end of the process. </li>
</ul>
<h2>Noncompliant Code Example</h2>
<pre>
File file = new File("file.txt");
file.deleteOnExit();  // Noncompliant
</pre>Z
CODE_SMELL
ü
squid:S1850è
squidS1850M"instanceof" operators that always return "true" or "false" should be removed"MAJOR*java:ù<p><code>instanceof</code> operators that always return <code>true</code> or <code>false</code> are either useless or the result of a misunderstanding
which could lead to unexpected behavior in production.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public boolean isSuitable(Integer param) {
...
  String name = null;

  if (name instanceof String) { // Noncompliant; always false since name is null
    //...
  }

  if(param instanceof Number) {  // Noncompliant; always true unless param is null, because param is an Integer
    doSomething();
  }
...
}
</pre>
<h2>Compliant Solution</h2>
<pre>
public boolean isSuitable(Integer param) {
...
  doSomething();
...
}
</pre>
<h2>Deprecated</h2>
<p>This rule is deprecated; use <a href='/coding_rules#rule_key=squid%3AS2589'>S2589</a> instead.</p>ZBUG
‡	
squid:S1854–	
squidS1854Dead stores should be removed"MAJOR*java:á	<p>A dead store happens when a local variable is assigned a value that is not read by any subsequent instruction. Calculating or retrieving a value
only to then overwrite it or throw it away, could indicate a serious error in the code. Even if it's not an error, it is at best a waste of resources.
Therefore all calculated values should be used.</p>
<h2>Noncompliant Code Example</h2>
<pre>
i = a + b; // Noncompliant; calculation result not used before value is overwritten
i = compute();
</pre>
<h2>Compliant Solution</h2>
<pre>
i = a + b;
i += compute();
</pre>
<h2>Exceptions</h2>
<p>This rule ignores initializations to -1, 0, 1, <code>null</code>, <code>true</code>, <code>false</code> and <code>""</code>.</p>
<h2>See</h2>
<ul>
  <li> <a href="http://cwe.mitre.org/data/definitions/563.html">MITRE, CWE-563</a> - Assignment to Variable without Use ('Unused Variable') </li>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/QYA5">CERT, MSC13-C.</a> - Detect and remove unused values </li>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/uQCSBg">CERT, MSC56-J.</a> - Detect and remove superfluous code and values </li>
</ul>Z
CODE_SMELL
»
squid:S1860∏
squidS1860BSynchronization should not be based on Strings or boxed primitives"MAJOR*java:—<p>Objects which are pooled and potentially reused should not be used for synchronization. If they are, it can cause unrelated threads to deadlock
with unhelpful stacktraces. Specifically, <code>String</code> literals, and boxed primitives such as Integers should not be used as lock objects
because they are pooled and reused. The story is even worse for <code>Boolean</code> objects, because there are only two instances of
<code>Boolean</code>, <code>Boolean.TRUE</code> and <code>Boolean.FALSE</code> and every class that uses a Boolean will be referring to one of the
two.</p>
<h2>Noncompliant Code Example</h2>
<pre>
private static final Boolean bLock = Boolean.FALSE;
private static final Integer iLock = Integer.valueOf(0);
private static final String sLock = "LOCK";

public void doSomething() {

  synchronized(bLock) {  // Noncompliant
    // ...
  }
  synchronized(iLock) {  // Noncompliant
    // ...
  }
  synchronized(sLock) {  // Noncompliant
    // ...
  }
</pre>
<h2>Compliant Solution</h2>
<pre>
private static final Object lock1 = new Object();
private static final Object lock2 = new Object();
private static final Object lock3 = new Object();

public void doSomething() {

  synchronized(lock1) {
    // ...
  }
  synchronized(lock2) {
    // ...
  }
  synchronized(lock3) {
    // ...
  }
</pre>
<h2>See</h2>
<ul>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/rQGeAQ">CERT, LCK01-J.</a> - Do not synchronize on objects that may be reused </li>
</ul>ZBUG
ã	
squid:S1862˚
squidS1862BRelated "if/else if" statements should not have the same condition"MAJOR*java:î<p>A chain of <code>if</code>/<code>else if</code> statements is evaluated from top to bottom. At most, only one branch will be executed: the first
one with a condition that evaluates to <code>true</code>. </p>
<p>Therefore, duplicating a condition automatically leads to dead code. Usually, this is due to a copy/paste error. At best, it's simply dead code and
at worst, it's a bug that is likely to induce further bugs as the code is maintained, and obviously it could lead to unexpected behavior. </p>
<h2>Noncompliant Code Example</h2>
<pre>
if (param == 1)
  openWindow();
else if (param == 2)
  closeWindow();
else if (param == 1)  // Noncompliant
  moveWindowToTheBackground();
}
</pre>
<h2>Compliant Solution</h2>
<pre>
if (param == 1)
  openWindow();
else if (param == 2)
  closeWindow();
else if (param == 3)
  moveWindowToTheBackground();
}

</pre>
<h2>See</h2>
<ul>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/NYA5">CERT, MSC12-C.</a> - Detect and remove code that has no effect or is never
  executed </li>
</ul>ZBUG
⁄
squid:S2718 
squidS2718H"DateUtils.truncate" from Apache Commons Lang library should not be used"MAJOR*java:÷<p>The use of the <code>ZonedDateTime</code> class introduced in Java 8 to truncate a date can be significantly faster than the <code>DateUtils</code>
class from Commons Lang.</p>
<p><strong>Note</strong> that this rule is automatically disabled when the project's <code>sonar.java.source</code> is lower than <code>8</code>.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public Date trunc(Date date) {
  return DateUtils.truncate(date, Calendar.SECOND);  // Noncompliant
}
</pre>
<h2>Compliant Solution</h2>
<pre>
public Date trunc(Date date) {
  Instant instant = date.toInstant();
  ZonedDateTime zonedDateTime = instant.atZone(ZoneId.systemDefault());
  ZonedDateTime truncatedZonedDateTime = zonedDateTime.truncatedTo(ChronoUnit.SECONDS);
  Instant truncatedInstant = truncatedZonedDateTime.toInstant();
  return Date.from(truncatedInstant);
}
</pre>Z
CODE_SMELL
‘
squid:S3923ƒ
squidS3923WAll branches in a conditional structure should not have exactly the same implementation"MAJOR*java:»<p>Having all branches in a <code>switch</code> or <code>if</code> chain with the same implementation is an error. Either a copy-paste error was made
and something different should be executed, or there shouldn't be a <code>switch</code>/<code>if</code> chain at all.</p>
<h2>Noncompliant Code Example</h2>
<pre>
if (b == 0) {  // Noncompliant
  doOneMoreThing();
} else {
  doOneMoreThing();
}

int b = a &gt; 12 ? 4 : 4;  // Noncompliant

switch (i) {  // Noncompliant
  case 1:
    doSomething();
    break;
  case 2:
    doSomething();
    break;
  case 3:
    doSomething();
    break;
  default:
    doSomething();
}
</pre>
<h2>Exceptions</h2>
<p>This rule does not apply to <code>if</code> chains without <code>else</code>-s, or to <code>switch</code>-es without <code>default</code>
clauses.</p>
<pre>
if(b == 0) {    //no issue, this could have been done on purpose to make the code more readable
  doSomething();
} else if(b == 1) {
  doSomething();
}
</pre>ZBUG
Ù
squid:HiddenFieldCheckŸ
squidHiddenFieldCheck.Local variables should not shadow class fields"MAJOR*java2S1117:Ì<p>Shadowing fields with a local variable is a bad practice that reduces code readability: it makes it confusing to know whether the field or the
variable is being used.</p>
<h2>Noncompliant Code Example</h2>
<pre>
class Foo {
  public int myField;

  public void doSomething() {
    int myField = 0;
    ...
  }
}
</pre>
<h2>See</h2>
<ul>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/2ADEAw">CERT, DCL51-J.</a> - Do not shadow or obscure identifiers in subscopes </li>
</ul>Z
CODE_SMELL


squid:S1711‡

squidS17116Standard functional interfaces should not be redefined"MAJOR*java:˛	<p>Just as there is little justification for writing your own String class, there is no good reason to re-define one of the existing, standard
functional interfaces.</p>
<p>Doing so may seem tempting, since it would allow you to specify a little extra context with the name. But in the long run, it will be a source of
confusion, because maintenance programmers will wonder what is different between the custom functional interface and the standard one.</p>
<h2>Noncompliant Code Example</h2>
<pre>
@FunctionalInterface
public interface MyInterface { // Noncompliant
	double toDouble(int a);
}

@FunctionalInterface
public interface ExtendedBooleanSupplier { // Noncompliant
  boolean get();
  default boolean isFalse() {
    return !get();
  }
}

public class MyClass {
    private int a;
    public double myMethod(MyInterface instance){
	return instance.toDouble(a);
    }
}
</pre>
<h2>Compliant Solution</h2>
<pre>
@FunctionalInterface
public interface ExtendedBooleanSupplier extends BooleanSupplier { // Compliant, extends java.util.function.BooleanSupplier
  default boolean isFalse() {
    return !getAsBoolean();
  }
}

public class MyClass {
    private int a;
    public double myMethod(IntToDoubleFunction instance){
	return instance.applyAsDouble(a);
    }
}
</pre>Z
CODE_SMELL
ì
squid:S2925É
squidS2925*"Thread.sleep" should not be used in tests"MAJOR*java:≠<p>Using <code>Thread.sleep</code> in a test is just generally a bad idea. It creates brittle tests that can fail unpredictably depending on
environment ("Passes on my machine!") or load. Don't rely on timing (use mocks) or use libraries such as <code>Awaitility</code> for asynchroneous
testing. </p>
<h2>Noncompliant Code Example</h2>
<pre>
@Test
public void testDoTheThing(){

  MyClass myClass = new MyClass();
  myClass.doTheThing();

  Thread.sleep(500);  // Noncompliant
  // assertions...
}
</pre>
<h2>Compliant Solution</h2>
<pre>
@Test
public void testDoTheThing(){

  MyClass myClass = new MyClass();
  myClass.doTheThing();

  await().atMost(2, Duration.SECONDS).until(didTheThing());  // Compliant
  // assertions...
}

private Callable&lt;Boolean&gt; didTheThing() {
  return new Callable&lt;Boolean&gt;() {
    public Boolean call() throws Exception {
      // check the condition that must be fulfilled...
    }
  };
}
</pre>Z
CODE_SMELL
π

squid:S124™
squidS124,Track comments matching a regular expression"MAJOR*java:—<p>This rule template can be used to create rules which will be triggered when the full content of a comment matches a given regular expression. Note
that the regular expression should be expressed using the dotall format (where the <code>.</code> character matches any character).</p>
<p>For example, one can create a rule with the regular expression <code>.*REVIEW.*</code> to match all comment containing "REVIEW".</p>
<p>Note that, in order to match REVIEW regardless of the case, the <code>(?i)</code> modifier should be prepended to the expression, as in
<code>(?i).*REVIEW.*</code>.</p>@Z
CODE_SMELL
Œ
squid:S1607æ
squidS1607Tests should not be ignored"MAJOR*java:˜<p>When a test fails due, for example, to infrastructure issues, you might want to ignore it temporarily. But without some kind of notation about why
the test is being ignored, it may never be reactivated. Such tests are difficult to address without comprehensive knowledge of the project, and end up
polluting their projects.</p>
<p>This rule raises an issue for each ignored test that does not have a notation about why it is being skipped.</p>
<h2>Noncompliant Code Example</h2>
<pre>
@Ignore  // Noncompliant
@Test
public void testDoTheThing() {
  // ...
</pre>
<h2>Compliant Solution</h2>
<pre>
@Test
public void testDoTheThing() {
  // ...
</pre>
<h2>Exceptions</h2>
<p>The rule doesn't raise an issue if there is a comment in the @Ignore annotation</p>Z
CODE_SMELL
Ç	
squid:S1604Ú
squidS1604HAnonymous inner classes containing only one method should become lambdas"MAJOR*java:˛<p>Before Java 8, the only way to partially support closures in Java was by using anonymous inner classes. But the syntax of anonymous classes may
seem unwieldy and unclear.</p>
<p>With Java 8, most uses of anonymous inner classes should be replaced by lambdas to highly increase the readability of the source code.</p>
<p><strong>Note</strong> that this rule is automatically disabled when the project's <code>sonar.java.source</code> is lower than <code>8</code>.</p>
<h2>Noncompliant Code Example</h2>
<pre>
myCollection.stream().map(new Mapper&lt;String,String&gt;() {
  public String map(String input) {
    return new StringBuilder(input).reverse().toString();
  }
});

Predicate&lt;String&gt; isEmpty = new Predicate&lt;String&gt; {
    boolean test(String myString) {
        return myString.isEmpty();
    }
}
</pre>
<h2>Compliant Solution</h2>
<pre>
myCollection.stream().map(input -&gt; new StringBuilder(input).reverse().toString());

Predicate&lt;String&gt; isEmpty = myString -&gt; myString.isEmpty();
</pre>Z
CODE_SMELL
¥
squid:S1849§
squidS18496"Iterator.hasNext()" should not call "Iterator.next()""MAJOR*java:…<p>Calling <code>Iterator.hasNext()</code> is not supposed to have any side effects, and therefore should not change the state of the iterator.
<code>Iterator.next()</code> advances the iterator by one item. So calling it inside <code>Iterator.hasNext()</code>, breaks the
<code>hasNext()</code> contract, and will lead to unexpected behavior in production.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public class FibonacciIterator implements Iterator&lt;Integer&gt;{
...
@Override
public boolean hasNext() {
  if(next() != null) {
    return true;
  }
  return false;
}
...
}
</pre>ZBUG
õ

squid:S1844ã

squidS1844j"Object.wait(...)" should never be called on objects that implement "java.util.concurrent.locks.Condition""MAJOR*java:ı<p>From the Java API documentation:</p>
<blockquote>
  <p><code>Condition</code> factors out the <code>Object</code> monitor methods (<code>wait</code>, <code>notify</code> and <code>notifyAll</code>)
  into distinct objects to give the effect of having multiple wait-sets per object, by combining them with the use of arbitrary Lock implementations.
  Where a <code>Lock</code> replaces the use of <code>synchronized</code> methods and statements, a <code>Condition</code> replaces the use of the
  <code>Object</code> monitor methods.</p>
</blockquote>
<p>The purpose of implementing the <code>Condition</code> interface is to gain access to its more nuanced <code>await</code> methods. Therefore,
calling the method <code>Object.wait(...)</code> on a class implementing the <code>Condition</code> interface is silly and confusing.</p>
<h2>Noncompliant Code Example</h2>
<pre>
final Lock lock = new ReentrantLock();
final Condition notFull  = lock.newCondition();
...
notFull.wait();
</pre>
<h2>Compliant Solution</h2>
<pre>
final Lock lock = new ReentrantLock();
final Condition notFull  = lock.newCondition();
...
notFull.await();
</pre>Z
CODE_SMELL
à
squid:MissingDeprecatedCheckÁ
squidMissingDeprecatedCheckGDeprecated elements should have both the annotation and the Javadoc tag"MAJOR*java2S1123:‹<p>Deprecation should be marked with both the <code>@Deprecated</code> annotation and @deprecated Javadoc tag. The annotation enables tools such as
IDEs to warn about referencing deprecated elements, and the tag can be used to explain when it was deprecated, why, and how references should be
refactored. </p>
<p>Further, Java 9 adds two additional arguments to the annotation:</p>
<ul>
  <li> <code>since</code> allows you to describe when the deprecation took place </li>
  <li> <code>forRemoval</code>, indicates whether the deprecated element will be removed at some future date </li>
</ul>
<p>If your compile level is Java 9 or higher, you should be using one or both of these arguments.</p>
<h2>Noncompliant Code Example</h2>
<pre>
class MyClass {

  @Deprecated
  public void foo1() {
  }

  /**
    * @deprecated
    */
  public void foo2() {    // Noncompliant
  }

}
</pre>
<h2>Compliant Solution</h2>
<pre>
class MyClass {

  /**
    * @deprecated (when, why, refactoring advice...)
    */
  @Deprecated
  public void foo1() {
  }

  /**
    * Java &gt;= 9
    * @deprecated (when, why, refactoring advice...)
    */
  @Deprecated(since="5.1")
  public void foo2() {
  }

  /**
    * Java &gt;= 9
    * @deprecated (when, why, refactoring advice...)
    */
  @Deprecated(since="4.2", forRemoval=true)
  public void foo3() {
  }

}
</pre>
<h2>Exceptions</h2>
<p>The members and methods of a deprecated class or interface are ignored by this rule. The classes and interfaces themselves are still subject to
it.</p>
<pre>
/**
 * @deprecated (when, why, etc...)
 */
@Deprecated
class Qix  {

  public void foo() {} // Compliant; class is deprecated

}

/**
 * @deprecated (when, why, etc...)
 */
@Deprecated
interface Plop {

  void bar();

}
</pre>Z
CODE_SMELL
‰

squid:S138’
squidS138&Methods should not have too many lines"MAJOR*java:Ñ<p>A method that grows too large tends to aggregate too many responsibilities. Such method inevitably become harder to understand and therefore harder
to maintain.</p>
<p>Above a specific threshold, it is strongly advised to refactor into smaller methods which focus on well-defined tasks. Those smaller methods will
not only be easier to understand, but also probably easier to test.</p>Z
CODE_SMELL
ı
squid:S4248Â
squidS4248/Regex patterns should not be created needlessly"MAJOR*java:ä<p>The <code>java.util.regex.Pattern.compile()</code> methods have a significant performance cost, and therefore should be used sensibly.</p>
<p>Moreover they are the only mechanism available to create instances of the Pattern class, which are necessary to do any pattern matching using
regular expressions. Unfortunately that can be hidden behind convenience methods like <code>String.matches()</code> or
<code>String.split()</code>.</p>
<p>It is therefore somewhat easy to inadvertently repeatedly compile the same regular expression at great performance cost with no valid reason.</p>
<p>This rule raises an issue when:</p>
<ul>
  <li> A <code>Pattern</code> is compiled from a <code>String</code> literal or constant and is not stored in a static final reference. </li>
  <li> <code>String.matches</code>, <code>String.split</code>, <code>String.replaceAll</code> or <code>String.replaceFirst</code> are invoked with a
  <code>String</code> literal or constant. In which case the code should be refactored to use a <code>java.util.regex.Pattern</code> while respecting
  the previous rule. </li>
</ul>
<h2>Noncompliant Code Example</h2>
<pre>
public void doingSomething(String stringToMatch) {
  Pattern regex = Pattern.compile("myRegex");  // Noncompliant
  Matcher matcher = regex.matcher("s");
  // ...
  if (stringToMatch.matches("myRegex2")) {  // Noncompliant
    // ...
  }
}
</pre>
<h2>Compliant Solution</h2>
<pre>
private static final Pattern myRegex = Pattern.compile("myRegex");
private static final Pattern myRegex2 = Pattern.compile("myRegex2");

public void doingSomething(String stringToMatch) {
  Matcher matcher = myRegex.matcher("s");
  // ...
  if (myRegex2.matcher(stringToMatch).matches()) {
    // ...
  }
}
</pre>
<h2>Exceptions</h2>
<p><code>String.split</code> doesn't create a regex when the string passed as argument meets either of these 2 conditions:</p>
<ul>
  <li> It is a one-char String and this character is not one of the RegEx's meta characters ".$|()[{^?*+\" </li>
  <li> It is a two-char String and the first char is the backslash and the second is not the ascii digit or ascii letter. </li>
</ul>
<p>In which case no issue will be raised.</p>Z
CODE_SMELL
è
squid:S3034ˇ
squidS3034SRaw byte values should not be used in bitwise operations in combination with shifts"MAJOR*java:á<p>When reading bytes in order to build other primitive values such as <code>int</code>s or <code>long</code>s, the <code>byte</code> values are
automatically promoted, but that promotion can have unexpected results.</p>
<p>For instance, the binary representation of the integer 640 is <code>0b0000_0010_1000_0000</code>, which can also be written with the array of
(unsigned) bytes <code>[2, 128]</code>. However, since Java uses two's complement, the representation of the integer in signed bytes will be <code>[2,
-128]</code> (because the <code>byte</code> <code>0b1000_0000</code> is promoted to the <code>int</code>
<code>0b1111_1111_1111_1111_1111_1111_1000_0000</code>). Consequently, trying to reconstruct the initial integer by shifting and adding the values of
the bytes without taking care of the sign will not produce the expected result. </p>
<p>To prevent such accidental value conversion, use bitwise and (<code>&amp;</code>) to combine the <code>byte</code> value with <code>0xff</code>
(255) and turn all the higher bits back off.</p>
<p>This rule raises an issue any time a <code>byte</code> value is used as an operand without <code>&amp; 0xff</code>, when combined with shifts.</p>
<h2>Noncompliant Code Example</h2>
<pre>
  int intFromBuffer() {
    int result = 0;
    for (int i = 0; i &lt; 4; i++) {
      result = (result &lt;&lt; 8) | readByte(); // Noncompliant
    }
    return result;
  }
</pre>
<h2>Compliant Solution</h2>
<pre>
  int intFromBuffer() {
    int result = 0;
    for (int i = 0; i &lt; 4; i++) {
      result = (result &lt;&lt; 8) | (readByte() &amp; 0xff);
    }
    return result;
  }
</pre>
<h2>See</h2>
<ul>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/SAHEAw">CERT, NUM52-J.</a> - Be aware of numeric promotion behavior </li>
</ul>ZBUG
ƒ
squid:S2061¥
squidS2061?Custom serialization method signatures should meet requirements"MAJOR*java:–<p>Writers of <code>Serializable</code> classes can choose to let Java's automatic mechanisms handle serialization and deserialization, or they can
choose to handle it themselves by implementing specific methods. However, if the signatures of those methods are not exactly what is expected, they
will be ignored and the default serialization mechanisms will kick back in. </p>
<h2>Noncompliant Code Example</h2>
<pre>
public class Watermelon implements Serializable {
  // ...
  void writeObject(java.io.ObjectOutputStream out)// Noncompliant; not private
        throws IOException
  {...}

  private void readObject(java.io.ObjectInputStream in)
  {...}

  public void readObjectNoData()  // Noncompliant; not private
  {...}

  static Object readResolve() throws ObjectStreamException  // Noncompliant; this method may have any access modifier, may not be static

  Watermelon writeReplace() throws ObjectStreamException // Noncompliant; this method may have any access modifier, but must return Object
  {...}
}
</pre>
<h2>Compliant Solution</h2>
<pre>
public class Watermelon implements Serializable {
  // ...
  private void writeObject(java.io.ObjectOutputStream out)
        throws IOException
  {...}

  private void readObject(java.io.ObjectInputStream in)
        throws IOException, ClassNotFoundException
  {...}

  private void readObjectNoData()
        throws ObjectStreamException
  {...}

  protected Object readResolve() throws ObjectStreamException
  {...}

  private Object writeReplace() throws ObjectStreamException
  {...}
</pre>
<h2>See</h2>
<ul>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/4gAMAg">CERT, SER01-J.</a> - Do not deviate from the proper signatures of serialization
  methods </li>
</ul>ZBUG
≠
squid:S2185ù
squidS2185"Silly math should not be performed"MAJOR*java:œ<p>Certain math operations are just silly and should not be performed because their results are predictable.</p>
<p>In particular, <code>anyValue % 1</code> is silly because it will always return 0.</p>
<p>Casting a non-floating-point value to floating-point and then passing it to <code>Math.round</code>, <code>Math.ceil</code>, or
<code>Math.floor</code> is silly because the result will always be the original value. </p>
<p>These operations are silly with any constant value: <code>Math.abs</code>, <code>Math.ceil</code>, <code>Math.floor</code>, <code>Math.rint</code>,
<code>Math.round</code>.</p>
<p>And these oprations are silly with certain constant values:</p>
<table>
  <tbody>
    <tr>
      <th>Operation</th>
      <th>Value</th>
    </tr>
    <tr>
      <td>acos</td>
      <td>0.0 or 1.0</td>
    </tr>
    <tr>
      <td>asin</td>
      <td>0.0 or 1.0</td>
    </tr>
    <tr>
      <td>atan</td>
      <td>0.0 or 1.0</td>
    </tr>
    <tr>
      <td>atan2</td>
      <td>0.0</td>
    </tr>
    <tr>
      <td>cbrt</td>
      <td>0.0 or 1.0</td>
    </tr>
    <tr>
      <td>cos</td>
      <td>0.0</td>
    </tr>
    <tr>
      <td>cosh</td>
      <td>0.0</td>
    </tr>
    <tr>
      <td>exp</td>
      <td>0.0 or 1.0</td>
    </tr>
    <tr>
      <td>expm1</td>
      <td>0.0</td>
    </tr>
    <tr>
      <td>log</td>
      <td>0.0 or 1.0</td>
    </tr>
    <tr>
      <td>log10</td>
      <td>0.0 or 1.0</td>
    </tr>
    <tr>
      <td>sin</td>
      <td>0.0</td>
    </tr>
    <tr>
      <td>sinh</td>
      <td>0.0</td>
    </tr>
    <tr>
      <td>sqrt</td>
      <td>0.0 or 1.0</td>
    </tr>
    <tr>
      <td>tan</td>
      <td>0.0</td>
    </tr>
    <tr>
      <td>tanh</td>
      <td>0.0</td>
    </tr>
    <tr>
      <td>toDegrees</td>
      <td>0.0 or 1.0</td>
    </tr>
    <tr>
      <td>toRadians</td>
      <td>0.0</td>
    </tr>
  </tbody>
</table>
<h2>Noncompliant Code Example</h2>
<pre>
public void doMath(int a) {
  double floor = Math.floor((double)a); // Noncompliant
  double ceiling = Math.ceil(4.2);  // Noncompliant
  double arcTan = Math.atan(0.0);  // Noncompliant
}
</pre>Z
CODE_SMELL
Ø
squid:S3030ü
squidS30301Classes should not have too many "static" imports"MAJOR*java:¬<p>Importing a class statically allows you to use its <code>public static</code> members without qualifying them with the class name. That can be
handy, but if you import too many classes statically, your code can become confusing and difficult to maintain.</p>
<h2>Noncompliant Code Example</h2>
<p>With the default threshold value: 4</p>
<pre>
import static java.lang.Math.*;
import static java.util.Collections.*;
import static com.myco.corporate.Constants.*;
import static com.myco.division.Constants.*;
import static com.myco.department.Constants.*;  // Noncompliant
</pre>Z
CODE_SMELL
˚

squid:S106Ï
squidS106<Standard outputs should not be used directly to log anything"MAJOR*java:Ö<p>When logging a message there are several important requirements which must be fulfilled:</p>
<ul>
  <li> The user must be able to easily retrieve the logs </li>
  <li> The format of all logged message must be uniform to allow the user to easily read the log </li>
  <li> Logged data must actually be recorded </li>
  <li> Sensitive data must only be logged securely </li>
</ul>
<p>If a program directly writes to the standard outputs, there is absolutely no way to comply with those requirements. That's why defining and using a
dedicated logger is highly recommended.</p>
<h2>Noncompliant Code Example</h2>
<pre>
System.out.println("My Message");  // Noncompliant
</pre>
<h2>Compliant Solution</h2>
<pre>
logger.log("My Message");
</pre>
<h2>See</h2>
<ul>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/RoElAQ">CERT, ERR02-J.</a> - Prevent exceptions while logging data </li>
</ul>Z
CODE_SMELL
±
squid:S2060°
squidS2060>"Externalizable" classes should have no-arguments constructors"MAJOR*java:æ<p>An <code>Externalizable</code> class is one which handles its own <code>Serialization</code> and deserialization. During deserialization, the first
step in the process is a default instantiation using the class' no-argument constructor. Therefore an <code>Externalizable</code> class without a
no-arg constructor cannot be deserialized.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public class Tomato implements Externalizable {  // Noncompliant; no no-arg constructor

  public Tomato (String color, int weight) { ... }
}
</pre>
<h2>Compliant Solution</h2>
<pre>
public class Tomato implements Externalizable {

  public Tomato() { ... }
  public Tomato (String color, int weight) { ... }
}
</pre>ZBUG
Õ

squid:S109æ
squidS109 Magic numbers should not be used"MAJOR*java:Û<p>A magic number is a number that comes out of nowhere, and is directly used in a statement. Magic numbers are often used, for instance to limit the
number of iterations of a loops, to test the value of a property, etc.</p>
<p>Using magic numbers may seem obvious and straightforward when you're writing a piece of code, but they are much less obvious and straightforward at
debugging time.</p>
<p>That is why magic numbers must be demystified by first being assigned to clearly named variables before being used.</p>
<p>-1, 0 and 1 are not considered magic numbers.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public static void doSomething() {
	for(int i = 0; i &lt; 4; i++){                 // Noncompliant, 4 is a magic number
		...
	}
}
</pre>
<h2>Compliant Solution</h2>
<pre>
public static final int NUMBER_OF_CYCLES = 4;
public static void doSomething() {
  for(int i = 0; i &lt; NUMBER_OF_CYCLES ; i++){
    ...
  }
}
</pre>
<h2>Exceptions</h2>
<p>This rule ignores <code>hashCode</code> methods.</p>Z
CODE_SMELL
ú	
squid:S3042å	
squidS3042C"writeObject" should not be the only "synchronized" code in a class"MAJOR*java:ù<p>The purpose of synchronization is to ensure that only one thread executes a given block of code at a time. There's no real problem with marking
<code>writeObject</code> <code>synchronized</code>, but it's highly suspicious if this serialization-related method is the only
<code>synchronized</code> code in a <code>class</code>.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public class RubberBall {

  private Color color;
  private int diameter;

  public RubberBall(Color color, int diameter) {
    // ...
  }

  public void bounce(float angle, float velocity) {
    // ...
  }

  private synchronized void writeObject(ObjectOutputStream stream) throws IOException { // Noncompliant
    // ...
  }
}
</pre>
<h2>Compliant Solution</h2>
<pre>
public class RubberBall {

  private Color color;
  private int diameter;

   public RubberBall(Color color, int diameter) {
    // ...
  }

  public void bounce(float angle, float velocity) {
    // ...
  }

  private void writeObject(ObjectOutputStream stream) throws IOException {
    // ...
  }
}
</pre>Z
CODE_SMELL
œ
squid:S4011ø
squidS4011%Track uses of disallowed constructors"MAJOR*java:Ï<p>This rule allows banning usage of certain constructors.</p>
<h2>Noncompliant Code Example</h2>
<p>Given parameters:</p>
<ul>
  <li> className: java.util.Date </li>
  <li> argumentTypes: java.lang.String </li>
</ul>
<pre>
Date birthday;
birthday = new Date("Sat Sep 27 05:42:21 EDT 1986");  // Noncompliant
birthday = new Date(528176541000L); // Compliant
</pre>@Z
CODE_SMELL
¿
squid:S2047∞
squidS2047OThe names of methods with boolean return values should start with "is" or "has""MAJOR*java:µ<p>Well-named functions can allow the users of your code to understand at a glance what to expect from the function - even before reading the
documentation. Toward that end, methods returning a boolean should have names that start with "is" or "has" rather than with "get".</p>
<h2>Noncompliant Code Example</h2>
<pre>
public boolean getFoo() { // Noncompliant
  // ...
}

public boolean getBar(Bar c) { // Noncompliant
  // ...
}

public boolean testForBar(Bar c) { // Compliant - The method does not start by 'get'.
  // ...
}
</pre>
<h2>Compliant Solution</h2>
<pre>
public boolean isFoo() {
  // ...
}

public boolean hasBar(Bar c) {
  // ...
}

public boolean testForBar(Bar c) {
  // ...
}
</pre>
<h2>Exceptions</h2>
<p>Overriding methods are excluded.</p>
<pre>
@Override
public boolean getFoo(){
  // ...
}
</pre>Z
CODE_SMELL
ø	
squid:S2166Ø	
squidS2166FClasses named like "Exception" should extend "Exception" or a subclass"MAJOR*java:Ω<p>Clear, communicative naming is important in code. It helps maintainers and API users understand the intentions for and uses of a unit of code.
Using "exception" in the name of a class that does not extend <code>Exception</code> or one of its subclasses is a clear violation of the expectation
that a class' name will indicate what it is and/or does.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public class FruitException {  // Noncompliant; this has nothing to do with Exception
  private Fruit expected;
  private String unusualCharacteristics;
  private boolean appropriateForCommercialExploitation;
  // ...
}

public class CarException {  // Noncompliant; the extends clause was forgotten?
  public CarException(String message, Throwable cause) {
  // ...
</pre>
<h2>Compliant Solution</h2>
<pre>
public class FruitSport {
  private Fruit expected;
  private String unusualCharacteristics;
  private boolean appropriateForCommercialExploitation;
  // ...
}

public class CarException extends Exception {
  public CarException(String message, Throwable cause) {
  // ...
</pre>Z
CODE_SMELL
£
squid:S4348ì
squidS4348#"iterator" should not return "this""MAJOR*java:À<p>There are two classes in the Java standard library that deal with iterations: <code>Iterable&lt;T&gt;</code> and <code>Iterator&lt;T&gt;</code>. An
<code>Iterable&lt;T&gt;</code> represents a data structure that can be the target of the "for-each loop" statement, and an
<code>Iterator&lt;T&gt;</code> represents the state of an ongoing traversal. An <code>Iterable&lt;T&gt;</code> is generally expected to support
multiple traversals.</p>
<p>An <code>Iterator&lt;T&gt;</code> that also implements <code>Iterable&lt;t&gt;</code> by returning itself as its <code>iterator()</code> will not
support multiple traversals since its state will be carried over.</p>
<p>This rule raises an issue when the <code>iterator()</code> method of a class implementing both <code>Iterable&lt;T&gt;</code> and
<code>Iterator&lt;t&gt;</code> returns <code>this</code>.</p>
<h2>Noncompliant Code Example</h2>
<pre>
class FooIterator implements Iterator&lt;Foo&gt;, Iterable&lt;Foo&gt; {
  private Foo[] seq;
  private int idx = 0;

  public boolean hasNext() {
    return idx &lt; seq.length;
  }

  public Foo next() {
    return seq[idx++];
  }

  public Iterator&lt;Foo&gt; iterator() {
    return this; // Noncompliant
  }
  // ...
}
</pre>
<h2>Compliant Solution</h2>
<pre>
class FooSequence implements Iterable&lt;Foo&gt; {
  private Foo[] seq;

  public Iterator&lt;Foo&gt; iterator() {
    return new Iterator&lt;Foo&gt;() {
      private int idx = 0;

      public boolean hasNext() {
        return idx &lt; seq.length;
      }

      public Foo next() {
        return seq[idx++];
      }
    };
  }
  // ...
}
</pre>ZBUG
ä
squid:S1194˙
squidS1194("java.lang.Error" should not be extended"MAJOR*java:¶<p><code>java.lang.Error</code> and its subclasses represent abnormal conditions, such as <code>OutOfMemoryError</code>, which should only be
encountered by the Java Virtual Machine.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public class MyException extends Error { /* ... */ }       // Noncompliant
</pre>
<h2>Compliant Solution</h2>
<pre>
public class MyException extends Exception { /* ... */ }   // Compliant
</pre>Z
CODE_SMELL
◊
squid:S3010«
squidS30103Static fields should not be updated in constructors"MAJOR*java:Ë<p>Assigning a value to a <code>static</code> field in a constructor could cause unreliable behavior at runtime since it will change the value for all
instances of the class.</p>
<p>Instead remove the field's <code>static</code> modifier, or initialize it statically.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public class Person {
  static Date dateOfBirth;
  static int expectedFingers;

  public Person(date birthday) {
    dateOfBirth = birthday;  // Noncompliant; now everyone has this birthday
    expectedFingers = 10;  // Noncompliant
  }
}
</pre>
<h2>Compliant Solution</h2>
<pre>
public class Person {
  Date dateOfBirth;
  static int expectedFingers = 10;

  public Person(date birthday) {
    dateOfBirth = birthday;
  }
}
</pre>Z
CODE_SMELL
Ó
squid:S1193ﬁ
squidS1193GException types should not be tested using "instanceof" in catch blocks"MAJOR*java:Î<p>Multiple catch blocks of the appropriate type should be used instead of catching a general exception, and then testing on the type.</p>
<h2>Noncompliant Code Example</h2>
<pre>
try {
  /* ... */
} catch (Exception e) {
  if(e instanceof IOException) { /* ... */ }         // Noncompliant
  if(e instanceof NullPointerException{ /* ... */ }  // Noncompliant
}
</pre>
<h2>Compliant Solution</h2>
<pre>
try {
  /* ... */
} catch (IOException e) { /* ... */ }                // Compliant
} catch (NullPointerException e) { /* ... */ }       // Compliant
</pre>
<h2>See</h2>
<ul>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/5gFFB">CERT, ERR51-J.</a> - Prefer user-defined exceptions over more general exception
  types </li>
</ul>Z
CODE_SMELL
√
squid:S1191≥
squidS11910Classes from "sun.*" packages should not be used"MAJOR*java:◊<p>Classes in the <code>sun.*</code> or <code>com.sun.*</code> packages are considered implementation details, and are not part of the Java API.</p>
<p>They can cause problems when moving to new versions of Java because there is no backwards compatibility guarantee. Similarly, they can cause
problems when moving to a different Java vendor, such as OpenJDK.</p>
<p>Such classes are almost always wrapped by Java API classes that should be used instead.</p>
<h2>Noncompliant Code Example</h2>
<pre>
import com.sun.jna.Native;     // Noncompliant
import sun.misc.BASE64Encoder; // Noncompliant
</pre>Z
CODE_SMELL
°
squid:S3027ë
squidS3027=String function use should be optimized for single characters"MAJOR*java:®<p>An <code>indexOf</code> or <code>lastIndexOf</code> call with a single letter <code>String</code> can be made more performant by switching to a
call with a <code>char</code> argument.</p>
<h2>Noncompliant Code Example</h2>
<pre>
String myStr = "Hello World";
// ...
int pos = myStr.indexOf("W");  // Noncompliant
// ...
int otherPos = myStr.lastIndexOf("r"); // Noncompliant
// ...
</pre>
<h2>Compliant Solution</h2>
<pre>
String myStr = "Hello World";
// ...
int pos = myStr.indexOf('W');
// ...
int otherPos = myStr.lastIndexOf('r');
// ...
</pre>Z
CODE_SMELL
Ø
squid:S2177ü
squidS2177FChild class methods named for parent class methods should be overrides"MAJOR*java:¥<p>When a method in a child class has the same signature as a method in a parent class, it is assumed to be an override. However, that's not the case
when:</p>
<ul>
  <li> the parent class method is <code>static</code> and the child class method is not. </li>
  <li> the arguments or return types of the child method are in different packages than those of the parent method. </li>
  <li> the parent class method is <code>private</code>. </li>
</ul>
<p>Typically, these things are done unintentionally; the private parent class method is overlooked, the <code>static</code> keyword in the parent
declaration is overlooked, or the wrong class is imported in the child. But if the intent is truly for the child class method to be different, then
the method should be renamed to prevent confusion. </p>
<h2>Noncompliant Code Example</h2>
<pre>
// Parent.java
import computer.Pear;
public class Parent {

  public void doSomething(Pear p) {
    //,,,
  }

  public static void doSomethingElse() {
    //...
  }
}

// Child.java
import fruit.Pear;
public class Child extends Parent {

  public void doSomething(Pear p) {  // Noncompliant; this is not an override
    // ...
  }


  public void doSomethingElse() {  // Noncompliant; parent method is static
    //...
  }
}
</pre>
<h2>Compliant Solution</h2>
<pre>
// Parent.java
import computer.Pear;
public class Parent {

  public void doSomething(Pear p) {
    //,,,
  }

  public static void doSomethingElse() {
    //...
  }
}

// Child.java
import computer.Pear;  // import corrected
public class Child extends Parent {

  public void doSomething(Pear p) {  // true override (see import)
    //,,,
  }

  public static void doSomethingElse() {
    //...
  }
}
</pre>ZBUG
ˇ
squid:S2175Ô
squidS21753Inappropriate "Collection" calls should not be made"MAJOR*java:ó<p>A couple <code>Collection</code> methods can be called with arguments of an incorrect type, but doing so is pointless and likely the result of
using the wrong argument. This rule will raise an issue when the type of the argument to <code>List.contains</code> or <code>List.remove</code> is
unrelated to the type used for the list declaration.</p>
<h2>Noncompliant Code Example</h2>
<pre>
List&lt;String&gt; list = new ArrayList&lt;String&gt;();
Integer integer = Integer.valueOf(1);

if (list.contains(integer)) {  // Noncompliant. Always false.
  list.remove(integer); // Noncompliant. list.add(integer) doesn't compile, so this will always return false
}
</pre>
<h2>See</h2>
<ul>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/QwFlAQ">CERT, EXP04-J.</a> - Do not pass arguments to certain Java Collections
  Framework methods that are a different type than the collection parameter type </li>
</ul>ZBUG
π	
squid:S4351©	
squidS4351$"compareTo" should not be overloaded"MAJOR*java:‡<p>When implementing the <code>Comparable&lt;T&gt;.compareTo</code> method, the parameter's type has to match the type used in the
<code>Comparable</code> declaration. When a different type is used this creates an overload instead of an override, which is unlikely to be the
intent.</p>
<p>This rule raises an issue when the parameter of the <code>compareTo</code> method of a class implementing <code>Comparable&lt;T&gt;</code> is not
same as the one used in the <code>Comparable</code> declaration.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public class Foo {
  static class Bar implements Comparable&lt;Bar&gt; {
    public int compareTo(Bar rhs) {
      return -1;
    }
  }

  static class FooBar extends Bar {
    public int compareTo(FooBar rhs) {  // Noncompliant: Parameter should be of type Bar
      return 0;
    }
  }
}
</pre>
<h2>Compliant Solution</h2>
<pre>
public class Foo {
  static class Bar implements Comparable&lt;Bar&gt; {
    public int compareTo(Bar rhs) {
      return -1;
    }
  }

  static class FooBar extends Bar {
    public int compareTo(Bar rhs) {
      return 0;
    }
  }
}
</pre>ZBUG
‡
squid:S4288–
squidS42882Spring components should use constructor injection"MAJOR*java:Ú<p>Spring <code>@Controller</code>, <code>@Service</code>, and <code>@Repository</code> classes are singletons by default, meaning only one instance
of the class is ever instantiated in the application. Typically such a class might have a few <code>static</code> members, such as a logger, but all
non-static members should be managed by Spring and supplied via constructor injection rather than by field injection.</p>
<p>This rule raise an issue when any non-<code>static</code> member of a Spring component has an injection annotation, or if the constructor of Spring
component does not have injection annotation.</p>
<h2>Noncompliant Code Example</h2>
<pre>
@Controller
public class HelloWorld {

  @Autowired
  private String name = null; // Noncompliant

  HelloWorld() {
   // ...
  }

  // ...
}
</pre>
<h2>Compliant Solution</h2>
<pre>
@Controller
public class HelloWorld {

  private String name = null;

  @Autowired
  HelloWorld(String name) {
    this.name = name;
   // ...
  }

  // ...
}
</pre>Z
CODE_SMELL
ﬁ	
squid:S3078Œ	
squidS3078?"volatile" variables should not be used with compound operators"MAJOR*java:Í<p>Using compound operators as well as increments and decrements (and toggling, in the case of <code>boolean</code>s) on primitive fields are not
atomic operations. That is, they don't happen in a single step. For instance, when a <code>volatile</code> primitive field is incremented or
decremented you run the risk of data loss if threads interleave in the steps of the update. Instead, use a guaranteed-atomic class such as
<code>AtomicInteger</code>, or synchronize the access.</p>
<h2>Noncompliant Code Example</h2>
<pre>
private volatile int count = 0;
private volatile boolean boo = false;

public void incrementCount() {
  count++;  // Noncompliant
}

public void toggleBoo(){
  boo = !boo;  // Noncompliant
}
</pre>
<h2>Compliant Solution</h2>
<pre>
private AtomicInteger count = 0;
private boolean boo = false;

public void incrementCount() {
  count.incrementAndGet();
}

public synchronized void toggleBoo() {
  boo = !boo;
}
</pre>
<h2>See</h2>
<ul>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/RIFJAg">CERT, VNA02-J.</a> - Ensure that compound operations on shared variables are
  atomic </li>
</ul>ZBUG
å
squid:S4165¸
squidS4165#Assignments should not be redundant"MAJOR*java:≠<p>The transitive property says that if <code>a == b</code> and <code>b == c</code>, then <code>a == c</code>. In such cases, there's no point in
assigning <code>a</code> to <code>c</code> or vice versa because they're already equivalent. </p>
<p>This rule raises an issue when an assignment is useless because the assigned-to variable already holds the value on all execution paths.</p>
<h2>Noncompliant Code Example</h2>
<pre>
a = b;
c = a;
b = c; // Noncompliant: c and b are already the same
</pre>
<h2>Compliant Solution</h2>
<pre>
a = b;
c = a;
</pre>Z
CODE_SMELL
à
squid:S4042¯
squidS4042+"java.nio.Files#delete" should be preferred"MAJOR*java:°<p>When <code>java.io.File#delete</code> fails, this <code>boolean</code> method simply returns <code>false</code> with no indication of the cause. On
the other hand, when <code>java.nio.Files#delete</code> fails, this <code>void</code> method returns one of a series of exception types to better
indicate the cause of the failure. And since more information is generally better in a debugging situation, <code>java.nio.Files#delete</code> is the
preferred option.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public void cleanUp(Path path) {
  File file = new File(path);
  if (!file.delete()) {  // Noncompliant
    //...
  }
}
</pre>
<h2>Compliant Solution</h2>
<pre>
public void cleanUp(Path path) throws NoSuchFileException, DirectoryNotEmptyException, IOException{
  Files.delete(path);
}
</pre>Z
CODE_SMELL
Œ
squid:S4144æ
squidS41441Methods should not have identical implementations"MAJOR*java:·<p>When two methods have the same implementation, either it was a mistake - something else was intended - or the duplication was intentional, but may
be confusing to maintainers. In the latter case, one implementation should invoke the other. Numerical and string literals are not taken into account.
</p>
<h2>Noncompliant Code Example</h2>
<pre>
private final static String CODE = "bounteous";

public String calculateCode() {
  doTheThing();
  return CODE;
}

public String getName() {  // Noncompliant
  doTheThing();
  return CODE;
}
</pre>
<h2>Compliant Solution</h2>
<pre>
private final static String CODE = "bounteous";

public String getCode() {
  doTheThing();
  return CODE;
}

public String getName() {
  return getCode();
}
</pre>
<h2>Exceptions</h2>
<p>Methods that are not accessors (getters and setters), with fewer than 2 statements are ignored.</p>Z
CODE_SMELL
¨
squid:S4143ú
squidS41431Map values should not be replaced unconditionally"MAJOR*java:∆<p>It is highly suspicious when a value is saved for a key or index and then unconditionally overwritten. Such replacements are likely in error.</p>
<h2>Noncompliant Code Example</h2>
<pre>
letters.put("a", "Apple");
letters.put("a", "Boy");  // Noncompliant

towns[i] = "London";
towns[i] = "Chicago";  // Noncompliant
</pre>ZBUG
•
squid:S4142ï
squidS41422Duplicate values should not be passed as arguments"MAJOR*java:∑<p>There are valid cases for passing a variable multiple times into the same method call, but usually doing so is a mistake, and something else was
intended for one of the arguments.</p>
<h2>Noncompliant Code Example</h2>
<pre>
if (compare(myPoint.x, myPoint.x) != 0) { // Noncompliant
&nbsp;&nbsp;//...
}

if (compare(getNextValue(), getNextValue()) != 0) { // Noncompliant
&nbsp;&nbsp;// ...
}
</pre>
<h2>Compliant Solution</h2>
<pre>
if (compare(myPoint.x, myPoint.y) != 0) {
&nbsp;&nbsp;//...
}

Object v1 = getNextValue();
Object v2 = getNextValue();
if (compare(v1, v2) != 0) {
&nbsp;&nbsp;// ...
}
</pre>
<h2>Deprecated</h2>
<p>This rule is deprecated, and will eventually be removed.</p>Z
CODE_SMELL
ï
squid:S3067Ö
squidS30671"getClass" should not be used for synchronization"MAJOR*java:Ø<p><code>getClass</code> should not be used for synchronization in non-<code>final</code> classes because child classes will synchronize on a
different object than the parent or each other, allowing multiple threads into the code block at once, despite the <code>synchronized</code>
keyword.</p>
<p>Instead, hard code the name of the class on which to synchronize or make the class <code>final</code>.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public class MyClass {
  public void doSomethingSynchronized(){
    synchronized (this.getClass()) {  // Noncompliant
      // ...
    }
  }
</pre>
<h2>Compliant Solution</h2>
<pre>
public class MyClass {
  public void doSomethingSynchronized(){
    synchronized (MyClass.class) {
      // ...
    }
  }
</pre>
<h2>See</h2>
<ul>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/bwCaAg">CERT, LCK02-J.</a> - Do not synchronize on the class object returned by
  getClass() </li>
</ul>ZBUG
∆
squid:S3065∂
squidS3065GMin and max used in combination should not always return the same value"MAJOR*java: <p>When using <code>Math.min()</code> and <code>Math.max()</code> together for bounds checking, it's important to feed the right operands to each
method. <code>Math.min()</code> should be used with the <strong>upper</strong> end of the range being checked, and <code>Math.max()</code> should be
used with the <strong>lower</strong> end of the range. Get it backwards, and the result will always be the same end of the range.</p>
<h2>Noncompliant Code Example</h2>
<pre>
  private static final int UPPER = 20;
  private static final int LOWER = 0;

  public int doRangeCheck(int num) {    // Let's say num = 12
    int result = Math.min(LOWER, num);  // result = 0
    return Math.max(UPPER, result);     // Noncompliant; result is now 20: even though 12 was in the range
  }
</pre>
<h2>Compliant Solution</h2>
<p>Swapping method <code>min()</code> and <code>max()</code> invocations without changing parameters.</p>
<pre>
  private static final int UPPER = 20;
  private static final int LOWER = 0;

  public int doRangeCheck(int num) {    // Let's say num = 12
    int result = Math.max(LOWER, num);  // result = 12
    return Math.min(UPPER, result);     // Compliant; result is still 12
  }
</pre>
<p>or swapping bounds <code>UPPER</code> and <code>LOWER</code> used as parameters without changing the invoked methods.</p>
<pre>
  private static final int UPPER = 20;
  private static final int LOWER = 0;

  public int doRangeCheck(int num) {    // Let's say num = 12
    int result = Math.min(UPPER, num);  // result = 12
    return Math.max(LOWER, result);     // Compliant; result is still 12
  }
</pre>ZBUG
˘	
squid:S4274È	
squidS4274EAsserts should not be used to check the parameters of a public method"MAJOR*java:¯<p>An <code>assert</code> is inappropriate for parameter validation because assertions can be disabled at runtime in the JVM, meaning that a bad
operational setting would completely eliminate the intended checks. Further, <code>assert</code>s that fail throw <code>AssertionError</code>s, rather
than throwing some type of <code>Exception</code>. Throwing <code>Error</code>s is completely outside of the normal realm of expected
<code>catch</code>/<code>throw</code> behavior in normal programs.</p>
<p>This rule raises an issue when a <code>public</code> method uses one or more of its parameters with <code>assert</code>s.</p>
<h2>Noncompliant Code Example</h2>
<pre>
 public void setPrice(int price) {
  assert price &gt;= 0 &amp;&amp; price &lt;= MAX_PRICE;
  // Set the price
 }
</pre>
<h2>Compliant Solution</h2>
<pre>
 public void setPrice(int price) {
  if (price &lt; 0 || price &gt; MAX_PRICE) {
    throw new IllegalArgumentException("Invalid price: " + price);
  }
  // Set the price
 }
</pre>
<h2>See</h2>
<p><a href="https://docs.oracle.com/javase/7/docs/technotes/guides/language/assert.html">Programming With Assertions</a></p>Z
CODE_SMELL
æ
	xml:S1134∞
xmlS1134Track uses of "FIXME" tags"MAJOR*xml:Ì<p><code>FIXME</code> tags are commonly used to mark places where a bug is suspected, but which the developer wants to deal with later.</p>
<p>Sometimes the developer will not have the time or will simply forget to get back to that tag.</p>
<p>This rule is meant to track those tags and to ensure that they do not go unnoticed.</p>
<h2>Noncompliant Code Example</h2>
<pre>
&lt;!-- FIXME we should update version to 3.8.1 --&gt;
&lt;dependency&gt;
  &lt;groupId&gt;org.apache.commons&lt;/groupId&gt;
  &lt;artifactId&gt;commons-lang3&lt;/artifactId&gt;
  &lt;version&gt;3.6&lt;/version&gt;
&lt;/dependency&gt;
</pre>
<h2>See</h2>
<ul>
  <li> <a href="http://cwe.mitre.org/data/definitions/546.html">MITRE, CWE-546</a> - Suspicious Comment </li>
</ul>Z
CODE_SMELL
≤
xml:S125•
xmlS125,Sections of code should not be commented out"MAJOR*xml:—<p>Programmers should not comment out code as it bloats programs and reduces readability.</p>
<p>Unused code should be deleted and can be retrieved from source control history if required.</p>
<h2>See</h2>
<ul>
  <li> MISRA C:2004, 2.4 - Sections of code should not be "commented out". </li>
  <li> MISRA C++:2008, 2-7-2 - Sections of code shall not be "commented out" using C-style comments. </li>
  <li> MISRA C++:2008, 2-7-3 - Sections of code should not be "commented out" using C++ comments. </li>
  <li> MISRA C:2012, Dir. 4.4 - Sections of code should not be "commented out" </li>
</ul>Z
CODE_SMELL
ƒ
xml:S103∑
xmlS103Lines should not be too long"MAJOR*xml:t<p>Having to scroll horizontally makes it harder to get a quick overview and understanding of any piece of code.</p>Z
CODE_SMELL
À
xml:XPathCheck∏
xml
XPathCheckTrack breaches of an XPath rule"MAJOR*xml:È<p>This rule allows the definition of custom rules using XPath expressions.</p>
<p>Issues are created depending on the return value of the XPath expression. If the XPath expression returns:</p>
<ul>
  <li> a single or list of AST nodes, then a line issue with the given message is created for each node </li>
  <li> a boolean, then a file issue with the given message is created only if the boolean is true </li>
  <li> anything else, no issue is created </li>
</ul>
<p>Here is an example of an XPath expression to log an issue on each 'td' tag using the 'nowrap' deprecated attribute: </p>
<pre>
//td[@nowrap]
</pre>@Z
CODE_SMELL
Ó
xml:NewlineCheckŸ
xmlNewlineCheck#Newlines should follow each element"MAJOR*xml:Ü<p>Each element should be on a line to itself.</p>
<h2>Noncompliant Code Example</h2>
<pre>
&lt;parent&gt;&lt;child /&gt;&lt;/parent&gt;  &lt;!-- Noncompliant --&gt;
</pre>
<h2>Compliant Solution</h2>
<pre>
&lt;parent&gt;
  &lt;child /&gt;
&lt;/parent&gt;
</pre>Z
CODE_SMELL
Ø
	xml:S2260°
xmlS2260XML parser failure"MAJOR*xml:Ê<p>When the XML parser fails, it is possible to record the failure as a violation on the file. This way, not only it is possible to track the number
of files that do not parse but also to easily find out why they do not parse.</p>Z
CODE_SMELL
≤
common-java:FailedUnitTestsí
common-javaFailedUnitTests!Failed unit tests should be fixed"MAJOR*java:ºTest failures or errors generally indicate that regressions have been introduced. Those tests should be handled as soon as possible to reduce the cost to fix the corresponding regressions.ZBUG
Û
common-java:DuplicatedBlocks“
common-javaDuplicatedBlocks2Source files should not have any duplicated blocks"MAJOR*java:dAn issue is created on a file as soon as there is at least one block of duplicated code on this fileZ
CODE_SMELL
è
common-java:SkippedUnitTestsÓ
common-javaSkippedUnitTests4Skipped unit tests should be either removed or fixed"MAJOR*java:~Skipped unit tests are considered as dead code. Either they should be activated again (and updated) or they should be removed.Z
CODE_SMELL
ù
&common-java:InsufficientCommentDensityÚ
common-javaInsufficientCommentDensity>Source files should have a sufficient density of comment lines"MAJOR*java:ÌAn issue is created on a file as soon as the density of comment lines on this file is less than the required threshold. The number of comment lines to be written in order to reach the required threshold is provided by each issue message.Z
CODE_SMELL
›
$common-java:InsufficientLineCoverage¥
common-javaInsufficientLineCoverage.Lines should have sufficient coverage by tests"MAJOR*java:¡An issue is created on a file as soon as the line coverage on this file is less than the required threshold. It gives the number of lines to be covered in order to reach the required threshold.Z
CODE_SMELL
È
&common-java:InsufficientBranchCoverageæ
common-javaInsufficientBranchCoverage1Branches should have sufficient coverage by tests"MAJOR*java:∆An issue is created on a file as soon as the branch coverage on this file is less than the required threshold. It gives the number of branches to be covered in order to reach the required threshold.Z
CODE_SMELL
Ä
squid:S00115Ô
squidS001155Constant names should comply with a naming convention"CRITICAL*java2S115:Ñ<p>Shared coding conventions allow teams to collaborate efficiently. This rule checks that all constant names match a provided regular expression.</p>
<h2>Noncompliant Code Example</h2>
<p>With the default regular expression <code>^[A-Z][A-Z0-9]*(_[A-Z0-9]+)*$</code>:</p>
<pre>
public class MyClass {
  public static final int first = 1;
}

public enum MyEnum {
  first;
}
</pre>
<h2>Compliant Solution</h2>
<pre>
public class MyClass {
  public static final int FIRST = 1;
}

public enum MyEnum {
  FIRST;
}
</pre>Z
CODE_SMELL
∑
squid:S4524ß
squidS4524 "default" clauses should be last"CRITICAL*java:ÿ
<p><code>switch</code> can contain a <code>default</code> clause for various reasons: to handle unexpected values, to show that all the cases were
properly considered.</p>
<p>For readability purpose, to help a developer to quickly find the default behavior of a <code>switch</code> statement, it is recommended to put the
<code>default</code> clause at the end of the <code>switch</code> statement. This rule raises an issue if the <code>default</code> clause is not the
last one of the <code>switch</code>'s cases.</p>
<h2>Noncompliant Code Example</h2>
<pre>
switch (param) {
  case 0:
    doSomething();
    break;
  default: // default clause should be the last one
    error();
    break;
  case 1:
    doSomethingElse();
    break;
}
</pre>
<h2>Compliant Solution</h2>
<pre>
switch (param) {
  case 0:
    doSomething();
    break;
  case 1:
    doSomethingElse();
    break;
  default:
    error();
    break;
}
</pre>
<h2>See</h2>
<ul>
  <li> MISRA C:2004, 15.3 - The final clause of a switch statement shall be the default clause </li>
  <li> MISRA C++:2008, 6-4-6 - The final clause of a switch statement shall be the default-clause </li>
  <li> MISRA C:2012, 16.4 - Every switch statement shall have a default label </li>
  <li> MISRA C:2012, 16.5 - A default label shall appear as either the first or the last switch label of a switch statement </li>
</ul>Z
CODE_SMELL
ö
squid:S2222ä
squidS2222Locks should be released"CRITICAL*java: <p>If a lock is acquired and released within a method, then it must be released along all execution paths of that method.</p>
<p>Failing to do so will expose the conditional locking logic to the method's callers and hence be deadlock-prone.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public class MyClass {
  private Lock lock = new Lock();

  public void doSomething() {
    lock.lock(); // Noncompliant
    if (isInitialized()) {
      // ...
      lock.unlock();
    }
  }
}
</pre>
<h2>Compliant Solution</h2>
<pre>
public class MyClass {
  private Lock lock = new Lock();

  public void doSomething() {
    if (isInitialized()) {
      lock.lock();
      // ...
      lock.unlock();
    }
  }
}
</pre>
<h2>See</h2>
<ul>
  <li> <a href="https://cwe.mitre.org/data/definitions/459.html">MITRE, CWE-459</a> - Incomplete Cleanup </li>
</ul>ZBUG
ƒ
squid:S00121≥
squidS00121*Control structures should use curly braces"CRITICAL*java2S121:”<p>While not technically incorrect, the omission of curly braces can be misleading, and may lead to the introduction of errors during maintenance.</p>
<h2>Noncompliant Code Example</h2>
<pre>
if (condition)  // Noncompliant
  executeSomething();
</pre>
<h2>Compliant Solution</h2>
<pre>
if (condition) {
  executeSomething();
}
</pre>
<h2>See</h2>
<ul>
  <li> MISRA C:2004, 14.8 - The statement forming the body of a switch, while, do ... while or for statement shall be a compound statement </li>
  <li> MISRA C:2004, 14.9 - An if (expression) construct shall be followed by a compound statement. The else keyword shall be followed by either a
  compound statement, or another if statement </li>
  <li> MISRA C++:2008, 6-3-1 - The statement forming the body of a switch, while, do ... while or for statement shall be a compound statement </li>
  <li> MISRA C++:2008, 6-4-1 - An if (condition) construct shall be followed by a compound statement. The else keyword shall be followed by either a
  compound statement, or another if statement </li>
  <li> MISRA C:2012, 15.6 - The body of an iteration-statement or a selection-statement shall be a compound-statement </li>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/1QGMAg">CERT, EXP19-C.</a> - Use braces for the body of an if, for, or while statement
  </li>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/3wHEAw">CERT, EXP52-J.</a> - Use braces for the body of an if, for, or while statement
  </li>
</ul>Z
CODE_SMELL
”
squid:S2235√
squidS22351IllegalMonitorStateException should not be caught"CRITICAL*java:„<p>According to Oracle Javadoc:</p>
<blockquote>
  <p><code>IllegalMonitorStateException</code> is thrown when a thread has attempted to wait on an object's monitor or to notify other threads waiting
  on an object's monitor without owning the specified monitor.</p>
</blockquote>
<p>In other words, this exception can be thrown only in case of bad design because <code>Object.wait(...)</code>, <code>Object.notify()</code> and
<code>Object.notifyAll()</code> methods should never be called on an object whose monitor is not held. </p>
<h2>Noncompliant Code Example</h2>
<pre>
public void doSomething(){
  ...
  try {
    ...
    anObject.notify();
    ...
  } catch(IllegalMonitorStateException e) {
    ...
  }
}
</pre>
<h2>Compliant Solution</h2>
<pre>
public void doSomething(){
  ...
  synchronized(anObject) {
    ...
    anObject.notify();
    ...
  }
}
</pre>Z
CODE_SMELL
È
squid:S1143Ÿ
squidS11434Jump statements should not occur in "finally" blocks"CRITICAL*java:˝<p>Using <code>return</code>, <code>break</code>, <code>throw</code>, and so on from a <code>finally</code> block suppresses the propagation of any
unhandled <code>Throwable</code> which was thrown in the <code>try</code> or <code>catch</code> block.</p>
<p>This rule raises an issue when a jump statement (<code>break</code>, <code>continue</code>, <code>return</code>, <code>throw</code>, and
<code>goto</code>) would force control flow to leave a <code>finally</code> block. </p>
<h2>Noncompliant Code Example</h2>
<pre>
public static void main(String[] args) {
  try {
    doSomethingWhichThrowsException();
    System.out.println("OK");   // incorrect "OK" message is printed
  } catch (RuntimeException e) {
    System.out.println("ERROR");  // this message is not shown
  }
}

public static void doSomethingWhichThrowsException() {
  try {
    throw new RuntimeException();
  } finally {
    for (int i = 0; i &lt; 10; i ++) {
      //...
      if (q == i) {
        break; // ignored
      }
    }

    /* ... */
    return;      // Noncompliant - prevents the RuntimeException from being propagated
  }
}
</pre>
<h2>Compliant Solution</h2>
<pre>
public static void main(String[] args) {
  try {
    doSomethingWhichThrowsException();
    System.out.println("OK");
  } catch (RuntimeException e) {
    System.out.println("ERROR");  // "ERROR" is printed as expected
  }
}

public static void doSomethingWhichThrowsException() {
  try {
    throw new RuntimeException();
  } finally {
    for (int i = 0; i &lt; 10; i ++) {
      //...
      if (q == i) {
        break; // ignored
      }
    }

    /* ... */
  }
}
</pre>
<h2>See</h2>
<ul>
  <li> <a href="http://cwe.mitre.org/data/definitions/584.html">MITRE, CWE-584</a> - Return Inside Finally Block </li>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/mIEbAQ">CERT, ERR04-J.</a> - Do not complete abruptly from a finally block </li>
</ul>ZBUG
Ã
squid:S2119º
squidS2119!"Random" objects should be reused"CRITICAL*java:Û
<p>Creating a new <code>Random</code> object each time a random value is needed is inefficient and may produce numbers which are not random depending
on the JDK. For better efficiency and randomness, create a single <code>Random</code>, then store, and reuse it.</p>
<p>The <code>Random()</code> constructor tries to set the seed with a distinct value every time. However there is no guarantee that the seed will be
random or even uniformly distributed. Some JDK will use the current time as seed, which makes the generated numbers not random at all.</p>
<p>This rule finds cases where a new <code>Random</code> is created each time a method is invoked and assigned to a local random variable.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public void doSomethingCommon() {
  Random rand = new Random();  // Noncompliant; new instance created with each invocation
  int rValue = rand.nextInt();
  //...
</pre>
<h2>Compliant Solution</h2>
<pre>
private Random rand = SecureRandom.getInstanceStrong();  // SecureRandom is preferred to Random

public void doSomethingCommon() {
  int rValue = this.rand.nextInt();
  //...
</pre>
<h2>Exceptions</h2>
<p>A class which uses a <code>Random</code> in its constructor or in a static <code>main</code> function and nowhere else will be ignored by this
rule.</p>
<h2>See</h2>
<ul>
  <li> OWASP Top 10 2017 Category A6 - Security Misconfiguration </li>
</ul>ZBUG
À
squid:S3329ª
squidS33296Cypher Block Chaining IV's should be random and unique"CRITICAL*java:”<p>In encryption, when Cipher Block Chaining (CBC) is used, the Initialization Vector (IV) must be random and unpredictable. Otherwise, the encrypted
value is vulnerable to crypto-analysis attacks such as the "Chosen-Plaintext Attack".</p>
<p>An IV value should be associated to one, and only one encryption cycle, because the IV's purpose is to ensure that the same plaintext encrypted
twice will yield two different ciphertexts.</p>
<p>To that end, IV's should be:</p>
<ul>
  <li> random </li>
  <li> unpredictable </li>
  <li> publishable (IV's frequently are published) </li>
  <li> authenticated, along with the ciphertext, with a Message Authentication Code (MAC) </li>
</ul>
<p>This rule raises an issue when the IV is:</p>
<ul>
  <li> hard-coded </li>
  <li> created using <code>java.util.Random</code> rather than <code>java.security.SecureRandom</code>. </li>
</ul>
<h2>Noncompliant Code Example</h2>
<pre>
public class MyCbcClass {

  public String applyCBC(String strKey, String plainText) {
    byte[] bytesIV = "7cVgr5cbdCZVw5WY".getBytes("UTF-8");

    /* KEY + IV setting */
    IvParameterSpec iv = new IvParameterSpec(bytesIV);
    SecretKeySpec skeySpec = new SecretKeySpec(strKey.getBytes("UTF-8"), "AES");

    /* Ciphering */
    Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5PADDING");
    cipher.init(Cipher.ENCRYPT_MODE, skeySpec, iv);  // Noncompliant because IV hard coded and cannot vary with each ciphering round
    byte[] encryptedBytes = cipher.doFinal(plainText.getBytes("UTF-8"));
    return DatatypeConverter.printBase64Binary(bytesIV) // IV is typically published
            + ";" + DatatypeConverter.printBase64Binary(encryptedBytes);
  }
}
</pre>
<h2>Compliant Solution</h2>
<pre>
public class MyCbcClass {

  SecureRandom random = new SecureRandom();

  public String applyCBC(String strKey, String plainText) {
    byte[] bytesIV = new byte[16];
    random.nextBytes(bytesIV);

    /* KEY + IV setting */
    IvParameterSpec iv = new IvParameterSpec(bytesIV);
    SecretKeySpec skeySpec = new SecretKeySpec(strKey.getBytes("UTF-8"), "AES");

    /* Ciphering */
    Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5PADDING");
    cipher.init(Cipher.ENCRYPT_MODE, skeySpec, iv);
    byte[] encryptedBytes = cipher.doFinal(plainText.getBytes("UTF-8"));
    return DatatypeConverter.printBase64Binary(bytesIV)
            + ";" + DatatypeConverter.printBase64Binary(encryptedBytes);
  }
}
</pre>
<h2>See</h2>
<ul>
  <li> <a href="http://cwe.mitre.org/data/definitions/330">MITRE, CWE-330</a> - Use of Insufficiently Random Values </li>
  <li> OWASP Top 10 2017 Category A6 - Security Misconfiguration </li>
  <li> Derived from FindSecBugs rule <a href="https://find-sec-bugs.github.io/bugs.htm#STATIC_IV">STATIC_IV</a> </li>
</ul>ZVULNERABILITY
§
squid:S3776î
squidS37766Cognitive Complexity of methods should not be too high"CRITICAL*java:Ø<p>Cognitive Complexity is a measure of how hard the control flow of a method is to understand. Methods with high Cognitive Complexity will be
difficult to maintain.</p>
<h2>See</h2>
<ul>
  <li> <a href="http://redirect.sonarsource.com/doc/cognitive-complexity.html">Cognitive Complexity</a> </li>
</ul>Z
CODE_SMELL
ä	
squid:S1598˙
squidS15986Package declaration should match source file directory"CRITICAL*java:ï<p>By convention, a Java class' physical location (source directories) and its logical representation (packages) should be kept in sync. Thus a Java
file located at <code>"src/org/bar/Foo.java"</code> should have a package of <code>"org.bar"</code>. </p>
<p>Unfortunately, this convention is not enforced by Java compilers, and nothing prevents a developer from making the "Foo.java" class part of the
"com.apple" package, which could degrade the maintainability of both the class and its application.</p>
<p>Similarly, source placed in a folder with dots in its name instead of having the equivalent folder structure will compile but cause problems at run
time. For instance, code with a package declaration of <code>org.foo.bar</code> that is placed in <code>org/foo.bar</code> will compile, but the
classloader will always search for the class into the folder based on package structure, and will consequently expect sources to be in
<code>org/foo/bar</code> folder. <code>foo.bar</code> is therefore not a proper folder name for sources.</p>Z
CODE_SMELL
•
squid:S2444ï
squidS2444?Lazy initialization of "static" fields should be "synchronized""CRITICAL*java:ß<p>In a multi-threaded situation, un-<code>synchronized</code> lazy initialization of static fields could mean that a second thread has access to a
half-initialized object while the first thread is still creating it. Allowing such access could cause serious bugs. Instead. the initialization block
should be <code>synchronized</code>.</p>
<p>Similarly, updates of such fields should also be <code>synchronized</code>.</p>
<p>This rule raises an issue whenever a lazy static initialization is done on a class with at least one <code>synchronized</code> method, indicating
intended usage in multi-threaded applications.</p>
<h2>Noncompliant Code Example</h2>
<pre>
private static Properties fPreferences = null;

private static Properties getPreferences() {
        if (fPreferences == null) {
            fPreferences = new Properties(); // Noncompliant
            fPreferences.put("loading", "true");
            fPreferences.put("filterstack", "true");
            readPreferences();
        }
        return fPreferences;
    }
}
</pre>
<h2>Compliant Solution</h2>
<pre>
private static Properties fPreferences = null;

private static synchronized Properties getPreferences() {
        if (fPreferences == null) {
            fPreferences = new Properties();
            fPreferences.put("loading", "true");
            fPreferences.put("filterstack", "true");
            readPreferences();
        }
        return fPreferences;
    }
}
</pre>Z
CODE_SMELL
“
squid:S2208¬
squidS2208#Wildcard imports should not be used"CRITICAL*java:<p>Blindly importing all the classes in a package clutters the class namespace and could lead to conflicts between classes in different packages with
the same name. On the other hand, specifically listing the necessary classes avoids that problem and makes clear which versions were wanted.</p>
<h2>Noncompliant Code Example</h2>
<pre>
import java.sql.*; // Noncompliant
import java.util.*; // Noncompliant

private Date date; // Date class exists in java.sql and java.util. Which one is this?
</pre>
<h2>Compliant Solution</h2>
<pre>
import java.sql.Date;
import java.util.List;
import java.util.ArrayList;

private Date date;
</pre>
<h2>Exceptions</h2>
<p>Static imports are ignored by this rule. E.G.</p>
<pre>
import static java.lang.Math.*;
</pre>Z
CODE_SMELL
ª
squid:S2447´
squidS24473Null should not be returned from a "Boolean" method"CRITICAL*java:…<p>While <code>null</code> is technically a valid <code>Boolean</code> value, that fact, and the distinction between <code>Boolean</code> and
<code>boolean</code> is easy to forget. So returning <code>null</code> from a <code>Boolean</code> method is likely to cause problems with callers'
code.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public Boolean isUsable() {
  // ...
  return null;  // Noncompliant
}
</pre>
<h2>See</h2>
<ul>
  <li> <a href="http://cwe.mitre.org/data/definitions/476.html">MITRE CWE-476</a> - NULL Pointer Dereference </li>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/ZwDOAQ">CERT, EXP01-J.</a> - Do not use a null in a case where an object is required
  </li>
</ul>Z
CODE_SMELL
¬
squid:S3422≤
squidS3422+Dependencies should not have "system" scope"CRITICAL*java:ﬂ<p><code>system</code> dependencies are sought at a specific, specified path. This drastically reduces portability because if you deploy your artifact
in an environment that's not configured just like yours is, your code won't work. </p>
<h2>Noncompliant Code Example</h2>
<pre>
&lt;dependency&gt;
  &lt;groupId&gt;javax.sql&lt;/groupId&gt;
  &lt;artifactId&gt;jdbc-stdext&lt;/artifactId&gt;
  &lt;version&gt;2.0&lt;/version&gt;
  &lt;scope&gt;system&lt;/scope&gt;  &lt;!-- Noncompliant --&gt;
  &lt;systemPath&gt;/usr/bin/lib/rt.jar&lt;/systemPath&gt;  &lt;!-- remove this --&gt;
&lt;/dependency&gt;
</pre>ZBUG
ﬂ

squid:S4635œ

squidS4635SString offset-based methods should be preferred for finding substrings from offsets"CRITICAL*java:Õ	<p>Looking for a given substring starting from a specified offset can be achieved by such code: <code>str.substring(beginIndex).indexOf(char1)</code>.
This works well, but it creates a new <code>String</code> for each call to the <code>substring</code> method. When this is done in a loop, a lot of
<code>Strings</code> are created for nothing, which can lead to performance problems if <code>str</code> is large.</p>
<p>To avoid performance problems, <code>String.substring(beginIndex)</code> should not be chained with the following methods:</p>
<p>- <code>indexOf(int ch)</code></p>
<p>- <code>indexOf(String str)</code></p>
<p>- <code>lastIndexOf(int ch)</code></p>
<p>- <code>lastIndexOf(String str)</code></p>
<p>- <code>startsWith(String prefix)</code></p>
<p>For each of these methods, another method with an additional parameter is available to specify an offset.</p>
<p>Using these methods gives the same result while avoiding the creation of additional <code>String</code> instances.</p>
<h2>Noncompliant Code Example</h2>
<pre>
str.substring(beginIndex).indexOf(char1); // Noncompliant; a new String is going to be created by "substring"
</pre>
<h2>Compliant Solution</h2>
<pre>
str.indexOf(char1, beginIndex);
</pre>Z
CODE_SMELL
¬
squid:S2696≤
squidS26964Instance methods should not write to "static" fields"CRITICAL*java:œ<p>Correctly updating a <code>static</code> field from a non-static method is tricky to get right and could easily lead to bugs if there are multiple
class instances and/or multiple threads in play. Ideally, <code>static</code> fields are only updated from <code>synchronized static</code>
methods.</p>
<p>This rule raises an issue each time a <code>static</code> field is updated from a non-static method.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public class MyClass {

  private static int count = 0;

  public void doSomething() {
    //...
    count++;  // Noncompliant
  }
}
</pre>Z
CODE_SMELL
¡

squid:S2692±

squidS26923"indexOf" checks should not be for positive numbers"CRITICAL*java:œ	<p>Most checks against an <code>indexOf</code> value compare it with -1 because 0 is a valid index. Any checks which look for values &gt;0 ignore the
first element, which is likely a bug. If the intent is merely to check inclusion of a value in a <code>String</code> or a <code>List</code>, consider
using the <code>contains</code> method instead.</p>
<p>This rule raises an issue when an <code>indexOf</code> value retrieved either from a <code>String</code> or a <code>List</code> is tested against
<code>&gt;0</code>.</p>
<h2>Noncompliant Code Example</h2>
<pre>
String color = "blue";
String name = "ishmael";

List&lt;String&gt; strings = new ArrayList&lt;String&gt; ();
strings.add(color);
strings.add(name);

if (strings.indexOf(color) &gt; 0) {  // Noncompliant
  // ...
}
if (name.indexOf("ish") &gt; 0) { // Noncompliant
  // ...
}
if (name.indexOf("ae") &gt; 0) { // Noncompliant
  // ...
}
</pre>
<h2>Compliant Solution</h2>
<pre>
String color = "blue";
String name = "ishmael";

List&lt;String&gt; strings = new ArrayList&lt;String&gt; ();
strings.add(color);
strings.add(name);

if (strings.indexOf(color) &gt; -1) {
  // ...
}
if (name.indexOf("ish") &gt;= 0) {
  // ...
}
if (name.contains("ae") {
  // ...
}
</pre>Z
CODE_SMELL
◊

squid:S3305«

squidS3305CFactory method injection should be used in "@Configuration" classes"CRITICAL*java:’	<p>When <code>@Autowired</code> is used, dependencies need to be resolved when the class is instantiated, which may cause early initialization of
beans or lead the context to look in places it shouldn't to find the bean. To avoid this tricky issue and optimize the way the context loads,
dependencies should be requested as late as possible. That means using parameter injection instead of field injection for dependencies that are only
used in a single <code>@Bean</code> method.</p>
<h2>Noncompliant Code Example</h2>
<pre>
@Configuration
public class ‚ÄãFooConfiguration {

  @Autowired private ‚ÄãDataSource dataSource‚ÄãÕæ  // Noncompliant

  @Bean
  public ‚ÄãMyService myService() {
    return new ‚ÄãMyService(this‚Äã.dataSource‚Äã)Õæ
  }
}
</pre>
<h2>Compliant Solution</h2>
<pre>
@Configuration
public class ‚ÄãFooConfiguration {

 @Bean
  public ‚ÄãMyService myService(DataSource dataSource) {
    return new ‚ÄãMyService(dataSource)Õæ
  }
}
</pre>
<h2>Exceptions</h2>
<p>Fields used in methods that are called directly by other methods in the application (as opposed to being invoked automatically by the Spring
framework) are ignored by this rule so that direct callers don't have to provide the dependencies themselves.</p>Z
CODE_SMELL
Å
squid:S4684Ò
squidS4684PPersistent entities should not be used as arguments of "@RequestMapping" methods"CRITICAL*java:Ô<p>On one side, Spring MVC automatically bind request parameters to beans declared as arguments of methods annotated with
<code>@RequestMapping</code>. Because of this automatic binding feature, it's possible to feed some unexpected fields on the arguments of the
<code>@RequestMapping</code> annotated methods. </p>
<p>On the other end, persistent objects (<code>@Entity</code> or <code>@Document</code>) are linked to the underlying database and updated
automatically by a persistence framework, such as Hibernate, JPA or Spring Data MongoDB.</p>
<p>These two facts combined together can lead to malicious attack: if a persistent object is used as an argument of a method annotated with
<code>@RequestMapping</code>, it's possible from a specially crafted user input, to change the content of unexpected fields into the database.</p>
<p>For this reason, using <code>@Entity</code> or <code>@Document</code> objects as arguments of methods annotated with <code>@RequestMapping</code>
should be avoided.</p>
<p>In addition to <code>@RequestMapping</code>, this rule also considers the annotations introduced in Spring Framework 4.3: <code>@GetMapping</code>,
<code>@PostMapping</code>, <code>@PutMapping</code>, <code>@DeleteMapping</code>, <code>@PatchMapping</code>.</p>
<h2>Noncompliant Code Example</h2>
<pre>
import javax.persistence.Entity;

@Entity
public class Wish {
  Long productId;
  Long quantity;
  Client client;
}

@Entity
public class Client {
  String clientId;
  String name;
  String password;
}

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class WishListController {

  @PostMapping(path = "/saveForLater")
  public String saveForLater(Wish wish) {
    session.save(wish);
  }

  @RequestMapping(path = "/saveForLater", method = RequestMethod.POST)
  public String saveForLater(Wish wish) {
    session.save(wish);
  }
}
</pre>
<h2>Compliant Solution</h2>
<pre>
public class WishDTO {
  Long productId;
  Long quantity;
  Long clientId;
}

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PurchaseOrderController {

  @PostMapping(path = "/saveForLater")
  public String saveForLater(WishDTO wish) {
    Wish persistentWish = new Wish();
    // do the mapping between "wish" and "persistentWish"
    [...]
    session.save(persistentWish);
  }

  @RequestMapping(path = "/saveForLater", method = RequestMethod.POST)
  public String saveForLater(WishDTO wish) {
    Wish persistentWish = new Wish();
    // do the mapping between "wish" and "persistentWish"
    [...]
    session.save(persistentWish);
  }
}
</pre>
<h2>See</h2>
<ul>
  <li> <a href="http://cwe.mitre.org/data/definitions/915.html">MITRE, CWE-915</a> - Improperly Controlled Modification of Dynamically-Determined
  Object Attributes </li>
  <li> OWASP Top 10 2017 Category A5 - Broken Access Control </li>
  <li> <a href="https://o2platform.files.wordpress.com/2011/07/ounce_springframework_vulnerabilities.pdf">Two Security Vulnerabilities in the Spring
  Framework‚Äôs MVC by Ryan Berg and Dinis Cruz</a> </li>
</ul>ZVULNERABILITY
∑
squid:S3355ß
squidS3355Defined filters should be used"CRITICAL*java:◊<p>Every filter defined in <code>web.xml</code> file should be used in a <code>&lt;filter-mapping&gt;</code> element. Otherwise such filters are not
invoked.</p>
<h2>Noncompliant Code Example</h2>
<pre>
  &lt;filter&gt;
     &lt;filter-name&gt;DefinedNotUsed&lt;/filter-name&gt;
     &lt;filter-class&gt;com.myco.servlet.ValidationFilter&lt;/filter-class&gt;
  &lt;/filter&gt;
</pre>
<h2>Compliant Solution</h2>
<pre>
  &lt;filter&gt;
     &lt;filter-name&gt;ValidationFilter&lt;/filter-name&gt;
     &lt;filter-class&gt;com.myco.servlet.ValidationFilter&lt;/filter-class&gt;
  &lt;/filter&gt;

  &lt;filter-mapping&gt;
     &lt;filter-name&gt;ValidationFilter&lt;/filter-name&gt;
     &lt;url-pattern&gt;/*&lt;/url-pattern&gt;
  &lt;/filter-mapping&gt;
</pre>
<h2>See</h2>
<ul>
  <li> OWASP Top 10 2017 Category A6 - Security Misconfiguration </li>
</ul>ZVULNERABILITY
˝
squid:S1175Ì
squidS1175FThe signature of "finalize()" should match that of "Object.finalize()""CRITICAL*java:ˇ<p><code>Object.finalize()</code> is called by the Garbage Collector at some point after the object becomes unreferenced.</p>
<p>In general, overloading <code>Object.finalize()</code> is a bad idea because:</p>
<ul>
  <li> The overload may not be called by the Garbage Collector. </li>
  <li> Users are not expected to call <code>Object.finalize()</code> and will get confused. </li>
</ul>
<p>But beyond that it's a terrible idea to name a method "finalize" if it doesn't actually override <code>Object.finalize()</code>.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public int finalize(int someParameter) {        // Noncompliant
  /* ... */
}
</pre>
<h2>Compliant Solution</h2>
<pre>
public int someBetterName(int someParameter) {  // Compliant
  /* ... */
}
</pre>ZBUG
í
squid:S1174Ç
squidS1174K"Object.finalize()" should remain protected (versus public) when overriding"CRITICAL*java:à<p>The contract of the <code>Object.finalize()</code> method is clear: only the Garbage Collector is supposed to call this method.</p>
<p>Making this method public is misleading, because it implies that any caller can use it.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public class MyClass {

  @Override
  public void finalize() {    // Noncompliant
    /* ... */
  }
}
</pre>
<h2>See</h2>
<ul>
  <li> <a href="http://cwe.mitre.org/data/definitions/583.html">MITRE, CWE-583</a> - finalize() Method Declared Public </li>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/H4cbAQ">CERT, MET12-J.</a> - Do not use finalizers </li>
</ul>Z
CODE_SMELL
ö
squid:ClassCyclomaticComplexityˆ
squidClassCyclomaticComplexity!Classes should not be too complex"CRITICAL*java2S1311:ã<p>The Cyclomatic Complexity is measured by the number of <code>&amp;&amp;</code> and <code>||</code> operators and <code>if</code>,
<code>while</code>, <code>do</code>, <code>for</code>, <code>?:</code>, <code>catch</code>, <code>switch</code>, <code>case</code>,
<code>return</code> and <code>throw</code> statements in the body of a class plus one for each constructor, method, static initializer, or instance
initializer in the class. The last return statement in method, if exists, is not taken into account.</p>
<p>Even when the Cyclomatic Complexity of a class is very high, this complexity might be well distributed among all methods. Nevertheless, most of the
time, a very complex class is a class which breaks the Single Responsibility Principle and which should be re-factored to be split in several
classes.</p>
<h2>Deprecated</h2>
<p>This rule is deprecated, and will eventually be removed.</p>Z
CODE_SMELL
‰

squid:S2157‘

squidS2157%"Cloneables" should implement "clone""CRITICAL*java:Ä
<p>Simply implementing <code>Cloneable</code> without also overriding <code>Object.clone()</code> does not necessarily make the class cloneable. While
the <code>Cloneable</code> interface does not include a <code>clone</code> method, it is required by convention, and ensures true cloneability.
Otherwise the default JVM <code>clone</code> will be used, which copies primitive values and object references from the source to the target. I.e.
without overriding <code>clone</code>, any cloned instances will potentially share members with the source instance.</p>
<p>Removing the <code>Cloneable</code> implementation and providing a good copy constructor is another viable (some say preferable) way of allowing a
class to be copied.</p>
<h2>Noncompliant Code Example</h2>
<pre>
class Team implements Cloneable {  // Noncompliant
  private Person coach;
  private List&lt;Person&gt; players;
  public void addPlayer(Person p) {...}
  public Person getCoach() {...}
}
</pre>
<h2>Compliant Solution</h2>
<pre>
class Team implements Cloneable {
  private Person coach;
  private List&lt;Person&gt; players;
  public void addPlayer(Person p) { ... }
  public Person getCoach() { ... }

  @Override
  public Object clone() {
    Team clone = (Team) super.clone();
    //...
  }
}
</pre>Z
CODE_SMELL
æ
squid:S1067Æ
squidS1067%Expressions should not be too complex"CRITICAL*java:⁄<p>The complexity of an expression is defined by the number of <code>&amp;&amp;</code>, <code>||</code> and <code>condition ? ifTrue : ifFalse</code>
operators it contains.</p>
<p>A single expression's complexity should not become too high to keep the code readable.</p>
<h2>Noncompliant Code Example</h2>
<p>With the default threshold value of 3:</p>
<pre>
if (((condition1 &amp;&amp; condition2) || (condition3 &amp;&amp; condition4)) &amp;&amp; condition5) { ... }
</pre>
<h2>Compliant Solution</h2>
<pre>
if ( (myFirstCondition() || mySecondCondition()) &amp;&amp; myLastCondition()) { ... }
</pre>Z
CODE_SMELL
ò

squid:S2277à

squidS2277cCryptographic RSA algorithms should always incorporate OAEP (Optimal Asymmetric Encryption Padding)"CRITICAL*java:Û<p>Without OAEP in RSA encryption, it takes less work for an attacker to decrypt the data or infer patterns from the ciphertext. This rule logs an
issue as soon as a literal value starts with <code>RSA/NONE</code>. </p>
<h2>Noncompliant Code Example</h2>
<pre>
Cipher rsa = javax.crypto.Cipher.getInstance("RSA/NONE/NoPadding");
</pre>
<h2>Compliant Solution</h2>
<pre>
Cipher rsa = javax.crypto.Cipher.getInstance("RSA/ECB/OAEPWITHSHA-256ANDMGF1PADDING");
</pre>
<h2>See</h2>
<ul>
  <li> <a href="http://cwe.mitre.org/data/definitions/780.html">MITRE CWE-780</a> - Use of RSA Algorithm without OAEP </li>
  <li> <a href="http://cwe.mitre.org/data/definitions/327.html">MITRE CWE-327</a> - Use of a Broken or Risky Cryptographic Algorithm </li>
  <li> OWASP Top 10 2017 Category A3 - Sensitive Data Exposure </li>
  <li> OWASP Top 10 2017 Category A6 - Security Misconfiguration </li>
  <li> <a href="https://www.sans.org/top25-software-errors/#cat3">SANS Top 25</a> - Porous Defenses </li>
  <li> Derived from FindSecBugs rule <a href="http://h3xstream.github.io/find-sec-bugs/bugs.htm#RSA_NO_PADDING">RSA NoPadding Unsafe</a> </li>
</ul>ZVULNERABILITY
®
squid:S2274ò
squidS2274T"Object.wait(...)" and "Condition.await(...)" should be called inside a "while" loop"CRITICAL*java:ï<p>According to the documentation of the Java <code>Condition</code> interface:</p>
<blockquote>
  <p>When waiting upon a <code>Condition</code>, a "spurious wakeup" is permitted to occur, in general, as a concession to the underlying platform
  semantics. This has little practical impact on most application programs as a Condition should always be waited upon in a loop, testing the state
  predicate that is being waited for. An implementation is free to remove the possibility of spurious wakeups but it is recommended that applications
  programmers always assume that they can occur and so always wait in a loop.</p>
</blockquote>
<p>The same advice is also found for the <code>Object.wait(...)</code> method:</p>
<blockquote>
  <p>waits should always occur in loops, like this one:</p>
  <pre>
synchronized (obj) {
  while (&lt;condition does not hold&gt;){
    obj.wait(timeout);
  }
   ... // Perform action appropriate to condition
}
</pre>
</blockquote>
<h2>Noncompliant Code Example</h2>
<pre>
synchronized (obj) {
  if (!suitableCondition()){
    obj.wait(timeout);   //the thread can wake up even if the condition is still false
  }
   ... // Perform action appropriate to condition
}
</pre>
<h2>Compliant Solution</h2>
<pre>
synchronized (obj) {
  while (!suitableCondition()){
    obj.wait(timeout);
  }
   ... // Perform action appropriate to condition
}
</pre>
<h2>See</h2>
<ul>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/9QIhAQ">CERT THI03-J.</a> - Always invoke wait() and await() methods inside a loop
  </li>
</ul>Z
CODE_SMELL
¸
squid:S1186Ï
squidS1186Methods should not be empty"CRITICAL*java:¢<p>There are several reasons for a method not to have a method body:</p>
<ul>
  <li> It is an unintentional omission, and should be fixed to prevent an unexpected behavior in production. </li>
  <li> It is not yet, or never will be, supported. In this case an <code>UnsupportedOperationException</code> should be thrown. </li>
  <li> The method is an intentionally-blank override. In this case a nested comment should explain the reason for the blank override. </li>
</ul>
<h2>Noncompliant Code Example</h2>
<pre>
public void doSomething() {
}

public void doSomethingElse() {
}
</pre>
<h2>Compliant Solution</h2>
<pre>
@Override
public void doSomething() {
  // Do nothing because of X and Y.
}

@Override
public void doSomethingElse() {
  throw new UnsupportedOperationException();
}
</pre>
<h2>Exceptions</h2>
<p>Default (no-argument) constructors are ignored when there are other constructors in the class, as are empty methods in abstract classes.</p>
<pre>
public abstract class Animal {
  void speak() {  // default implementation ignored
  }
}
</pre>Z
CODE_SMELL
≤	
squid:S4454¢	
squidS4454:"equals" method parameters should not be marked "@Nonnull""CRITICAL*java:π<p>By contract, the <code>equals(Object)</code> method, from <code>java.lang.Object</code>, should accept a <code>null</code> argument. Among all the
other cases, the <code>null</code> case is even explicitly detailed in the <code>Object.equals(...)</code> Javadoc, stating "_For any non-null
reference value x, x.equals(null) should return false._"</p>
<p>Assuming that the argument to <code>equals</code> is always non-null, and enforcing that assumption with an annotation is not only a fundamental
violation of the contract of <code>equals</code>, but it is also likely to cause problems in the future as the use of the class evolves over time.</p>
<p>The rule raises an issue when the <code>equals</code> method is overridden and its parameter annotated with any kind of <code>@Nonnull</code>
annotation.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public boolean equals(@javax.annotation.Nonnull Object obj) { // Noncompliant
  // ...
}
</pre>
<h2>Compliant Solution</h2>
<pre>
public boolean equals(Object obj) {
  if (obj == null) {
    return false;
  }
  // ...
}
</pre>Z
CODE_SMELL
Ô	
squid:S2151ﬂ	
squidS2151*"runFinalizersOnExit" should not be called"CRITICAL*java:ç	<p>Running finalizers on JVM exit is disabled by default. It can be enabled with <code>System.runFinalizersOnExit</code> and
<code>Runtime.runFinalizersOnExit</code>, but both methods are deprecated because they are are inherently unsafe. </p>
<p>According to the Oracle Javadoc:</p>
<blockquote>
  <p>It may result in finalizers being called on live objects while other threads are concurrently manipulating those objects, resulting in erratic
  behavior or deadlock.</p>
</blockquote>
<p>If you really want to be execute something when the virtual machine begins its shutdown sequence, you should attach a shutdown hook. </p>
<h2>Noncompliant Code Example</h2>
<pre>
public static void main(String [] args) {
  ...
  System.runFinalizersOnExit(true);  // Noncompliant
  ...
}

protected void finalize(){
  doSomething();
}
</pre>
<h2>Compliant Solution</h2>
<pre>
public static void main(String [] args) {
  Runtime.addShutdownHook(new Runnable() {
    public void run(){
      doSomething();
    }
  });
  //...
</pre>
<h2>See</h2>
<ul>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/H4cbAQ">CERT, MET12-J.</a> - Do not use finalizers </li>
</ul>ZBUG
¶

squid:S2390ñ

squidS2390DClasses should not access their own subclasses during initialization"CRITICAL*java:£	<p>When a parent class references a member of a subclass during its own initialization, the results might not be what you expect because the child
class might not have been initialized yet. This could create what is known as an "initialisation cycle", or even a deadlock in some extreme cases.</p>
<p>To make things worse, these issues are very hard to diagnose so it is highly recommended you avoid creating this kind of dependencies.</p>
<h2>Noncompliant Code Example</h2>
<pre>
class Parent {
  static int field1 = Child.method(); // Noncompliant
  static int field2 = 42;

  public static void main(String[] args) {
    System.out.println(Parent.field1); // will display "0" instead of "42"
  }
}

class Child extends Parent {
  static int method() {
    return Parent.field2;
  }
}
</pre>
<h2>See</h2>
<ul>
  <li> <a href="https://www.securecoding.cert.org/confluence/display/java/DCL00-J.+Prevent+class+initialization+cycles">CERT, DCL00-J.</a> - Prevent
  class initialization cycles </li>
  <li> Java Language Specifications - <a href="http://docs.oracle.com/javase/specs/jls/se8/html/jls-12.html#jls-12.4">Section 12.4: Initialization of
  Classes and Interfaces</a> </li>
</ul>Z
CODE_SMELL
Ô
squid:S2122ﬂ
squidS2122<"ScheduledThreadPoolExecutor" should not have 0 core threads"CRITICAL*java:˚<p><code>java.util.concurrent.ScheduledThreadPoolExecutor</code>'s pool is sized with <code>corePoolSize</code>, so setting <code>corePoolSize</code>
to zero means the executor will have no threads and run nothing.</p>
<p>This rule detects instances where <code>corePoolSize</code> is set to zero, via either its setter or the object constructor.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public void do(){

  ScheduledThreadPoolExecutor stpe1 = new ScheduledThreadPoolExecutor(0); // Noncompliant

  ScheduledThreadPoolExecutor stpe2 = new ScheduledThreadPoolExecutor(POOL_SIZE);
  stpe2.setCorePoolSize(0);  // Noncompliant
</pre>ZBUG
Ω
squid:S3330≠
squidS3330#"HttpOnly" should be set on cookies"CRITICAL*java:ÿ<p>The <code>HttpOnly</code> cookie attribute tells the browser to prevent client-side scripts from reading cookies with the attribute, and its use
can go a long way to defending against Cross-Site Scripting (XSS) attacks. Thus, as a precaution, the attribute should be set by default on all
cookies set server-side, such as session id cookies.</p>
<p>When implementing Cross Site Request Forgery (XSRF) protection, a JavaScript-readable session cookie, generally named XSRF-TOKEN, should be created
on the first HTTP GET request. For such a cookie, the <code>HttpOnly</code> attribute should be set to "false".</p>
<p>Setting the attribute can be done either programmatically, or globally via configuration files. </p>
<h2>Noncompliant Code Example</h2>
<pre>
Cookie cookie = new Cookie("myCookieName", value); // Noncompliant; by default cookie.isHttpOnly() is returning false
</pre>
<h2>Compliant Solution</h2>
<pre>
Cookie cookie = new Cookie("myCookieName", value);
cookie.setHttpOnly(true); // Compliant
</pre>
<h2>See</h2>
<ul>
  <li> <a href="http://cwe.mitre.org/data/definitions/79.html">CWE-79</a> - Improper Neutralization of Input During Web Page Generation ('Cross-site
  Scripting') </li>
  <li> <a href="https://cwe.mitre.org/data/definitions/1004.html">CWE-1004</a> - Sensitive Cookie Without 'HttpOnly' Flag </li>
  <li> OWASP Top 10 2017 Category A7 - Cross-Site Scripting (XSS) </li>
  <li> <a href="https://www.owasp.org/index.php/HttpOnly">OWASP HttpOnly</a> </li>
  <li> <a href="https://www.sans.org/top25-software-errors/#cat1">SANS Top 25</a> - Insecure Interaction Between Components </li>
  <li> Derived from FindSecBugs rule <a href="https://find-sec-bugs.github.io/bugs.htm#HTTPONLY_COOKIE">HTTPONLY_COOKIE</a> </li>
</ul>ZVULNERABILITY
π
squid:S4435©
squidS4435"XML transformers should be secured"CRITICAL*java:’<p>An XML External Entity or XSLT External Entity (XXE) vulnerability can occur when a <code>javax.xml.transform.Transformer</code> is created without
enabling "Secure Processing" or when one is created without disabling external DTDs. If that external entity is hijacked by an attacker it may lead to
the disclosure of confidential data, denial of service, server side request forgery, port scanning from the perspective of the machine where the
parser is located, and other system impacts.</p>
<p>This rule raises an issue when a <code>Transformer</code> is created without either of these settings.</p>
<h2>Noncompliant Code Example</h2>
<pre>
Transformer transformer = TransformerFactory.newInstance().newTransformer();
transformer.transform(input, result);
</pre>
<h2>Compliant Solution</h2>
<pre>
TransformerFactory factory = TransformerFactory.newInstance();
factory.setFeature(XMLConstants.FEATURE_SECURE_PROCESSING, true);

Transformer transformer = factory.newTransformer();
transformer.setOutputProperty(OutputKeys.INDENT, "yes");

transformer.transform(input, result);
</pre>
<p>or</p>
<pre>
TransformerFactory factory = TransformerFactory.newInstance();
factory.setAttribute(XMLConstants.ACCESS_EXTERNAL_DTD, "");
factory.setAttribute(XMLConstants.ACCESS_EXTERNAL_STYLESHEET, "");

Transformer transformer = factory.newTransformer();
transformer.setOutputProperty(OutputKeys.INDENT, "yes");

transformer.transform(input, result);
</pre>
<h2>See</h2>
<ul>
  <li> <a href="http://cwe.mitre.org/data/definitions/611.html">MITRE, CWE-611</a> Improper Restriction of XML External Entity Reference ('XXE') </li>
  <li> OWASP Top 10 2017 Category A4 - XML External Entities </li>
  <li> [OWASP XXE cheat sheet| https://www.owasp.org/index.php/XML_External_Entity_(XXE)_Prevention_Cheat_Sheet#TransformerFactory] </li>
  <li> Derived from FindSecBugs rule <a href="https://find-sec-bugs.github.io/bugs.htm#XXE_DTD_TRANSFORM_FACTORY">XXE_DTD_TRANSFORM_FACTORY</a> </li>
  <li> Derived from FindSecBugs rule <a href="https://find-sec-bugs.github.io/bugs.htm#XXE_XSLT_TRANSFORM_FACTORY">XXE_XSLT_TRANSFORM_FACTORY</a>
  </li>
</ul>ZVULNERABILITY
ü
squid:S2254è
squidS2254?"HttpServletRequest.getRequestedSessionId()" should not be used"CRITICAL*java:û<p>According to the Oracle Java API, the <code>HttpServletRequest.getRequestedSessionId()</code> method:</p>
<blockquote>
  <p>Returns the session ID specified by the client. This may not be the same as the ID of the current valid session for this request. If the client
  did not specify a session ID, this method returns null.</p>
</blockquote>
<p>The session ID it returns is either transmitted in a cookie or a URL parameter so by definition, nothing prevents the end-user from manually
updating the value of this session ID in the HTTP request. </p>
<p>Here is an example of a updated HTTP header:</p>
<pre>
GET /pageSomeWhere HTTP/1.1
Host: webSite.com
User-Agent: Mozilla/5.0
Cookie: JSESSIONID=Hacked_Session_Value'''"&gt;
</pre>
<p>Due to the ability of the end-user to manually change the value, the session ID in the request should only be used by a servlet container (E.G.
Tomcat or Jetty) to see if the value matches the ID of an an existing session. If it does not, the user should be considered unauthenticated.
Moreover, this session ID should never be logged to prevent hijacking of active sessions.</p>
<h2>Noncompliant Code Example</h2>
<pre>
if(isActiveSession(request.getRequestedSessionId()) ){
  ...
}
</pre>
<h2>See</h2>
<ul>
  <li> <a href="http://cwe.mitre.org/data/definitions/807">MITRE, CWE-807</a> - Reliance on Untrusted Inputs in a Security Decision </li>
  <li> <a href="https://www.sans.org/top25-software-errors/#cat3">SANS Top 25</a> - Porous Defenses </li>
  <li> OWASP Top 10 2017 Category A2 - Broken Authentication </li>
</ul>ZVULNERABILITY
â
squid:S4433˘
squidS4433(LDAP connections should be authenticated"CRITICAL*java:ü<p>An un-authenticated LDAP connection can lead to transactions without access control. Authentication, and with it, access control, are the last line
of defense against LDAP injections and should not be disabled.</p>
<p>This rule raises an issue when an LDAP connection is created with <code>Context.SECURITY_AUTHENTICATION</code> set to <code>"none"</code>.</p>
<h2>Noncompliant Code Example</h2>
<pre>
// Set up the environment for creating the initial context
Hashtable&lt;String, Object&gt; env = new Hashtable&lt;String, Object&gt;();
env.put(Context.INITIAL_CONTEXT_FACTORY, "com.sun.jndi.ldap.LdapCtxFactory");
env.put(Context.PROVIDER_URL, "ldap://localhost:389/o=JNDITutorial");

// Use anonymous authentication
env.put(Context.SECURITY_AUTHENTICATION, "none"); // Noncompliant

// Create the initial context
DirContext ctx = new InitialDirContext(env);
</pre>
<h2>Compliant Solution</h2>
<pre>
// Set up the environment for creating the initial context
Hashtable&lt;String, Object&gt; env = new Hashtable&lt;String, Object&gt;();
env.put(Context.INITIAL_CONTEXT_FACTORY, "com.sun.jndi.ldap.LdapCtxFactory");
env.put(Context.PROVIDER_URL, "ldap://localhost:389/o=JNDITutorial");

// Use simple authentication
env.put(Context.SECURITY_AUTHENTICATION, "simple");
env.put(Context.SECURITY_PRINCIPAL, "cn=S. User, ou=NewHires, o=JNDITutorial");
env.put(Context.SECURITY_CREDENTIALS, getLDAPPassword());

// Create the initial context
DirContext ctx = new InitialDirContext(env);
</pre>
<h2>See</h2>
<ul>
  <li> <a href="https://cwe.mitre.org/data/definitions/521.html">CWE-521</a> - Weak Password Requirements </li>
  <li> OWASP Top 10 2017 Category A2 - Broken Authentication </li>
  <li> <a href="https://docs.oracle.com/javase/tutorial/jndi/ldap/authentication.html">Modes of Authenticating to LDAP</a> </li>
  <li> Derived from FindSecBugs rule <a href="https://find-sec-bugs.github.io/bugs.htm#LDAP_ANONYMOUS">LDAP_ANONYMOUS</a> </li>
</ul>ZVULNERABILITY
™
squid:S4432ö
squidS44329AES encryption algorithm should be used with secured mode"CRITICAL*java:Ø<p>The Advanced Encryption Standard (AES) encryption algorithm can be used with various modes. Some combinations are not secured:</p>
<ul>
  <li> Electronic Codebook (ECB) mode: Under a given key, any given plaintext block always gets encrypted to the same ciphertext block. Thus, it does
  not hide data patterns well. In some senses, it doesn't provide serious message confidentiality, and it is not recommended for use in cryptographic
  protocols at all. </li>
  <li> Cipher Block Chaining (CBC) with PKCS#5 padding (or PKCS#7) is susceptible to padding oracle attacks. </li>
</ul>
<p>In both cases, Galois/Counter Mode (GCM) with no padding should be preferred.</p>
<p>This rule raises an issue when a <code>Cipher</code> instance is created with either ECB or CBC/PKCS5Padding mode.</p>
<h2>Noncompliant Code Example</h2>
<pre>
Cipher c1 = Cipher.getInstance("AES/ECB/NoPadding"); // Noncompliant
Cipher c2 = Cipher.getInstance("AES/CBC/PKCS5Padding"); // Noncompliant
</pre>
<h2>Compliant Solution</h2>
<pre>
Cipher c = Cipher.getInstance("AES/GCM/NoPadding");
</pre>
<h2>See</h2>
<ul>
  <li> <a href="http://cwe.mitre.org/data/definitions/327.html">MITRE, CWE-327</a> - Use of a Broken or Risky Cryptographic Algorithm </li>
  <li> OWASP Top 10 2017 Category A6 - Security Misconfiguration </li>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/VwAZAg">CERT, MSC61-J.</a> - Do not use insecure or weak cryptographic algorithms </li>
  <li> <a href="https://www.sans.org/top25-software-errors/#cat3">SANS Top 25</a> - Porous Defenses </li>
  <li> <a href="http://nvlpubs.nist.gov/nistpubs/Legacy/SP/nistspecialpublication800-38a.pdf">Recommendation for Block Cipher Modes of Operation</a>
  </li>
  <li> Derived from FindSecBugs rule <a href="https://find-sec-bugs.github.io/bugs.htm#ECB_MODE">ECB_MODE</a> </li>
  <li> Derived from FindSecBugs rule <a href="https://find-sec-bugs.github.io/bugs.htm#PADDING_ORACLE">PADDING_ORACLE</a> </li>
</ul>ZVULNERABILITY
ø
squid:S1163Ø
squidS11631Exceptions should not be thrown in finally blocks"CRITICAL*java:œ<p>Throwing an exception from within a finally block will mask any exception which was previously thrown in the <code>try</code> or <code>catch</code>
block, and the masked's exception message and stack trace will be lost.</p>
<h2>Noncompliant Code Example</h2>
<pre>
try {
  /* some work which end up throwing an exception */
  throw new IllegalArgumentException();
} finally {
  /* clean up */
  throw new RuntimeException();       // Noncompliant; masks the IllegalArgumentException
}
</pre>
<h2>Compliant Solution</h2>
<pre>
try {
  /* some work which end up throwing an exception */
  throw new IllegalArgumentException();
} finally {
  /* clean up */
}
</pre>
<h2>See</h2>
<ul>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/soUbAQ">CERT, ERR05-J.</a> - Do not let checked exceptions escape from a finally block
  </li>
</ul>Z
CODE_SMELL
’	
squid:S2638≈	
squidS2638,Method overrides should not change contracts"CRITICAL*java:Í<p>Because a subclass instance may be cast to and treated as an instance of the superclass, overriding methods should uphold the aspects of the
superclass contract that relate to the Liskov Substitution Principle. Specifically, if the parameters or return type of the superclass method are
marked with any of the following: <code>@Nullable</code>, <code>@CheckForNull</code>, <code>@NotNull</code>, <code>@NonNull</code>, and
<code>@Nonnull</code>, then subclass parameters are not allowed to tighten the contract, and return values are not allowed to loosen it.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public class Fruit {

  private Season ripe;
  private String color;

  public void setRipe(@Nullable Season ripe) {
    this.ripe = ripe;
  }

  public @NotNull Integer getProtein() {
    return 12;
  }
}

public class Raspberry extends Fruit {

  public void setRipe(@NotNull Season ripe) {  // Noncompliant
    this.ripe = ripe;
  }

  public @Nullable Integer getProtein() {  // Noncompliant
    return null;
  }
}
</pre>
<h2>See</h2>
<ul>
  <li> https://en.wikipedia.org/wiki/Liskov_substitution_principle </li>
</ul>Z
CODE_SMELL
Á
squid:S1994◊
squidS1994>"for" loop increment clauses should modify the loops' counters"CRITICAL*java:Í<p>It can be extremely confusing when a <code>for</code> loop's counter is incremented outside of its increment clause. In such cases, the increment
should be moved to the loop's increment clause if at all possible.</p>
<h2>Noncompliant Code Example</h2>
<pre>
for (i = 0; i &lt; 10; j++) { // Noncompliant
  // ...
  i++;
}
</pre>
<h2>Compliant Solution</h2>
<pre>
for (i = 0; i &lt; 10; i++, j++) {
  // ...
}
</pre>
<p>Or </p>
<pre>
for (i = 0; i &lt; 10; i++) {
  // ...
  j++;
}
</pre>Z
CODE_SMELL
ˇ
squid:S3937Ô
squidS3937!Number patterns should be regular"CRITICAL*java:ü<p>The use of punctuation characters to separate subgroups in a number can make the number more readable. For instance consider 1,000,000,000 versus
1000000000. But when the grouping is irregular, such as 1,000,00,000; it indicates an error. </p>
<p>This rule raises an issue when underscores (<code>_</code>) are used to break a number into irregular subgroups.</p>
<h2>Noncompliant Code Example</h2>
<pre>
int duos = 1_00_00;
int million = 1_000_00_000;  // Noncompliant
int thousand = 1000;
int tenThousand = 100_00;  // Noncompliant
</pre>Z
CODE_SMELL
™
squid:S3822ö
squidS3822,Hibernate should not update database schemas"CRITICAL*java:∆<p>The use of any value but <code>"validate"</code> for <code>hibernate.hbm2ddl.auto</code> may cause the database schema used by your application to
be changed, dropped, or cleaned of all data. In short, the use of this property is risky, and should only be used in production with the
<code>"validate"</code> option, if it is used at all.</p>
<h2>Noncompliant Code Example</h2>
<pre>
&lt;session-factory&gt;
  &lt;property name="hibernate.hbm2ddl.auto"&gt;update&lt;/property&gt;  &lt;!-- Noncompliant --&gt;
&lt;/session-factory&gt;
</pre>
<h2>Compliant Solution</h2>
<pre>
&lt;session-factory&gt;
  &lt;property name="hibernate.hbm2ddl.auto"&gt;validate&lt;/property&gt;  &lt;!-- Compliant --&gt;
&lt;/session-factory&gt;
</pre>
<p>or</p>
<pre>
&lt;session-factory&gt;
  &lt;!-- Property deleted --&gt;
&lt;/session-factory&gt;
</pre>ZBUG
◊	
squid:S2976«	
squidS2976>"File.createTempFile" should not be used to create a directory"CRITICAL*java:◊<p>Using <code>File.createTempFile</code> as the first step in creating a temporary directory causes a race condition and is inherently unreliable and
insecure. Instead, <code>Files.createTempDirectory</code> (Java 7+) or a library function such as Guava's similarly-named
<code>Files.createTempDir</code> should be used.</p>
<p>This rule raises an issue when the following steps are taken in immediate sequence:</p>
<ul>
  <li> call to <code>File.createTempFile</code> </li>
  <li> delete resulting file </li>
  <li> call <code>mkdir</code> on the File object </li>
</ul>
<p><strong>Note</strong> that this rule is automatically disabled when the project's <code>sonar.java.source</code> is lower than <code>7</code>.</p>
<h2>Noncompliant Code Example</h2>
<pre>
File tempDir;
tempDir = File.createTempFile("", ".");
tempDir.delete();
tempDir.mkdir();  // Noncompliant
</pre>
<h2>Compliant Solution</h2>
<pre>
Path tempPath = Files.createTempDirectory("");
File tempDir = tempPath.toFile();
</pre>
<h2>See</h2>
<ul>
  <li> OWASP Top 10 2017 Category A9 - Using Components with Known Vulnerabilities </li>
</ul>ZVULNERABILITY
≤	
4squid:ObjectFinalizeOverridenCallsSuperFinalizeCheck˘
squid.ObjectFinalizeOverridenCallsSuperFinalizeCheckU"super.finalize()" should be called at the end of "Object.finalize()" implementations"CRITICAL*java2S1114:Ã<p>Overriding the <code>Object.finalize()</code> method must be done with caution to dispose some system resources.</p>
<p>Calling the <code>super.finalize()</code> at the end of this method implementation is highly recommended in case parent implementations must also
dispose some system resources.</p>
<h2>Noncompliant Code Example</h2>
<pre>
protected void finalize() {   // Noncompliant; no call to super.finalize();
  releaseSomeResources();
}

protected void finalize() {
  super.finalize();  // Noncompliant; this call should come last
  releaseSomeResources();
}
</pre>
<h2>Compliant Solution</h2>
<pre>
protected void finalize() {
  releaseSomeResources();
  super.finalize();
}
</pre>
<h2>See</h2>
<ul>
  <li> <a href="http://cwe.mitre.org/data/definitions/568.html">MITRE, CWE-568</a> - finalize() Method Without super.finalize() </li>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/H4cbAQ">CERT, MET12-J.</a> - Do not use finalizers </li>
</ul>ZBUG
’

squid:S1214≈

squidS1214-Constants should not be defined in interfaces"CRITICAL*java:È	<p>According to Joshua Bloch, author of "Effective Java":</p>
<blockquote>
  <p>The constant interface pattern is a poor use of interfaces. </p>
  <p>That a class uses some constants internally is an implementation detail.</p>
  <p>Implementing a constant interface causes this implementation detail to leak into the class's exported API. It is of no consequence to the users
  of a class that the class implements a constant interface. In fact, it may even confuse them. Worse, it represents a commitment: if in a future
  release the class is modified so that it no longer needs to use the constants, it still must implement the interface to ensure binary compatibility.
  If a nonfinal class implements a constant interface,</p>
  <p>all of its subclasses will have their namespaces polluted by the constants in the interface.</p>
</blockquote>
<h2>Noncompliant Code Example</h2>
<pre>
interface Status {                      // Noncompliant
   int OPEN = 1;
   int CLOSED = 2;
}
</pre>
<h2>Compliant Solution</h2>
<pre>
public enum Status {                    // Compliant
  OPEN,
  CLOSED;
}
</pre>
<p>or</p>
<pre>
public final class Status {             // Compliant
   public static final int OPEN = 1;
   public static final int CLOSED = 2;
}
</pre>Z
CODE_SMELL
®
squid:S4601ò
squidS46017"HttpSecurity" URL patterns should be correctly ordered"CRITICAL*java:Ø<p>URL patterns configured on a <code>HttpSecurity.authorizeRequests()</code> method are considered in the order they were declared. It's easy to do a
mistake and to declare a less restrictive configuration before a more restrictive one. Therefore, it's required to review the order of the
"antMatchers" declarations. The <code>/**</code> one should be the last one if it is declared.</p>
<p>This rule raises an issue when:</p>
<p>- A pattern is preceded by another that ends with <code>**</code> and has the same beginning. E.g.: <code>/page*-admin/db/**</code> is after
<code>/page*-admin/**</code></p>
<p>- A pattern without wildcard characters is preceded by another that matches. E.g.: <code>/page-index/db</code> is after <code>/page*/**</code></p>
<h2>Noncompliant Code Example</h2>
<pre>
  protected void configure(HttpSecurity http) throws Exception {
    http.authorizeRequests()
      .antMatchers("/resources/**", "/signup", "/about").permitAll() // Compliant
      .antMatchers("/admin/**").hasRole("ADMIN")
      .antMatchers("/admin/login").permitAll() // Noncompliant; the pattern "/admin/login" should occurs before "/admin/**"
      .antMatchers("/**", "/home").permitAll()
      .antMatchers("/db/**").access("hasRole('ADMIN') and hasRole('DBA')") // Noncompliant; the pattern "/db/**" should occurs before "/**"
      .and().formLogin().loginPage("/login").permitAll().and().logout().permitAll();
  }
</pre>
<h2>Compliant Solution</h2>
<pre>
  protected void configure(HttpSecurity http) throws Exception {
    http.authorizeRequests()
      .antMatchers("/resources/**", "/signup", "/about").permitAll() // Compliant
      .antMatchers("/admin/login").permitAll()
      .antMatchers("/admin/**").hasRole("ADMIN") // Compliant
      .antMatchers("/db/**").access("hasRole('ADMIN') and hasRole('DBA')")
      .antMatchers("/**", "/home").permitAll() // Compliant; "/**" is the last one
      .and().formLogin().loginPage("/login").permitAll().and().logout().permitAll();
  }
</pre>
<h2>See</h2>
<ul>
  <li> OWASP Top 10 2017 Category A6 - Security Misconfiguration </li>
</ul>ZVULNERABILITY
µ
squid:S1452•
squidS1452>Generic wildcard types should not be used in return parameters"CRITICAL*java:∏<p>It is highly recommended <strong>not</strong> to use wildcard types as return types. Because the type inference rules are fairly complex it is
unlikely the user of that API will know how to use it correctly. </p>
<p>Let's take the example of method returning a "List&lt;? extends Animal&gt;". Is it possible on this list to add a Dog, a Cat, ... we simply don't
know. And neither does the compiler, which is why it will not allow such a direct use. The use of wildcard types should be limited to method
parameters.</p>
<p>This rule raises an issue when a method returns a wildcard type. </p>
<h2>Noncompliant Code Example</h2>
<pre>
List&lt;? extends Animal&gt; getAnimals(){...}
</pre>
<h2>Compliant Solution</h2>
<pre>
List&lt;Animal&gt; getAnimals(){...}
</pre>
<p>or</p>
<pre>
List&lt;Dog&gt; getAnimals(){...}
</pre>Z
CODE_SMELL
´
squid:S3518õ
squidS3518)Zero should not be a possible denominator"CRITICAL*java: <p>If the denominator to a division or modulo operation is zero it would result in a fatal error.</p>
<h2>Noncompliant Code Example</h2>
<pre>
void test_divide() {
  int z = 0;
  if (unknown()) {
    // ..
    z = 3;
  } else {
    // ..
  }
  z = 1 / z; // Noncompliant, possible division by zero
}
</pre>
<h2>Compliant Solution</h2>
<pre>
void test_divide() {
  int z = 0;
  if (unknown()) {
    // ..
    z = 3;
  } else {
    // ..
    z = 1;
  }
  z = 1 / z;
}
</pre>
<h2>See</h2>
<ul>
  <li> <a href="https://cwe.mitre.org/data/definitions/369.html">MITRE, CWE-369</a> - Divide by zero </li>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/KAGyAw">CERT, NUM02-J.</a> - Ensure that division and remainder operations do not
  result in divide-by-zero errors </li>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/cAI">CERT, INT33-C.</a> - Ensure that division and remainder operations do not result
  in divide-by-zero errors </li>
</ul>ZBUG
°

squid:S4605ë

squidS46055Spring beans should be considered by "@ComponentScan""CRITICAL*java:≠	<p>Spring beans belonging to packages that are not included in a <code>@ComponentScan</code> configuration will not be accessible in the Spring
Application Context. Therefore, it's likely to be a configuration mistake that will be detected by this rule. <strong>Note:</strong> the
<code>@ComponentScan</code> is implicit in the <code>@SpringBootApplication</code> annotation, case in which Spring Boot will auto scan for components
in the package containing the Spring Boot main class and its sub-packages.</p>
<h2>Noncompliant Code Example</h2>
<pre>
@Configuration
@ComponentScan("com.mycompany.app.beans")
public class Application {
...
}

package com.mycompany.app.web;

@Controller
public class MyController { // Noncompliant; MyController belong to "com.mycompany.app.web" while the ComponentScan is looking for beans in "com.mycompany.app.beans" package
...
}
</pre>
<h2>Compliant Solution</h2>
<pre>
@Configuration
@ComponentScan({"com.mycompany.app.beans","com.mycompany.app.web"})
public class Application {
...
}

package com.mycompany.app.web;

@Controller
public class MyController { // Compliant; "com.mycompany.app.web" is referenced by a @ComponentScan annotated class
...
}
</pre>Z
CODE_SMELL
û
squid:S1215é
squidS1215FExecution of the Garbage Collector should be triggered only by the JVM"CRITICAL*java:ô<p>Calling <code>System.gc()</code> or <code>Runtime.getRuntime().gc()</code> is a bad idea for a simple reason: there is no way to know exactly what
will be done under the hood by the JVM because the behavior will depend on its vendor, version and options:</p>
<ul>
  <li> Will the whole application be frozen during the call? </li>
  <li> Is the <code>-XX:DisableExplicitGC</code> option activated? </li>
  <li> Will the JVM simply ignore the call? </li>
  <li> ... </li>
</ul>
<p>An application relying on these unpredictable methods is also unpredictable and therefore broken. The task of running the garbage collector should
be left exclusively to the JVM.</p>Z
CODE_SMELL
˜
squid:S1699Á
squidS16995Constructors should only call non-overridable methods"CRITICAL*java:É<p>Calling an overridable method from a constructor could result in failures or strange behaviors when instantiating a subclass which overrides the
method.</p>
<p>For example:</p>
<ul>
  <li> The subclass class constructor starts by contract by calling the parent class constructor. </li>
  <li> The parent class constructor calls the method, which has been overridden in the child class. </li>
  <li> If the behavior of the child class method depends on fields that are initialized in the child class constructor, unexpected behavior (like a
  <code>NullPointerException</code>) can result, because the fields aren't initialized yet. </li>
</ul>
<h2>Noncompliant Code Example</h2>
<pre>
public class Parent {

  public Parent () {
    doSomething();  // Noncompliant
  }

  public void doSomething () {  // not final; can be overridden
    ...
  }
}

public class Child extends Parent {

  private String foo;

  public Child(String foo) {
    super(); // leads to call doSomething() in Parent constructor which triggers a NullPointerException as foo has not yet been initialized
    this.foo = foo;
  }

  public void doSomething () {
    System.out.println(this.foo.length());
  }

}
</pre>
<h2>See</h2>
<ul>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/MYYbAQ">CERT, MET05-J.</a> - Ensure that constructors do not call overridable methods
  </li>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/TQBi">CERT, OOP50-CPP.</a> - Do not invoke virtual functions from constructors or
  destructors </li>
</ul>Z
CODE_SMELL
¥
"squid:ObjectFinalizeOverridenCheckç
squidObjectFinalizeOverridenCheck4The Object.finalize() method should not be overriden"CRITICAL*java2S1113:å<p>The <code>Object.finalize()</code> method is called on an object by the garbage collector when it determines that there are no more references to
the object. But there is absolutely no warranty that this method will be called AS SOON AS the last references to the object are removed. It can be
few microseconds to few minutes later. So when system resources need to be disposed by an object, it's better to not rely on this asynchronous
mechanism to dispose them.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public class MyClass {
  ...
  protected void finalize() {
    releaseSomeResources();    // Noncompliant
  }
  ...
}
</pre>
<h2>See</h2>
<ul>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/H4cbAQ">CERT, MET12-J.</a> - Do not use finalizers </li>
</ul>Z
CODE_SMELL
è
squid:S3972ˇ
squidS3972&Conditionals should start on new lines"CRITICAL*java:™<p>Code is clearest when each statement has its own line. Nonetheless, it is a common pattern to combine on the same line an <code>if</code> and its
resulting <em>then</em> statement. However, when an <code>if</code> is placed on the same line as the closing <code>} </code> from a preceding
<code>else</code> or <code>else if</code>, it is either an error - <code>else</code> is missing - or the invitation to a future error as maintainers
fail to understand that the two statements are unconnected.</p>
<h2>Noncompliant Code Example</h2>
<pre>
if (condition1) {
  // ...
} if (condition2) {  // Noncompliant
  //...
}
</pre>
<h2>Compliant Solution</h2>
<pre>
if (condition1) {
  // ...
} else if (condition2) {
  //...
}
</pre>
<p>Or</p>
<pre>
if (condition1) {
  // ...
}

if (condition2) {
  //...
}
</pre>Z
CODE_SMELL
π
squid:S3973©
squidS3973EA conditionally executed single line should be denoted by indentation"CRITICAL*java:µ<p>In the absence of enclosing curly braces, the line immediately after a conditional is the one that is conditionally executed. By both convention
and good practice, such lines are indented. In the absence of both curly braces and indentation the intent of the original programmer is entirely
unclear and perhaps not actually what is executed. Additionally, such code is highly likely to be confusing to maintainers.</p>
<h2>Noncompliant Code Example</h2>
<pre>
if (condition)  // Noncompliant
doTheThing();

doTheOtherThing();
somethingElseEntirely();

foo();
</pre>
<h2>Compliant Solution</h2>
<pre>
if (condition)
  doTheThing();

doTheOtherThing();
somethingElseEntirely();

foo();
</pre>Z
CODE_SMELL
‡
squid:S2647–
squidS2647'Basic authentication should not be used"CRITICAL*java:˜
<p>Basic authentication's only means of obfuscation is Base64 encoding. Since Base64 encoding is easily recognized and reversed, it offers only the
thinnest veil of protection to your users, and should not be used. </p>
<h2>Noncompliant Code Example</h2>
<pre>
// Using HttpPost from Apache HttpClient
String encoding = Base64Encoder.encode ("login:passwd");
org.apache.http.client.methods.HttpPost httppost = new HttpPost(url);
httppost.setHeader("Authorization", "Basic " + encoding);  // Noncompliant

or

// Using HttpURLConnection
String encoding = Base64.getEncoder().encodeToString(("login:passwd").getBytes(‚Äå"UTF‚Äå‚Äã-8"‚Äã));
HttpURLConnection conn = (HttpURLConnection) url.openConnection();
conn.setRequestMethod("POST");
conn.setDoOutput(true);
conn.setRequestProperty("Authorization", "Basic " + encoding); // Noncompliant
</pre>
<h2>See</h2>
<ul>
  <li> <a href="http://cwe.mitre.org/data/definitions/522">MITRE, CWE-522</a> - Insufficiently Protected Credentials </li>
  <li> <a href="http://cwe.mitre.org/data/definitions/311">MITRE, CWE-311</a> - Missing Encryption of Sensitive Data </li>
  <li> OWASP Top 10 2017 Category A6 - Security Misconfiguration </li>
  <li> <a href="https://www.sans.org/top25-software-errors/#cat3">SANS Top 25</a> - Porous Defenses </li>
  <li> <a href="https://www.owasp.org/index.php/Basic_Authentication">OWASP Basic Authentication</a> </li>
</ul>ZVULNERABILITY
Á

squid:S2653◊

squidS26530Web applications should not have a "main" method"CRITICAL*java:ı	<p>There is no reason to have a <code>main</code> method in a web application. It may have been useful for debugging during application development,
but such a method should never make it into production. Having a <code>main</code> method in a web application opens a door to the application logic
that an attacker may never be able to reach (but watch out if one does!), but it is a sloppy practice and indicates that other problems may be
present.</p>
<p>This rule raises an issue when a <code>main</code> method is found in a servlet or an EJB.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public class MyServlet extends HttpServlet {
  public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
    if (userIsAuthorized(req)) {
      updatePrices(req);
    }
  }

  public static void main(String[] args) { // Noncompliant
    updatePrices(req);
  }
}
</pre>
<h2>See</h2>
<ul>
  <li> <a href="http://cwe.mitre.org/data/definitions/489.html">MITRE, CWE-489</a> - Leftover Debug Code </li>
  <li> OWASP Top 10 2017 Category A3 - Sensitive Data Exposure </li>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/VoB8Bw">CERT, ENV06-J.</a> - Production code must not contain debugging entry points
  </li>
</ul>ZVULNERABILITY
Ë
squid:S3749ÿ
squidS3749/Members of Spring components should be injected"CRITICAL*java:˜<p>Spring <code>@Controller</code>, <code>@Service</code>, and <code>@Repository</code> classes are singletons by default, meaning only one instance
of the class is ever instantiated in the application. Typically such a class might have a few <code>static</code> members, such as a logger, but all
non-<code>static</code> members should be managed by Spring. That is, they should have one of these annotations: <code>@Resource</code>,
<code>@Inject</code>, <code>@Autowired</code> or <code>@Value</code>.</p>
<p>Having non-injected members in one of these classes could indicate an attempt to manage state. Because they are singletons, such an attempt is
almost guaranteed to eventually expose data from User1's session to User2. </p>
<p>This rule raises an issue when a singleton <code>@Controller</code>, <code>@Service</code>, or <code>@Repository</code> has non-<code>static</code>
members that are not annotated with one of:</p>
<ul>
  <li> <code>org.springframework.beans.factory.annotation.Autowired</code> </li>
  <li> <code>org.springframework.beans.factory.annotation.Value</code> </li>
  <li> <code>javax.annotation.Inject</code> </li>
  <li> <code>javax.annotation.Resource</code> </li>
</ul>
<h2>Noncompliant Code Example</h2>
<pre>
@Controller
public class HelloWorld {

  private String name = null;

  @RequestMapping("/greet", method = GET)
  public String greet(String greetee) {

    if (greetee != null) {
      this.name = greetee;
    }

    return "Hello " + this.name;  // if greetee is null, you see the previous user's data
  }
}
</pre>
<h2>See</h2>
<ul>
  <li> OWASP Top 10 2017 Category A3 - Sensitive Data Exposure </li>
</ul>ZVULNERABILITY
Ç
squid:S2658Ú
squidS2658(Classes should not be loaded dynamically"CRITICAL*java:ò<p>Dynamically loaded classes could contain malicious code executed by a static class initializer. I.E. you wouldn't even have to instantiate or
explicitly invoke methods on such classes to be vulnerable to an attack.</p>
<p>This rule raises an issue for each use of dynamic class loading.</p>
<h2>Noncompliant Code Example</h2>
<pre>
String className = System.getProperty("messageClassName");
Class clazz = Class.forName(className);  // Noncompliant
</pre>
<h2>See</h2>
<ul>
  <li> OWASP Top 10 2017 Category A1 - Injection </li>
</ul>ZVULNERABILITY
Û
squid:S1948„
squidS1948KFields in a "Serializable" class should either be transient or serializable"CRITICAL*java:È<p>Fields in a <code>Serializable</code> class must themselves be either <code>Serializable</code> or <code>transient</code> even if the class is
never explicitly serialized or deserialized. For instance, under load, most J2EE application frameworks flush objects to disk, and an allegedly
<code>Serializable</code> object with non-transient, non-serializable data members could cause program crashes, and open the door to attackers. In
general a <code>Serializable</code> class is expected to fulfil its contract and not have an unexpected behaviour when an instance is serialized. </p>
<p>This rule raises an issue on non-<code>Serializable</code> fields, and on collection fields when they are not <code>private</code> (because they
could be assigned non-<code>Serializable</code> values externally), and when they are assigned non-<code>Serializable</code> types within the
class.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public class Address {
  //...
}

public class Person implements Serializable {
  private static final long serialVersionUID = 1905122041950251207L;

  private String name;
  private Address address;  // Noncompliant; Address isn't serializable
}
</pre>
<h2>Compliant Solution</h2>
<pre>
public class Address implements Serializable {
  private static final long serialVersionUID = 2405172041950251807L;
}

public class Person implements Serializable {
  private static final long serialVersionUID = 1905122041950251207L;

  private String name;
  private Address address;
}
</pre>
<h2>Exceptions</h2>
<p>The alternative to making all members <code>serializable</code> or <code>transient</code> is to implement special methods which take on the
responsibility of properly serializing and de-serializing the object. This rule ignores classes which implement the following methods:</p>
<pre>
 private void writeObject(java.io.ObjectOutputStream out)
     throws IOException
 private void readObject(java.io.ObjectInputStream in)
     throws IOException, ClassNotFoundException;
</pre>
<h2>See</h2>
<ul>
  <li> <a href="http://cwe.mitre.org/data/definitions/594.html">MITRE, CWE-594</a> - Saving Unserializable Objects to Disk </li>
  <li> <a href="http://docs.oracle.com/javase/6/docs/api/java/io/Serializable.html">Oracle Java 6, Serializable</a> </li>
  <li> <a href="http://docs.oracle.com/javase/7/docs/api/java/io/Serializable.html">Oracle Java 7, Serializable</a> </li>
</ul>Z
CODE_SMELL
Á
squid:S1821◊
squidS1821("switch" statements should not be nested"CRITICAL*java:Ä<p>Nested <code>switch</code> structures are difficult to understand because you can easily confuse the cases of an inner <code>switch</code> as
belonging to an outer statement. Therefore nested <code>switch</code> statements should be avoided.</p>
<p>Specifically, you should structure your code to avoid the need for nested <code>switch</code> statements, but if you cannot, then consider moving
the inner <code>switch</code> to another function.</p>
<h2>Noncompliant Code Example</h2>
<pre>
void foo(int n, int m) {
  switch (n) {
    case 0:
      switch (m) {  // Noncompliant; nested switch
        // ...
      }
    case 1:
      // ...
    default:
      // ...
  }
}
</pre>
<h2>Compliant Solution</h2>
<pre>
void foo(int n, int m) {
  switch (n) {
    case 0:
      bar(m);
    case 1:
      // ...
    default:
      // ...
  }
}

void bar(int m){
  switch(m) {
    // ...
  }
}
</pre>Z
CODE_SMELL
Ñ
"squid:SwitchLastCaseIsDefaultCheck›
squidSwitchLastCaseIsDefaultCheck1"switch" statements should have "default" clauses"CRITICAL*java2S131:‡<p>The requirement for a final <code>default</code> clause is defensive programming. The clause should either take appropriate action, or contain a
suitable comment as to why no action is taken.</p>
<h2>Noncompliant Code Example</h2>
<pre>
switch (param) {  //missing default clause
  case 0:
    doSomething();
    break;
  case 1:
    doSomethingElse();
    break;
}

switch (param) {
  default: // default clause should be the last one
    error();
    break;
  case 0:
    doSomething();
    break;
  case 1:
    doSomethingElse();
    break;
}
</pre>
<h2>Compliant Solution</h2>
<pre>
switch (param) {
  case 0:
    doSomething();
    break;
  case 1:
    doSomethingElse();
    break;
  default:
    error();
    break;
}
</pre>
<h2>Exceptions</h2>
<p>If the <code>switch</code> parameter is an <code>Enum</code> and if all the constants of this enum are used in the <code>case</code> statements,
then no <code>default</code> clause is expected.</p>
<p>Example:</p>
<pre>
public enum Day {
    SUNDAY, MONDAY
}
...
switch(day) {
  case SUNDAY:
    doSomething();
    break;
  case MONDAY:
    doSomethingElse();
    break;
}
</pre>
<h2>See</h2>
<ul>
  <li> MISRA C:2004, 15.0 - The MISRA C <em>switch</em> syntax shall be used. </li>
  <li> MISRA C:2004, 15.3 - The final clause of a switch statement shall be the default clause </li>
  <li> MISRA C++:2008, 6-4-3 - A switch statement shall be a well-formed switch statement. </li>
  <li> MISRA C++:2008, 6-4-6 - The final clause of a switch statement shall be the default-clause </li>
  <li> MISRA C:2012, 16.1 - All switch statements shall be well-formed </li>
  <li> MISRA C:2012, 16.4 - Every <em>switch</em> statement shall have a <em>default</em> label </li>
  <li> MISRA C:2012, 16.5 - A <em>default</em> label shall appear as either the first or the last <em>switch label</em> of a <em>switch</em> statement
  </li>
  <li> <a href="http://cwe.mitre.org/data/definitions/478.html">MITRE, CWE-478</a> - Missing Default Case in Switch Statement </li>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/YgE">CERT, MSC01-C.</a> - Strive for logical completeness </li>
</ul>Z
CODE_SMELL
É
squid:S2701Û
squidS27017Literal boolean values should not be used in assertions"CRITICAL*java:ç<p>There's no reason to use literal boolean values in assertions. Doing so is at best confusing for maintainers, and at worst a bug.</p>
<h2>Noncompliant Code Example</h2>
<pre>
Assert.assertTrue(true);  // Noncompliant
assertThat(true).isTrue(); // Noncompliant
</pre>Z
CODE_SMELL
‰	
squid:S1609‘	
squidS1609X@FunctionalInterface annotation should be used to flag Single Abstract Method interfaces"CRITICAL*java:Õ<p>A Single Abstract Method (SAM) interface is a Java interface containing only one method. The Java API is full of SAM interfaces, such as
<code>java.lang.Runnable</code>, <code>java.awt.event.ActionListener</code>, <code>java.util.Comparator</code> and
<code>java.util.concurrent.Callable</code>. SAM interfaces have a special place in Java 8 because they can be implemented using Lambda expressions or
Method references. </p>
<p>Using <code>@FunctionalInterface</code> forces a compile break when an additional, non-overriding abstract method is added to a SAM, which would
break the use of Lambda implementations.</p>
<p><strong>Note</strong> that this rule is automatically disabled when the project's <code>sonar.java.source</code> is lower than <code>8</code>.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public interface Changeable&lt;T&gt; {
  public void change(T o);
}
</pre>
<h2>Compliant Solution</h2>
<pre>
@FunctionalInterface
public interface Changeable&lt;T&gt; {
  public void change(T o);
}
</pre>
<h2>Deprecated</h2>
<p>This rule is deprecated, and will eventually be removed.</p>Z
CODE_SMELL
›

squid:S134Œ
squidS134`Control flow statements "if", "for", "while", "switch" and "try" should not be nested too deeply"CRITICAL*java:¿<p>Nested <code>if</code>, <code>for</code>, <code>while</code>, <code>switch</code>, and <code>try</code> statements are key ingredients for making
what's known as "Spaghetti code".</p>
<p>Such code is hard to read, refactor and therefore maintain.</p>
<h2>Noncompliant Code Example</h2>
<p>With the default threshold of 3:</p>
<pre>
if (condition1) {                  // Compliant - depth = 1
  /* ... */
  if (condition2) {                // Compliant - depth = 2
    /* ... */
    for(int i = 0; i &lt; 10; i++) {  // Compliant - depth = 3, not exceeding the limit
      /* ... */
      if (condition4) {            // Noncompliant - depth = 4
        if (condition5) {          // Depth = 5, exceeding the limit, but issues are only reported on depth = 4
          /* ... */
        }
        return;
      }
    }
  }
}
</pre>Z
CODE_SMELL
ë

squid:S126Ç
squidS126:"if ... else if" constructs should end with "else" clauses"CRITICAL*java:ö<p>This rule applies whenever an <code>if</code> statement is followed by one or more <code>else if</code> statements; the final <code>else if</code>
should be followed by an <code>else</code> statement.</p>
<p>The requirement for a final <code>else</code> statement is defensive programming.</p>
<p>The <code>else</code> statement should either take appropriate action or contain a suitable comment as to why no action is taken. This is
consistent with the requirement to have a final <code>default</code> clause in a <code>switch</code> statement.</p>
<h2>Noncompliant Code Example</h2>
<pre>
if (x == 0) {
  doSomething();
} else if (x == 1) {
  doSomethingElse();
}
</pre>
<h2>Compliant Solution</h2>
<pre>
if (x == 0) {
  doSomething();
} else if (x == 1) {
  doSomethingElse();
} else {
  throw new IllegalStateException();
}
</pre>
<h2>See</h2>
<ul>
  <li> MISRA C:2004, 14.10 - All if...else if constructs shall be terminated with an else clause. </li>
  <li> MISRA C++:2008, 6-4-2 - All if...else if constructs shall be terminated with an else clause. </li>
  <li> MISRA C:2012, 15.7 - All if...else if constructs shall be terminated with an else statement </li>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/YgE">CERT, MSC01-C.</a> - Strive for logical completeness </li>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/PQHRAw">CERT, MSC57-J.</a> - Strive for logical completeness </li>
</ul>Z
CODE_SMELL
Ø
 squid:MethodCyclomaticComplexityä
squidMethodCyclomaticComplexity!Methods should not be too complex"CRITICAL*java2S1541:û<p>The cyclomatic complexity of methods should not exceed a defined threshold.</p>
<p>Complex code can perform poorly and will in any case be difficult to understand and therefore to maintain.</p>
<h2>Exceptions</h2>
<p>While having a large number of fields in a class may indicate that it should be split, this rule nonetheless ignores high complexity in
<code>equals</code> and <code>hashCode</code> methods.</p>Z
CODE_SMELL
´
squid:S2186õ
squidS21864JUnit assertions should not be used in "run" methods"CRITICAL*java:∏<p>JUnit assertions should not be made from the <code>run</code> method of a <code>Runnable</code>, because failed assertions result in
<code>AssertionError</code>s being thrown. If the error is thrown from a thread other than the one that ran the test, the thread will exit but the
test won't fail.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public void run() {
  // ...
  Assert.assertEquals(expected, actual);  // Noncompliant
}
</pre>Z
CODE_SMELL
≈
squid:S2063µ
squidS2063$Comparators should be "Serializable""CRITICAL*java:‚<p>A non-serializable <code>Comparator</code> can prevent an otherwise-<code>Serializable</code> ordered collection from being serializable. Since the
overhead to make a <code>Comparator</code> serializable is usually low, doing so can be considered good defensive programming.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public class FruitComparator implements Comparator&lt;Fruit&gt; {  // Noncompliant
  int compare(Fruit f1, Fruit f2) {...}
  boolean equals(Object obj) {...}
}
</pre>
<h2>Compliant Solution</h2>
<pre>
public class FruitComparator implements Comparator&lt;Fruit&gt;, Serializable {
  private static final long serialVersionUID = 1;

  int compare(Fruit f1, Fruit f2) {...}
  boolean equals(Object obj) {...}
}
</pre>Z
CODE_SMELL
ë
squid:S2062Å
squidS2062+"readResolve" methods should be inheritable"CRITICAL*java:ß<p>The <code>readResolve()</code> method allows final tweaks to the state of an object during deserialization. Non-final classes which implement
<code>readResolve()</code>, should not set its visibility to <code>private</code> since it will then be unavailable to child classes.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public class Fruit implements Serializable {
  private static final long serialVersionUID = 1;

  private Object readResolve() throws ObjectStreamException  // Noncompliant
  {...}

  //...
}

public class Raspberry extends Fruit implements Serializable {  // No access to parent's readResolve() method
  //...
}
</pre>
<h2>Compliant Solution</h2>
<pre>
public class Fruit implements Serializable {
  private static final long serialVersionUID = 1;

  protected Object readResolve() throws ObjectStreamException
  {...}

  //...
}

public class Raspberry extends Fruit implements Serializable {
  //...
}
</pre>Z
CODE_SMELL
î
squid:S4499Ñ
squidS44990SMTP SSL connection should check server identity"CRITICAL*java:¢<p>This rule raises an issue when:</p>
<p>- a JavaMail's <code>javax.mail.Session</code> is created with a <code>Properties</code> object having no
<code>mail.smtp.ssl.checkserveridentity</code> or <code>mail.smtps.ssl.checkserveridentity</code> not configured to <code>true</code></p>
<p>- a Apache Common Emails's <code>org.apache.commons.mail.SimpleEmail</code> is used with <code>setSSLOnConnect(true)</code> or
<code>setStartTLSEnabled(true)</code> or <code>setStartTLSRequired(true)</code> without a call to <code>setSSLCheckServerIdentity(true)</code></p>
<h2>Noncompliant Code Example</h2>
<pre>
Email email = new SimpleEmail();
email.setSmtpPort(465);
email.setAuthenticator(new DefaultAuthenticator(username, password));
email.setSSLOnConnect(true); // Noncompliant; setSSLCheckServerIdentity(true) should also be called before sending the email
email.send();
</pre>
<pre>
Properties props = new Properties();
props.put("mail.smtp.host", "smtp.gmail.com");
props.put("mail.smtp.socketFactory.port", "465");
props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory"); // Noncompliant; Session is created without having "mail.smtp.ssl.checkserveridentity" set to true
props.put("mail.smtp.auth", "true");
props.put("mail.smtp.port", "465");
Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
  protected PasswordAuthentication getPasswordAuthentication() {
    return new PasswordAuthentication("username@gmail.com", "password");
  }
});
</pre>
<h2>Compliant Solution</h2>
<pre>
Email email = new SimpleEmail();
email.setSmtpPort(465);
email.setAuthenticator(new DefaultAuthenticator(username, password));
email.setSSLOnConnect(true);
email.setSSLCheckServerIdentity(true); // Compliant
email.send();
</pre>
<pre>
Properties props = new Properties();
props.put("mail.smtp.host", "smtp.gmail.com");
props.put("mail.smtp.socketFactory.port", "465");
props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
props.put("mail.smtp.auth", "true");
props.put("mail.smtp.port", "465");
props.put("mail.smtp.ssl.checkserveridentity", true); // Compliant
Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
  protected PasswordAuthentication getPasswordAuthentication() {
    return new PasswordAuthentication("username@gmail.com", "password");
  }
});
</pre>
<h2>See</h2>
<ul>
  <li> <a href="http://cwe.mitre.org/data/definitions/297.html">CWE-297</a> - Improper Validation of Certificate with Host Mismatch </li>
  <li> OWASP Top 10 2017 Category A3 - Sensitive Data Exposure </li>
</ul>ZVULNERABILITY
ﬁ
squid:S2197Œ
squidS21979Modulus results should not be checked for direct equality"CRITICAL*java:Ê<p>When the modulus of a negative number is calculated, the result will either be negative or zero. Thus, comparing the modulus of a variable for
equality with a positive number (or a negative one) could result in unexpected results. </p>
<h2>Noncompliant Code Example</h2>
<pre>
public boolean isOdd(int x) {
  return x % 2 == 1;  // Noncompliant; if x is an odd negative, x % 2 == -1
}
</pre>
<h2>Compliant Solution</h2>
<pre>
public boolean isOdd(int x) {
  return x % 2 != 0;
}
</pre>
<h2>See</h2>
<ul>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/xAHAAQ">CERT, NUM51-J.</a> - Do not assume that the remainder operator always returns a
  nonnegative result for integral operands </li>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/NQBi">CERT, INT10-C</a> - Do not assume a positive remainder when using the % operator
  </li>
</ul>Z
CODE_SMELL
ç
squid:S2070˝
squidS2070NSHA-1 and Message-Digest hash algorithms should not be used in secure contexts"CRITICAL*java:˝<p>The MD5 algorithm and its successor, SHA-1, are no longer considered secure, because it is too easy to create hash collisions with them. That is,
it takes too little computational effort to come up with a different input that produces the same MD5 or SHA-1 hash, and using the new, same-hash
value gives an attacker the same access as if he had the originally-hashed value. This applies as well to the other Message-Digest algorithms: MD2,
MD4, MD6, HAVAL-128, HMAC-MD5, DSA (which uses SHA-1), RIPEMD, RIPEMD-128, RIPEMD-160, HMACRIPEMD160.</p>
<p>The following APIs are tracked for use of obsolete crypto algorithms:</p>
<p> * <code>java.security.AlgorithmParameters</code> (JDK)</p>
<p> * <code>java.security.AlgorithmParameterGenerator</code> (JDK)</p>
<p> * <code>java.security.MessageDigest</code> (JDK)</p>
<p> * <code>java.security.KeyFactory</code> (JDK)</p>
<p> * <code>java.security.KeyPairGenerator</code> (JDK)</p>
<p> * <code>java.security.Signature</code> (JDK)</p>
<p> * <code>javax.crypto.Mac</code> (JDK)</p>
<p> * <code>javax.crypto.KeyGenerator</code> (JDK)</p>
<p> * <code>org.apache.commons.codec.digest.DigestUtils</code> (Apache Commons Codec)</p>
<p> * <code>com.google.common.hash.Hashing</code> (Guava)</p>
<p> * <code>org.springframework.security.authentication.encoding.ShaPasswordEncoder</code> (Spring Security 4.2.x)</p>
<p> * <code>org.springframework.security.authentication.encoding.Md5PasswordEncoder</code> (Spring Security 4.2.x)</p>
<p> * <code>org.springframework.security.crypto.password.LdapShaPasswordEncoder</code> (Spring Security 5.0.x)</p>
<p> * <code>org.springframework.security.crypto.password.Md4PasswordEncoder</code> (Spring Security 5.0.x)</p>
<p> * <code>org.springframework.security.crypto.password.MessageDigestPasswordEncoder</code> (Spring Security 5.0.x)</p>
<p> * <code>org.springframework.security.crypto.password.NoOpPasswordEncoder</code> (Spring Security 5.0.x)</p>
<p> * <code>org.springframework.security.crypto.password.StandardPasswordEncoder</code> (Spring Security 5.0.x)</p>
<p>Consider using safer alternatives, such as SHA-256, SHA-3 or adaptive one way functions like bcrypt or PBKDF2.</p>
<h2>Noncompliant Code Example</h2>
<pre>
MessageDigest md = MessageDigest.getInstance("SHA1");  // Noncompliant
</pre>
<h2>Compliant Solution</h2>
<pre>
MessageDigest md = MessageDigest.getInstance("SHA-256");
</pre>
<h2>See</h2>
<ul>
  <li> <a href="http://cwe.mitre.org/data/definitions/328">MITRE, CWE-328</a> - Reversible One-Way Hash </li>
  <li> <a href="http://cwe.mitre.org/data/definitions/327">MITRE, CWE-327</a> - Use of a Broken or Risky Cryptographic Algorithm </li>
  <li> OWASP Top 10 2017 Category A6 - Security Misconfiguration </li>
  <li> <a href="https://www.sans.org/top25-software-errors/#cat3">SANS Top 25</a> - Porous Defenses </li>
  <li> <a href="http://shattered.io/">SHAttered</a> - The first concrete collision attack against SHA-1. </li>
</ul>ZVULNERABILITY
ø
squid:S4347Ø
squidS4347."SecureRandom" seeds should not be predictable"CRITICAL*java:œ<p>The <code>java.security.SecureRandom</code> class provides a strong random number generator (RNG) appropriate for cryptography. However, seeding it
with a constant or another predictable value will weaken it significantly. In general, it is much safer to rely on the seed provided by the
<code>SecureRandom</code> implementation.</p>
<p>This rule raises an issue when <code>SecureRandom.setSeed()</code> or <code>SecureRandom(byte[])</code> are called with a seed that is either
of:</p>
<ul>
  <li> a constant </li>
  <li> <code>System.currentTimeMillis()</code> </li>
</ul>
<h2>Noncompliant Code Example</h2>
<pre>
SecureRandom sr = new SecureRandom();
sr.setSeed(123456L); // Noncompliant
int v = sr.next(32);

sr = new SecureRandom("abcdefghijklmnop".getBytes("us-ascii")); // Noncompliant
v = sr.next(32);
</pre>
<h2>Compliant Solution</h2>
<pre>
SecureRandom sr = new SecureRandom();
int v = sr.next(32);
</pre>
<h2>See</h2>
<ul>
  <li> <a href="http://cwe.mitre.org/data/definitions/330.html">MITRE, CWE-330</a> - Use of Insufficiently Random Values </li>
  <li> <a href="http://cwe.mitre.org/data/definitions/332.html">MITRE, CWE-332</a> - Insufficient Entropy in PRNG </li>
  <li> <a href="http://cwe.mitre.org/data/definitions/336.html">MITRE, CWE-336</a> - Same Seed in Pseudo-Random Number Generator (PRNG) </li>
  <li> <a href="http://cwe.mitre.org/data/definitions/337.html">MITRE, CWE-337</a> - Predictable Seed in Pseudo-Random Number Generator (PRNG) </li>
  <li> OWASP Top 10 2017 Category A6 - Security Misconfiguration </li>
  <li> <a href="https://wiki.sei.cmu.edu/confluence/display/java/MSC63-J.+Ensure+that+SecureRandom+is+properly+seeded">CERT, MSC63J.</a> - Ensure that
  SecureRandom is properly seeded </li>
</ul>ZVULNERABILITY
ó
squid:S1192á
squidS1192(String literals should not be duplicated"CRITICAL*java:∞
<p>Duplicated string literals make the process of refactoring error-prone, since you must be sure to update all occurrences.</p>
<p>On the other hand, constants can be referenced from many places, but only need to be updated in a single place.</p>
<h2>Noncompliant Code Example</h2>
<p>With the default threshold of 3:</p>
<pre>
public void run() {
  prepare("action1");                              // Noncompliant - "action1" is duplicated 3 times
  execute("action1");
  release("action1");
}

@SuppressWarning("all")                            // Compliant - annotations are excluded
private void method1() { /* ... */ }
@SuppressWarning("all")
private void method2() { /* ... */ }

public String method3(String a) {
  System.out.println("'" + a + "'");               // Compliant - literal "'" has less than 5 characters and is excluded
  return "";                                       // Compliant - literal "" has less than 5 characters and is excluded
}
</pre>
<h2>Compliant Solution</h2>
<pre>
private static final String ACTION_1 = "action1";  // Compliant

public void run() {
  prepare(ACTION_1);                               // Compliant
  execute(ACTION_1);
  release(ACTION_1);
}
</pre>
<h2>Exceptions</h2>
<p>To prevent generating some false-positives, literals having less than 5 characters are excluded.</p>Z
CODE_SMELL
è
squid:S2057ˇ
squidS20577"Serializable" classes should have a "serialVersionUID""CRITICAL*java:ô<p>A <code>serialVersionUID</code> field is strongly recommended in all <code>Serializable</code> classes. If you do not provide one, one will be
calculated for you by the compiler. The danger in not explicitly choosing the value is that when the class changes, the compiler will generate an
entirely new id, and you will be suddenly unable to deserialize (read from file) objects that were serialized with the previous version of the
class.</p>
<p><code>serialVersionUID</code>'s should be declared with all of these modifiers: <code>static final long</code>.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public class Raspberry extends Fruit  // Noncompliant; no serialVersionUID.
        implements Serializable {
  private String variety;

  public Raspberry(Season ripe, String variety) { ...}
  public void setVariety(String variety) {...}
  public String getVarity() {...}
}

public class Raspberry extends Fruit
        implements Serializable {
  private final int serialVersionUID = 1; // Noncompliant; not static &amp; int rather than long
</pre>
<h2>Compliant Solution</h2>
<pre>
public class Raspberry extends Fruit
        implements Serializable {
  private static final long serialVersionUID = 1;
  private String variety;

  public Raspberry(Season ripe, String variety) { ...}
  public void setVariety(String variety) {...}
  public String getVarity() {...}
}
</pre>
<h2>Exceptions</h2>
<p>Swing and AWT classes, <code>abstract</code> classes, <code>Throwable</code> and its subclasses (<code>Exception</code>s and <code>Error</code>s),
and classes marked with <code>@SuppressWarnings("serial")</code> are ignored.</p>
<h2>See</h2>
<ul>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/NYCpAQ">CERT, SER00-J.</a> - Enable serialization compatibility during class evolution
  </li>
</ul>Z
CODE_SMELL
§
squid:S2176î
squidS21768Class names should not shadow interfaces or superclasses"CRITICAL*java:≠<p>While it's perfectly legal to give a class the same simple name as a class in another package that it extends or interface it implements, it's
confusing and could cause problems in the future. </p>
<h2>Noncompliant Code Example</h2>
<pre>
package my.mypackage;

public class Foo implements a.b.Foo { // Noncompliant
</pre>
<h2>Compliant Solution</h2>
<pre>
package my.mypackage;

public class FooJr implements a.b.Foo {
</pre>Z
CODE_SMELL
„	
squid:S2089”	
squidS2089%HTTP referers should not be relied on"CRITICAL*java:¸<p>The fields in an HTTP request are putty in the hands of an attacker, and you cannot rely on them to tell you the truth about anything. While it may
be safe to store such values after they have been neutralized, decisions should never be made based on their contents.</p>
<p>This rule flags uses of the referer header field.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public class MyServlet extends HttpServlet {
  protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
    String referer = request.getHeader("referer");  // Noncompliant
    if(isTrustedReferer(referer)){
      //..
    }
    //...
  }
}
</pre>
<h2>See</h2>
<ul>
  <li> <a href="http://cwe.mitre.org/data/definitions/807">MITRE, CWE-807</a> - Reliance on Untrusted Inputs in a Security Decision </li>
  <li> <a href="http://cwe.mitre.org/data/definitions/293">MITRE, CWE-293</a> - Using Referer Field for Authentication </li>
  <li> OWASP Top 10 2017 Category A2 - Broken Authentication </li>
  <li> <a href="https://www.sans.org/top25-software-errors/#cat3">SANS Top 25</a> - Porous Defenses </li>
</ul>ZVULNERABILITY
û

squid:S888è
squidS888JEquality operators should not be used in "for" loop termination conditions"CRITICAL*java:ó<p>Testing <code>for</code> loop termination using an equality operator (<code>==</code> and <code>!=</code>) is dangerous, because it could set up an
infinite loop. Using a broader relational operator instead casts a wider net, and makes it harder (but not impossible) to accidentally write an
infinite loop.</p>
<h2>Noncompliant Code Example</h2>
<pre>
for (int i = 1; i != 10; i += 2)  // Noncompliant. Infinite; i goes from 9 straight to 11.
{
  //...
}
</pre>
<h2>Compliant Solution</h2>
<pre>
for (int i = 1; i &lt;= 10; i += 2)  // Compliant
{
  //...
}
</pre>
<h2>Exceptions</h2>
<p>Equality operators are ignored if the loop counter is not modified within the body of the loop and either:</p>
<ul>
  <li> starts below the ending value and is incremented by 1 on each iteration. </li>
  <li> starts above the ending value and is decremented by 1 on each iteration. </li>
</ul>
<p>Equality operators are also ignored when the test is against <code>null</code>.</p>
<pre>
for (int i = 0; arr[i] != null; i++) {
  // ...
}

for (int i = 0; (item = arr[i]) != null; i++) {
  // ...
}
</pre>
<h2>See</h2>
<ul>
  <li> MISRA C++:2008, 6-5-2 </li>
  <li> <a href="http://cwe.mitre.org/data/definitions/835">MITRE, CWE-835</a> - Loop with Unreachable Exit Condition ('Infinite Loop') </li>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/EwDJAQ">CERT, MSC21-C.</a> - Use robust loop termination conditions </li>
</ul>Z
CODE_SMELL
°	
squid:S4275ë	
squidS42755Getters and setters should access the expected fields"CRITICAL*java:¥<p>Getters and setters provide a way to enforce encapsulation by providing <code>public</code> methods that give controlled access to
<code>private</code> fields. However in classes with multiple fields it is not unusual that cut and paste is used to quickly create the needed getters
and setters, which can result in the wrong field being accessed by a getter or setter.</p>
<p>This rule raises an issue in any of these cases:</p>
<ul>
  <li> A setter does not update the field with the corresponding name. </li>
  <li> A getter does not access the field with the corresponding name. </li>
</ul>
<h2>Noncompliant Code Example</h2>
<pre>
class A {
  private int x;
  private int y;

  public void setX(int val) { // Noncompliant: field 'x' is not updated
    this.y = val;
  }

  public int getY() { // Noncompliant: field 'y' is not used in the return value
    return this.x;
  }
}
</pre>
<h2>Compliant Solution</h2>
<pre>
class A {
  private int x;
  private int y;

  public void setX(int val) {
    this.x = val;
  }

  public int getY() {
    return this.y;
  }
}
</pre>ZBUG
»
squid:S2093∏
squidS2093!Try-with-resources should be used"CRITICAL*java:Ë<p>Java 7 introduced the try-with-resources statement, which guarantees that the resource in question will be closed. Since the new syntax is closer
to bullet-proof, it should be preferred over the older <code>try</code>/<code>catch</code>/<code>finally</code> version.</p>
<p>This rule checks that <code>close</code>-able resources are opened in a try-with-resources statement.</p>
<p><strong>Note</strong> that this rule is automatically disabled when the project's <code>sonar.java.source</code> is lower than <code>7</code>.</p>
<h2>Noncompliant Code Example</h2>
<pre>
FileReader fr = null;
BufferedReader br = null;
try {
  fr = new FileReader(fileName);
  br = new BufferedReader(fr);
  return br.readLine();
} catch (...) {
} finally {
  if (br != null) {
    try {
      br.close();
    } catch(IOException e){...}
  }
  if (fr != null ) {
    try {
      br.close();
    } catch(IOException e){...}
  }
}
</pre>
<h2>Compliant Solution</h2>
<pre>
try (
    FileReader fr = new FileReader(fileName);
    BufferedReader br = new BufferedReader(fr)
  ) {
  return br.readLine();
}
catch (...) {}
</pre>
<p>or</p>
<pre>
try (BufferedReader br =
        new BufferedReader(new FileReader(fileName))) { // no need to name intermediate resources if you don't want to
  return br.readLine();
}
catch (...) {}
</pre>
<h2>See</h2>
<ul>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/MACfBg">CERT, ERR54-J.</a> - Use a try-with-resources statement to safely handle
  closeable resources </li>
</ul>Z
CODE_SMELL
¶
	xml:S1778ò
xmlS1778IXML files containing a prolog header should start with "<?xml" characters"CRITICAL*xml:™<p>The prolog header is the following piece of code that some XML documents start with:</p>
<pre>
&lt;?xml version="y.x" encoding="zzzzz"?&gt;
</pre>
<p>When the prolog exists in an XML document, it should be at the beginning of the file to enable programs to determine the encoding of non-UTF-8,
non-UTF-16 files.</p>
<h2>Noncompliant Code Example</h2>
<pre>
&lt;!-- Generated file --&gt;  &lt;!--  Noncompliant  --&gt;
&lt;?xml version="1.0" encoding="UTF-8"?&gt;
&lt;firstNode&gt;
  content
&lt;/firstNode&gt;
</pre>
<h2>Compliant Solution</h2>
<pre>
&lt;?xml version="1.0" encoding="UTF-8"?&gt;
&lt;!-- Generated file --&gt;
&lt;firstNode&gt;
  content
&lt;/firstNode&gt;
</pre>ZBUG
ƒ
squid:S2229¥
squidS2229TMethods should not call same-class methods with incompatible "@Transactional" values"BLOCKER*java:π<p>When using Spring proxies, calling a method in the same class (e.g. <code>this.aMethod()</code>) with an incompatible <code>@Transactional</code>
requirement will result in runtime exceptions because Spring only "sees" the caller and makes no provisions for properly invoking the callee. </p>
<p>Therefore, certain calls should never be made within the same class:</p>
<table>
  <tbody>
    <tr>
      <th>From</th>
      <th>To</th>
    </tr>
    <tr>
      <td> non-<code>@Transactional</code> </td>
      <td> MANDATORY, NESTED, REQUIRED, REQUIRES_NEW </td>
    </tr>
    <tr>
      <td> MANDATORY </td>
      <td> NESTED, NEVER, NOT_SUPPORTED, REQUIRES_NEW </td>
    </tr>
    <tr>
      <td> NESTED </td>
      <td> NESTED, NEVER, NOT_SUPPORTED, REQUIRES_NEW </td>
    </tr>
    <tr>
      <td> NEVER </td>
      <td> MANDATORY, NESTED, REQUIRED, REQUIRES_NEW </td>
    </tr>
    <tr>
      <td> NOT_SUPPORTED </td>
      <td> MANDATORY, NESTED, REQUIRED, REQUIRES_NEW </td>
    </tr>
    <tr>
      <td> REQUIRED or <code>@Transactional</code> </td>
      <td> NESTED, NEVER, NOT_SUPPORTED, REQUIRES_NEW </td>
    </tr>
    <tr>
      <td> REQUIRES_NEW </td>
      <td> NESTED, NEVER, NOT_SUPPORTED, REQUIRES_NEW </td>
    </tr>
    <tr>
      <td> SUPPORTS </td>
      <td> MANDATORY, NESTED, NEVER, NOT_SUPPORTED, REQUIRED, REQUIRES_NEW </td>
    </tr>
  </tbody>
</table>
<h2>Noncompliant Code Example</h2>
<pre>

@Override
public void doTheThing() {
  // ...
  actuallyDoTheThing();  // Noncompliant
}

@Override
@Transactional
public void actuallyDoTheThing() {
  // ...
}
</pre>ZBUG
ä
squid:S2115˙

squidS2115&Databases should be password-protected"BLOCKER*java:£
<p>Failure to password-protect a database is so careless or naive as to be almost negligent. Databases should always be password protected, but the
use of a database connection with an empty password is a clear indication of a database that is not protected.</p>
<p>This rule flags database connections with empty passwords.</p>
<h2>Noncompliant Code Example</h2>
<pre>
Connection conn = DriverManager.getConnection("jdbc:derby:memory:myDB;create=true", "AppLogin", "");
Connection conn2 = DriverManager.getConnection("jdbc:derby:memory:myDB;create=true?user=user&amp;password=");
</pre>
<h2>Compliant Solution</h2>
<pre>
DriverManager.getConnection("jdbc:derby:memory:myDB;create=true?user=user&amp;password=password");

DriverManager.getConnection("jdbc:mysql://address=(host=myhost1)(port=1111)(key1=value1)(user=sandy)(password=secret),address=(host=myhost2)(port=2222)(key2=value2)(user=sandy)(password=secret)/db");

DriverManager.getConnection("jdbc:mysql://sandy:secret@[myhost1:1111,myhost2:2222]/db");

String url = "jdbc:postgresql://localhost/test";
Properties props = new Properties();
props.setProperty("user", "fred");
props.setProperty("password", "secret");
DriverManager.getConnection(url, props);
</pre>
<h2>See</h2>
<ul>
  <li> OWASP Top 10 2017 Category A3 - Sensitive Data Exposure </li>
</ul>ZVULNERABILITY
ö
squid:S2236ä
squidS2236ZMethods "wait(...)", "notify()" and "notifyAll()" should not be called on Thread instances"BLOCKER*java:â<p>The methods <code>wait(...)</code>, <code>notify()</code> and <code>notifyAll()</code> are available on a <code>Thread</code> instance, but only
because all classes in Java extend <code>Object</code> and therefore automatically inherit those methods. But there are two very good reasons for not
calling them on a <code>Thread</code>:</p>
<ul>
  <li> Internally, the JVM relies on these methods to change the state of the Thread (<code>BLOCKED</code>, <code>WAITING</code>, ...), so calling
  them will corrupt the behavior of the JVM. </li>
  <li> It is not clear (perhaps even to the original coder) what is really expected. For instance, it is waiting for the execution of the Thread to
  suspended, or is it the acquisition of the object monitor that is waited for? </li>
</ul>
<h2>Noncompliant Code Example</h2>
<pre>
Thread myThread = new Thread(new RunnableJob());
...
myThread.wait(2000);
</pre>ZBUG
‹
squid:S1147Ã
squidS1147!Exit methods should not be called"BLOCKER*java:˝<p>Calling <code>System.exit(int status)</code> or <code>Rutime.getRuntime().exit(int status)</code> calls the shutdown hooks and shuts downs the
entire Java virtual machine. Calling <code>Runtime.getRuntime().halt(int)</code> does an immediate shutdown, without calling the shutdown hooks, and
skipping finalization.</p>
<p>Each of these methods should be used with extreme care, and only when the intent is to stop the whole Java process. For instance, none of them
should be called from applications running in a J2EE container.</p>
<h2>Noncompliant Code Example</h2>
<pre>
System.exit(0);
Runtime.getRuntime().exit(0);
Runtime.getRuntime().halt(0);
</pre>
<h2>Exceptions</h2>
<p>These methods are ignored inside <code>main</code>.</p>
<h2>See</h2>
<ul>
  <li> <a href="http://cwe.mitre.org/data/definitions/382.html">MITRE, CWE-382</a> - Use of System.exit() </li>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/PoYbAQ">CERT, ERR09-J.</a> - Do not allow untrusted code to terminate the JVM </li>
</ul>Z
CODE_SMELL
Ã
squid:S2689º
squidS2689FFiles opened in append mode should not be used with ObjectOutputStream"BLOCKER*java:œ<p><code>ObjectOutputStream</code>s are used with serialization, and the first thing an <code>ObjectOutputStream</code> writes is the serialization
stream header. This header should appear once per file, at the beginning. Pass a file opened in append mode into an <code>ObjectOutputStream</code>
constructor and the serialization stream header will be added to the end of the file before your object is then also appended.</p>
<p>When you're trying to read your object(s) back from the file, only the first one will be read successfully, and a
<code>StreamCorruptedException</code> will be thrown after that.</p>
<h2>Noncompliant Code Example</h2>
<pre>
FileOutputStream fos = new FileOutputStream (fileName , true);  // fos opened in append mode
ObjectOutputStream out = new ObjectOutputStream(fos);  // Noncompliant
</pre>
<h2>Compliant Solution</h2>
<pre>
FileOutputStream fos = new FileOutputStream (fileName);
ObjectOutputStream out = new ObjectOutputStream(fos);
</pre>ZBUG
ò
squid:S2699à
squidS2699Tests should include assertions"BLOCKER*java:ª<p>A test case without assertions ensures only that no exceptions are thrown. Beyond basic runnability, it ensures nothing about the behavior of the
code under test.</p>
<p>This rule raises an exception when no assertions from any of the following known frameworks are found in a test:</p>
<ul>
  <li> JUnit </li>
  <li> Fest 1.x </li>
  <li> Fest 2.x </li>
  <li> Rest-assured 2.0 </li>
  <li> AssertJ </li>
  <li> Hamcrest </li>
  <li> Spring's <code>org.springframework.test.web.servlet.ResultActions.andExpect()</code> </li>
  <li> Eclipse Vert.x </li>
  <li> Truth Framework </li>
  <li> Mockito </li>
  <li> EasyMock </li>
  <li> JMock </li>
  <li> WireMock </li>
  <li> RxJava 1.x </li>
  <li> RxJava 2.x </li>
  <li> Selenide </li>
  <li> JMockit </li>
</ul>
<p>Furthermore, as new or custom assertion frameworks may be used, the rule can be parametrized to define specific methods that will also be
considered as assertions. No issue will be raised when such methods are found in test cases. The parameter value should have the following format
<code>&lt;FullyQualifiedClassName&gt;#&lt;MethodName&gt;</code>, where <code>MethodName</code> can end with the wildcard character. For constructors,
the pattern should be <code>&lt;FullyQualifiedClassName&gt;#&lt;init&gt;</code>.</p>
<p>Example:&nbsp;<code>com.company.CompareToTester#compare*,com.company.CustomAssert#customAssertMethod,com.company.CheckVerifier#&lt;init&gt;</code>.</p>
<h2>Noncompliant Code Example</h2>
<pre>
@Test
public void testDoSomething() {  // Noncompliant
  MyClass myClass = new MyClass();
  myClass.doSomething();
}
</pre>
<h2>Compliant Solution</h2>
<p>Example when <code>com.company.CompareToTester#compare*</code> is used as parameter to the rule.</p>
<pre>
import com.company.CompareToTester;

@Test
public void testDoSomething() {
  MyClass myClass = new MyClass();
  assertNull(myClass.doSomething());  // JUnit assertion
  assertThat(myClass.doSomething()).isNull();  // Fest assertion
}

@Test
public void testDoSomethingElse() {
  MyClass myClass = new MyClass();
  new CompareToTester().compareWith(myClass);  // Compliant - custom assertion method defined as rule parameter
  CompareToTester.compareStatic(myClass);  // Compliant
}
</pre>Z
CODE_SMELL
î
squid:S3546Ñ
squidS3546!Custom resources should be closed"BLOCKER*java:∫<p>Leaking resources in an application is never a good idea, as it can lead to memory issues, and even the crash of the application. This rule
template allows you to specify which constructions open a resource and how it is closed in order to raise issue within a method scope when custom
resources are leaked.</p>
<h2>See also</h2>
<ul>
  <li> <a href='/coding_rules#rule_key=squid%3AS2095'>S2095</a> - Resources should be closed </li>
</ul>@ZBUG
Á
squid:S2695◊
squidS2695O"PreparedStatement" and "ResultSet" methods should be called with valid indices"BLOCKER*java:·<p>The parameters in a <code>PreparedStatement</code> are numbered from 1, not 0, so using any "set" method of a <code>PreparedStatement</code> with a
number less than 1 is a bug, as is using an index higher than the number of parameters. Similarly, <code>ResultSet</code> indices also start at 1,
rather than 0</p>
<h2>Noncompliant Code Example</h2>
<pre>
PreparedStatement ps = con.prepareStatement("SELECT fname, lname FROM employees where hireDate &gt; ? and salary &lt; ?");
ps.setDate(0, date);  // Noncompliant
ps.setDouble(3, salary);  // Noncompliant

ResultSet rs = ps.executeQuery();
while (rs.next()) {
  String fname = rs.getString(0);  // Noncompliant
  // ...
}
</pre>
<h2>Compliant Solution</h2>
<pre>
PreparedStatement ps = con.prepareStatement("SELECT fname, lname FROM employees where hireDate &gt; ? and salary &lt; ?");
ps.setDate(1, date);
ps.setDouble(2, salary);

ResultSet rs = ps.executeQuery();
while (rs.next()) {
  String fname = rs.getString(1);
  // ...
}
</pre>ZBUG
˛
squid:S2693Ó
squidS2693-Threads should not be started in constructors"BLOCKER*java:ì<p>The problem with invoking <code>Thread.start()</code> in a constructor is that you'll have a confusing mess on your hands if the class is ever
extended because the superclass' constructor will start the thread before the child class has truly been initialized.</p>
<p>This rule raises an issue any time <code>start</code> is invoked in the constructor of a non-<code>final</code> class.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public class MyClass {

  Thread thread = null;

  public MyClass(Runnable runnable) {
    thread = new Thread(runnable);
    thread.start(); // Noncompliant
  }
}
</pre>
<h2>See</h2>
<ul>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/ZQIRAg">CERT, TSM02-J.</a> - Do not use background threads during class initialization
  </li>
</ul>Z
CODE_SMELL
Í	
squid:S2387⁄	
squidS23878Child class fields should not shadow parent class fields"BLOCKER*java:Ù<p>Having a variable with the same name in two unrelated classes is fine, but do the same thing within a class hierarchy and you'll get confusion at
best, chaos at worst. </p>
<h2>Noncompliant Code Example</h2>
<pre>
public class Fruit {
  protected Season ripe;
  protected Color flesh;

  // ...
}

public class Raspberry extends Fruit {
  private boolean ripe;  // Noncompliant
  private static Color FLESH; // Noncompliant
}
</pre>
<h2>Compliant Solution</h2>
<pre>
public class Fruit {
  protected Season ripe;
  protected Color flesh;

  // ...
}

public class Raspberry extends Fruit {
  private boolean ripened;
  private static Color FLESH_COLOR;

}
</pre>
<h2>Exceptions</h2>
<p>This rule ignores same-name fields that are <code>static</code> in both the parent and child classes. This rule ignores <code>private</code> parent
class fields, but in all other such cases, the child class field should be renamed.</p>
<pre>
public class Fruit {
  private Season ripe;
  // ...
}

public class Raspberry extends Fruit {
  private Season ripe;  // Compliant as parent field 'ripe' is anyway not visible from Raspberry
  // ...
}
</pre>Z
CODE_SMELL
˛
squid:S3369Ó
squidS3369&Security constraints should be defined"BLOCKER*java:ó<p>Websphere, Tomcat, and JBoss web servers allow the definition of role-based access to servlets. It may not be granular enough for your purposes,
but it's a start, and should be used at least as a base.</p>
<p>This rule raises an issue when a <em>web.xml</em> file has no <code>&lt;security-constraint&gt;</code> elements.</p>
<h2>See</h2>
<ul>
  <li> <a href="https://cwe.mitre.org/data/definitions/284.html">MITRE, CWE-284</a> - Improper Access Control </li>
  <li> OWASP Top 10 2017 Category A5 - Broken Access Control </li>
</ul>ZVULNERABILITY
å
squid:S2276¸
squidS2276M"wait(...)" should be used instead of "Thread.sleep(...)" when a lock is held"BLOCKER*java:à<p>If <code>Thread.sleep(...)</code> is called when the current thread holds a lock, it could lead to performance and scalability issues, or even
worse to deadlocks because the execution of the thread holding the lock is frozen. It's better to call <code>wait(...)</code> on the monitor object to
temporarily release the lock and allow other threads to run.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public void doSomething(){
  synchronized(monitor) {
    while(notReady()){
      Thread.sleep(200);
    }
    process();
  }
  ...
}
</pre>
<h2>Compliant Solution</h2>
<pre>
public void doSomething(){
  synchronized(monitor) {
    while(notReady()){
      monitor.wait(200);
    }
    process();
  }
  ...
}
</pre>
<h2>See</h2>
<ul>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/FgG7AQ">CERT, LCK09-J.</a> - Do not perform operations that can block while holding a
  lock </li>
</ul>ZBUG
ü
squid:S2278è
squidS2278GNeither DES (Data Encryption Standard) nor DESede (3DES) should be used"BLOCKER*java:ó<p>According to the US National Institute of Standards and Technology (NIST), the Data Encryption Standard (DES) is no longer considered secure:</p>
<blockquote>
  <p>Adopted in 1977 for federal agencies to use in protecting sensitive, unclassified information, the DES is being withdrawn because it no longer
  provides the security that is needed to protect federal government information.</p>
  <p>Federal agencies are encouraged to use the Advanced Encryption Standard, a faster and stronger algorithm approved as FIPS 197 in 2001.</p>
</blockquote>
<p>For similar reasons, RC2 should also be avoided.</p>
<h2>Noncompliant Code Example</h2>
<pre>
Cipher c = Cipher.getInstance("DESede/ECB/PKCS5Padding");
</pre>
<h2>Compliant Solution</h2>
<pre>
Cipher c = Cipher.getInstance("AES/GCM/NoPadding");
</pre>
<h2>See</h2>
<ul>
  <li> <a href="http://cwe.mitre.org/data/definitions/326.html">MITRE, CWE-326</a> - Inadequate Encryption Strength </li>
  <li> <a href="http://cwe.mitre.org/data/definitions/327.html">MITRE, CWE-327</a> - Use of a Broken or Risky Cryptographic Algorithm </li>
  <li> OWASP Top 10 2017 Category A6 - Security Misconfiguration </li>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/VwAZAg">CERT, MSC61-J.</a> - Do not use insecure or weak cryptographic algorithms </li>
  <li> <a href="https://www.sans.org/top25-software-errors/#cat3">SANS Top 25</a> - Porous Defenses </li>
  <li> Derived from FindSecBugs rule <a href="http://h3xstream.github.io/find-sec-bugs/bugs.htm#DES_USAGE">DES / DESede Unsafe</a> </li>
</ul>ZVULNERABILITY
´
squid:S2275õ
squidS2275MPrintf-style format strings should not lead to unexpected behavior at runtime"BLOCKER*java:ß<p>Because <code>printf</code>-style format strings are interpreted at runtime, rather than validated by the Java compiler, they can contain errors
that lead to unexpected behavior or runtime errors. This rule statically validates the good behavior of <code>printf</code>-style formats when calling
the <code>format(...)</code> methods of <code>java.util.Formatter</code>, <code>java.lang.String</code>, <code>java.io.PrintStream</code>,
<code>MessageFormat</code>, and <code>java.io.PrintWriter</code> classes and the <code>printf(...)</code> methods of <code>java.io.PrintStream</code>
or <code>java.io.PrintWriter</code> classes. </p>
<h2>Noncompliant Code Example</h2>
<pre>
String.format("The value of my integer is %d", "Hello World");  // Noncompliant; an 'int' is expected rather than a String
String.format("Duke's Birthday year is %tX", c);  //Noncompliant; X is not a supported time conversion character
String.format("Display %0$d and then %d", 1);   //Noncompliant; arguments are numbered starting from 1
String.format("Not enough arguments %d and %d", 1);  //Noncompliant; the second argument is missing
String.format("%&lt; is equals to %d", 2);   //Noncompliant; the argument index '&lt;' refers to the previous format specifier but there isn't one

MessageFormat.format("Result {1}.", value); // Noncompliant; Not enough arguments. (first element is {0})
MessageFormat.format("Result {{0}.", value); // Noncompliant; Unbalanced number of curly brace (single curly braces should be escaped)
MessageFormat.format("Result ' {0}", value); // Noncompliant; Unbalanced number of quotes (single quote must be escaped)

java.util.logging.Logger logger;
logger.log(java.util.logging.Level.SEVERE, "Result {1}!", 14); // Noncompliant {{Not enough arguments.}}

org.slf4j.Logger slf4jLog;
org.slf4j.Marker marker;

slf4jLog.debug(marker, "message {}"); // Noncompliant {{Not enough arguments.}}
</pre>
<h2>Compliant Solution</h2>
<pre>
String.format("The value of my integer is %d", 3);
String.format("Duke's Birthday year is %tY", c);
String.format("Display %1$d and then %d", 1);
String.format("Not enough arguments %d and %d", 1, 2);
String.format("%d is equals to %&lt;", 2);

MessageFormat.format("Result {0}.", value);
MessageFormat.format("Result {0} &amp; {1}.", value, value);
MessageFormat.format("Result {0}.", myObject);

java.util.logging.Logger logger;
logger.log(java.util.logging.Level.SEVERE, "Result {1}!", 14, 2); // Noncompliant {{Not enough arguments.}}

org.slf4j.Logger slf4jLog;
org.slf4j.Marker marker;

slf4jLog.debug(marker, "message {}", 1);
</pre>
<h2>See</h2>
<ul>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/wQA1">CERT, FIO47-C.</a> - Use valid format strings </li>
</ul>ZBUG
¸
squid:S2391Ï
squidS23913JUnit framework methods should be declared properly"BLOCKER*java:ã<p>If the <code>suite</code> method in a JUnit 3 <code>TestCase</code> is not declared correctly, it will not be used. Such a method must be named
"suite", have no arguments, be <code>public static</code>, and must return either a <code>junit.framework.Test</code> or a
<code>junit.framework.TestSuite</code>.</p>
<p>Similarly, <code>setUp</code> and <code>tearDown</code> methods that aren't properly capitalized will also be ignored.</p>
<h2>Noncompliant Code Example</h2>
<pre>
Test suite() { ... }  // Noncompliant; must be public static
public static boolean suite() { ... }  // Noncompliant; wrong return type
public static Test suit() { ... }  // Noncompliant; typo in method name
public static Test suite(int count) { ... } // Noncompliant; must be no-arg

public void setup() { ... } // Noncompliant; should be setUp
public void tearDwon() { ... }  // Noncompliant; should be tearDown
</pre>
<h2>Compliant Solution</h2>
<pre>
public static Test suite() { ... }
public void setUp() { ... }
public void tearDown() { ... }
</pre>Z
CODE_SMELL
‹
squid:S4426Ã
squidS4426*Cryptographic keys should not be too short"BLOCKER*java:Ò
<p>When generating cryptographic keys (or key pairs), it is important to use a key length that provides enough entropy against brute-force attacks.
For the <code>Blowfish</code> algorithm the key should be at least 128 bits long, while for the <code>RSA</code> algorithm it should be at least 2048
bits long.</p>
<p>This rule raises an issue when a Blowfish key generator or RSA key-pair generator is initialized with too small a length parameter.</p>
<h2>Noncompliant Code Example</h2>
<pre>
KeyGenerator keyGen = KeyGenerator.getInstance("Blowfish");
keyGen.init(64); // Noncompliant

KeyPairGenerator keyPairGen = KeyPairGenerator.getInstance("RSA");
keyPairGen.initialize(512); // Noncompliant
</pre>
<h2>Compliant Solution</h2>
<pre>
KeyGenerator keyGen = KeyGenerator.getInstance("Blowfish");
keyGen.init(128);

KeyPairGenerator keyPairGen = KeyPairGenerator.getInstance("RSA");
keyPairGen.initialize(2048);
</pre>
<h2>See</h2>
<ul>
  <li> <a href="http://cwe.mitre.org/data/definitions/326.html">MITRE, CWE-326</a> - Inadequate Encryption Strength </li>
  <li> OWASP Top 10 2017 Category A3 - Sensitive Data Exposure </li>
  <li> Derived from FindSecBugs rule <a href="https://find-sec-bugs.github.io/bugs.htm#BLOWFISH_KEY_SIZE">BLOWFISH_KEY_SIZE</a> </li>
  <li> Derived from FindSecBugs rule <a href="https://find-sec-bugs.github.io/bugs.htm#RSA_KEY_SIZE">RSA_KEY_SIZE</a> </li>
</ul>ZVULNERABILITY
’
squid:S2258≈
squidS2258L"javax.crypto.NullCipher" should not be used for anything other than testing"BLOCKER*java:»<p>By contract, the <code>NullCipher</code> class provides an "identity cipher" <del></del> one that does not transform or encrypt the plaintext in
any way. As a consequence, the ciphertext is identical to the plaintext. So this class should be used for testing, and never in production code.</p>
<h2>Noncompliant Code Example</h2>
<pre>
NullCipher nc = new NullCipher();
</pre>
<h2>See</h2>
<ul>
  <li> <a href="http://cwe.mitre.org/data/definitions/327.html">CWE-327</a> - Use of a Broken or Risky Cryptographic Algorithm </li>
  <li> OWASP Top 10 2017 Category A6 - Security Misconfiguration </li>
  <li> <a href="https://www.sans.org/top25-software-errors/#cat3">SANS Top 25</a> - Porous Defenses </li>
</ul>ZVULNERABILITY
ˇ

squid:S4434Ô

squidS4434'LDAP deserialization should be disabled"BLOCKER*java:ó
<p>JNDI supports the deserialization of objects from LDAP directories, which is fundamentally insecure and can lead to remote code execution.</p>
<p>This rule raises an issue when an LDAP search query is executed with <code>SearchControls</code> configured to allow deserialization.</p>
<h2>Noncompliant Code Example</h2>
<pre>
DirContext ctx = new InitialDirContext();
// ...
ctx.search(query, filter,
        new SearchControls(scope, countLimit, timeLimit, attributes,
            true, // Noncompliant; allows deserialization
            deref));
</pre>
<h2>Compliant Solution</h2>
<pre>
DirContext ctx = new InitialDirContext();
// ...
ctx.search(query, filter,
        new SearchControls(scope, countLimit, timeLimit, attributes,
            false,
            deref));
</pre>
<h2>See</h2>
<ul>
  <li> <a href="https://cwe.mitre.org/data/definitions/502.html">MITRE, CWE-502</a> - Deserialization of Untrusted Data </li>
  <li> OWASP Top 10 2017 Category A8 - Insecure Deserialization </li>
  <li> <a href="https://www.blackhat.com/docs/us-16/materials/us-16-Munoz-A-Journey-From-JNDI-LDAP-Manipulation-To-RCE-wp.pdf">BlackHat
  presentation</a> </li>
  <li> Derived from FindSecBugs rule <a href="https://find-sec-bugs.github.io/bugs.htm#LDAP_ENTRY_POISONING">LDAP_ENTRY_POISONING</a> </li>
</ul>ZVULNERABILITY
¶
squid:S2755ñ
squidS27557Untrusted XML should be parsed with a local, static DTD"BLOCKER*java:Æ<p>Allowing external entities in untrusted documents to be processed could lay your systems bare to attackers. Imagine if these entities were
parsed:</p>
<pre>
&lt;!ENTITY xxe SYSTEM "file:///etc/passwd" &gt;]&gt;&lt;foo&gt;&amp;xxe;&lt;/foo&gt;
&lt;!ENTITY xxe SYSTEM "http://www.attacker.com/text.txt" &gt;]&gt;&lt;foo&gt;&amp;xxe;&lt;/foo&gt;
</pre>
<p>If you must parse untrusted XML, the best way to protect yourself is to use a local, static DTD during parsing and igore any DTD's included in
included in the document.</p>
<p>This rule raises an issue when any of the following are used without first disabling external entity processing:
<code>javax.xml.validation.Validator</code>, JAXP's <code>DocumentBuilderFactory</code>, <code>SAXParserFactory</code>, Xerces 1 and Xerces 2 StAX's
<code>XMLInputFactory</code> and <code>XMLReaderFactory</code>.</p>
<p>To disable external entity processing for <code>XMLInputFactory</code>, configure one of the properties
<code>XMLInputFactory.IS_SUPPORTING_EXTERNAL_ENTITIES</code> or <code>XMLInputFactory.SUPPORT_DTD</code> to false.</p>
<p>To disable external entity processing for <code>SAXParserFactory</code>, <code>XMLReader</code> or <code>DocumentBuilderFactory</code> configure
one of the properties <code>XMLConstants.FEATURE_SECURE_PROCESSING</code> or <code>"http://apache.org/xml/features/disallow-doctype-decl"</code> to
true.</p>
<p>To disable external entity processing for <code>Validator</code> , configure both properties <code>XMLConstants.ACCESS_EXTERNAL_DTD</code>,
<code>XMLConstants.ACCESS_EXTERNAL_SCHEMA</code> to the empty string <code>""</code>.</p>
<h2>Noncompliant Code Example</h2>
<pre>
/* Load XML stream and display content */
String maliciousSample = "xxe.xml";
XMLInputFactory factory = XMLInputFactory.newInstance();

try (FileInputStream fis = new FileInputStream(malicousSample)) {
  // Load XML stream
  XMLStreamReader xmlStreamReader = factory.createXMLStreamReader(fis);  // Noncompliant; reader is vulnerable

  //...
</pre>
<h2>Compliant Solution</h2>
<pre>
/* Load XML stream and display content */
String maliciousSample = "xxe.xml";
XMLInputFactory factory = XMLInputFactory.newInstance();

// disable external entities
factory.setProperty(XMLInputFactory.IS_SUPPORTING_EXTERNAL_ENTITIES, Boolean.FALSE);
factory.setProperty(XMLInputFactory.SUPPORT_DTD, Boolean.FALSE);

try (FileInputStream fis = new FileInputStream(malicousSample)) {
    // Load XML stream
    XMLStreamReader xmlStreamReader = factory.createXMLStreamReader(fis);
</pre>
<h2>See</h2>
<ul>
  <li> <a href="http://cwe.mitre.org/data/definitions/611.html">MITRE, CWE-611</a> - Information Exposure Through XML External Entity Reference </li>
  <li> <a href="http://cwe.mitre.org/data/definitions/827.html">MITRE, CWE-827</a> - Improper Control of Document Type Definition </li>
  <li> OWASP Top 10 2017 Category A1 - Injection </li>
  <li> OWASP Top 10 2017 Category A4 - XML External Entities (XXE) </li>
  <li> <a href="https://www.owasp.org/index.php/XML_External_Entity_(XXE)_Prevention_Cheat_Sheet">OWASP XXE Prevention Cheat Sheet</a> </li>
  <li> Derived from FindSecBugs rule <a href="https://find-sec-bugs.github.io/bugs.htm#XXE_XMLSTREAMREADER">XXE_XMLSTREAMREADER</a> </li>
  <li> Derived from FindSecBugs rule <a href="https://find-sec-bugs.github.io/bugs.htm#XXE_SAXPARSER">XXE_SAXPARSER</a> </li>
  <li> Derived from FindSecBugs rule <a href="https://find-sec-bugs.github.io/bugs.htm#XXE_XMLREADER">XXE_XMLREADER</a> </li>
  <li> Derived from FindSecBugs rule <a href="https://find-sec-bugs.github.io/bugs.htm#XXE_DOCUMENT">XXE_DOCUMENT</a> </li>
</ul>ZVULNERABILITY
˚
squid:S2970Î
squidS2970Assertions should be complete"BLOCKER*java:†<p>It is very easy to write incomplete assertions when using some test frameworks. This rule enforces complete assertions in the following cases:</p>
<ul>
  <li> Fest: <code>assertThat</code> is not followed by an assertion invocation </li>
  <li> AssertJ: <code>assertThat</code> is not followed by an assertion invocation </li>
  <li> Mockito: <code>verify</code> is not followed by a method invocation </li>
  <li> Truth: <code>assertXXX</code> is not followed by an assertion invocation </li>
</ul>
<p>In such cases, what is intended to be a test doesn't actually verify anything</p>
<h2>Noncompliant Code Example</h2>
<pre>
// Fest
boolean result = performAction();
// let's now check that result value is true
assertThat(result); // Noncompliant; nothing is actually checked, the test passes whether "result" is true or false

// Mockito
List mockedList = Mockito.mock(List.class);
mockedList.add("one");
mockedList.clear();
// let's check that "add" and "clear" methods are actually called
Mockito.verify(mockedList); // Noncompliant; nothing is checked here, oups no call is chained to verify()
</pre>
<h2>Compliant Solution</h2>
<pre>
// Fest
boolean result = performAction();
// let's now check that result value is true
assertThat(result).isTrue();

// Mockito
List mockedList = Mockito.mock(List.class);
mockedList.add("one");
mockedList.clear();
// let's check that "add" and "clear" methods are actually called
Mockito.verify(mockedList).add("one");
Mockito.verify(mockedList).clear();
</pre>
<h2>Exceptions</h2>
<p>Variable assignments and return statements are skipped to allow helper methods.</p>
<pre>
private BooleanAssert check(String filename, String key) {
  String fileContent = readFileContent(filename);
  performReplacements(fileContent);
  return assertThat(fileContent.contains(key)); // No issue is raised here
}

@Test
public void test() {
  check("foo.txt", "key1").isTrue();
  check("bar.txt", "key2").isTrue();
}
</pre>Z
CODE_SMELL
Ÿ
squid:S2975…
squidS2975 "clone" should not be overridden"BLOCKER*java:˚<p>Many consider <code>clone</code> and <code>Cloneable</code> broken in Java, largely because the rules for overriding <code>clone</code> are tricky
and difficult to get right, according to Joshua Bloch:</p>
<blockquote>
  Object's clone method is very tricky. It's based on field copies, and it's "extra-linguistic." It creates an object without calling a constructor.
  There are no guarantees that it preserves the invariants established by the constructors. There have been lots of bugs over the years, both in and
  outside Sun, stemming from the fact that if you just call super.clone repeatedly up the chain until you have cloned an object, you have a shallow
  copy of the object. The clone generally shares state with the object being cloned. If that state is mutable, you don't have two independent objects.
  If you modify one, the other changes as well. And all of a sudden, you get random behavior.
</blockquote>
<p>A copy constructor or copy factory should be used instead.</p>
<p>This rule raises an issue when <code>clone</code> is overridden, whether or not <code>Cloneable</code> is implemented.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public class MyClass {
  // ...

  public Object clone() { // Noncompliant
    //...
  }
}
</pre>
<h2>Compliant Solution</h2>
<pre>
public class MyClass {
  // ...

  MyClass (MyClass source) {
    //...
  }
}
</pre>
<h2>See</h2>
<ul>
  <li> <a href="http://www.artima.com/intv/bloch13.html">Copy Constructor versus Cloning</a> </li>
</ul>
<h3>See Also</h3>
<ul>
  <li> <a href='/coding_rules#rule_key=squid%3AS2157'>S2157</a> - "Cloneables" should implement "clone" </li>
  <li> <a href='/coding_rules#rule_key=squid%3AS1182'>S1182</a> - Classes that override "clone" should be "Cloneable" and call "super.clone()" </li>
</ul>Z
CODE_SMELL
ë
squid:S3510Å
squidS35107"HostnameVerifier.verify" should not always return true"BLOCKER*java:ô<p>To prevent URL spoofing, <code>HostnameVerifier.verify()</code> methods should do more than simply <code>return true</code>. Doing so may get you
quickly past an exception, but that comes at the cost of opening a security hole in your application. </p>
<h2>Noncompliant Code Example</h2>
<pre>
SSLContext sslcontext = SSLContext.getInstance( "TLS" );
sslcontext.init(null, new TrustManager[]{new X509TrustManager() {
  public void checkClientTrusted(X509Certificate[] arg0, String arg1) throws CertificateException {}
  public void checkServerTrusted(X509Certificate[] arg0, String arg1) throws CertificateException {}
  public X509Certificate[] getAcceptedIssuers() { return new X509Certificate[0]; }

}}, new java.security.SecureRandom());

Client client = ClientBuilder.newBuilder().sslContext(sslcontext).hostnameVerifier(new HostnameVerifier() {
  @Override
  public boolean verify(String requestedHost, SSLSession remoteServerSession) {
    return true;  // Noncompliant
  }
}).build();
</pre>
<h2>Compliant Solution</h2>
<pre>
SSLContext sslcontext = SSLContext.getInstance( "TLSv1.2" );
sslcontext.init(null, new TrustManager[]{new X509TrustManager() {
  @Override
  public void checkClientTrusted(X509Certificate[] arg0, String arg1) throws CertificateException {}
  @Override
  public void checkServerTrusted(X509Certificate[] arg0, String arg1) throws CertificateException {}
  @Override
  public X509Certificate[] getAcceptedIssuers() { return new X509Certificate[0]; }

}}, new java.security.SecureRandom());

Client client = ClientBuilder.newBuilder().sslContext(sslcontext).hostnameVerifier(new HostnameVerifier() {
  @Override
  public boolean verify(String requestedHost, SSLSession remoteServerSession) {
    return requestedHost.equalsIgnoreCase(remoteServerSession.getPeerHost()); // Compliant
  }
}).build();
</pre>
<h2>See</h2>
<ul>
  <li> <a href="http://cwe.mitre.org/data/definitions/295.html">MITRE, CWE-295</a> - Improper Certificate Validation </li>
  <li> OWASP Top 10 2017 Category A6 - Security Misconfiguration </li>
  <li> Derived from FindSecBugs rule <a href="https://find-sec-bugs.github.io/bugs.htm#WEAK_HOSTNAME_VERIFIER">WEAK_HOSTNAME_VERIFIER</a> </li>
</ul>ZVULNERABILITY
ˆ
squid:S3752Ê
squidS37524"@RequestMapping" methods should specify HTTP method"BLOCKER*java:Å<p>A <code>@RequestMapping</code> method handles all matching requests by default. That means that a method you intended only to be
<code>POST</code>-ed to could also be called by a <code>GET</code>, thereby allowing hackers to call the method inappropriately. For example a
"transferFunds" method might be invoked like so: <code>&lt;img
src="http://bank.com/actions/transferFunds?reciepientRouting=000000&amp;receipientAccount=11111111&amp;amount=200.00" width="1"
height="1"/&gt;</code></p>
<p>For that reason, you should always explicitly list the single HTTP method with which you expect your <code>@RequestMapping</code> Java method to be
called. This rule raises an issue when <code>method</code> is missing.</p>
<h2>Noncompliant Code Example</h2>
<pre>
@RequestMapping("/greet")  // Noncompliant
public String greet(String greetee) {
</pre>
<h2>Compliant Solution</h2>
<pre>
  @RequestMapping("/greet", method = GET)
  public String greet(String greetee) {
</pre>
<h2>See</h2>
<ul>
  <li> <a href="https://cwe.mitre.org/data/definitions/352.html">MITRE, CWE-352</a> - Cross-Site Request Forgery (CSRF) </li>
  <li> OWASP Top 10 2017 Category A6 - Security Misconfiguration </li>
  <li> <a href="https://www.owasp.org/index.php/Cross-Site_Request_Forgery_%28CSRF%29">OWASP: Cross-Site Request Forgery</a> </li>
  <li> <a href="https://www.sans.org/top25-software-errors/#cat1">SANS Top 25</a> - Insecure Interaction Between Components </li>
  <li> <a href="https://docs.spring.io/spring-security/site/docs/current/reference/html/csrf.html#csrf-use-proper-verbs">Spring Security Official
  Documentation: Use proper HTTP verbs (CSRF protection)</a> </li>
</ul>ZVULNERABILITY
†
squid:S4602ê
squidS4602W"@SpringBootApplication" and "@ComponentScan" should not be used in the default package"BLOCKER*java:í<p><code>@ComponentScan</code> is used to determine which Spring Beans are available in the application context. The packages to scan can be
configured thanks to the <code>basePackageClasses</code> or <code>basePackages</code> (or its alias <code>value</code>) parameters. If neither
parameter is configured, <code>@ComponentScan</code> will consider only the package of the class annotated with it. When <code>@ComponentScan</code>
is used on a class belonging to the default package, the entire classpath will be scanned.</p>
<p>This will slow-down the start-up of the application and it is likely the application will fail to start with an
<code>BeanDefinitionStoreException</code> because you ended up scanning the Spring Framework package itself.</p>
<p>This rule raises an issue when:</p>
<p>- <code>@ComponentScan</code>, <code>@SpringBootApplication</code> and <code>@ServletComponentScan</code> are used on a class belonging to the
default package</p>
<p>- <code>@ComponentScan</code> is explicitly configured with the default package</p>
<h2>Noncompliant Code Example</h2>
<pre>
import org.springframework.boot.SpringApplication;

@SpringBootApplication // Noncompliant; RootBootApp is declared in the default package
public class RootBootApp {
...
}
</pre>
<pre>
@ComponentScan("")
public class Application {
...
}
</pre>
<h2>Compliant Solution</h2>
<pre>
package hello;

import org.springframework.boot.SpringApplication;

@SpringBootApplication // Compliant; RootBootApp belongs to the "hello" package
public class RootBootApp {
...
}
</pre>ZBUG
É
squid:S3753Û

squidS3753l"@Controller" classes that use "@SessionAttributes" must call "setComplete" on their "SessionStatus" objects"BLOCKER*java:‡	<p>A Spring <code>@Controller</code> that uses <code>@SessionAttributes</code> is designed to handle a stateful / multi-post form. Such
<code>@Controller</code>s use the specified <code>@SessionAttributes</code> to store data on the server between requests. That data should be cleaned
up when the session is over, but unless <code>setComplete()</code> is called on the <code>SessionStatus</code> object from a
<code>@RequestMapping</code> method, neither Spring nor the JVM will know it's time to do that. Note that the <code>SessionStatus</code> object must
be passed to that method as a parameter.</p>
<h2>Noncompliant Code Example</h2>
<pre>
@Controller
@SessionAttributes("hello")  // Noncompliant; this doesn't get cleaned up
public class HelloWorld {

  @RequestMapping("/greet", method = GET)
  public String greet(String greetee) {

    return "Hello " + greetee;
  }
}
</pre>
<h2>Compliant Solution</h2>
<pre>
@Controller
@SessionAttributes("hello")
public class HelloWorld {

  @RequestMapping("/greet", method = GET)
  public String greet(String greetee) {

    return "Hello " + greetee;
  }

  @RequestMapping("/goodbye", method = POST)
  public String goodbye(SessionStatus status) {
    //...
    status.setComplete();
  }

}
</pre>ZBUG
˝
squid:S3751Ì
squidS3751,"@RequestMapping" methods should be "public""BLOCKER*java:ê<p>A method with a <code>@RequestMapping</code> annotation part of a class annotated with <code>@Controller</code> (directly or indirectly through a
meta annotation - <code>@RestController</code> from Spring Boot is a good example) will be called to handle matching web requests. That will happen
even if the method is <code>private</code>, because Spring invokes such methods via reflection, without checking visibility. </p>
<p>So marking a sensitive method <code>private</code> may seem like a good way to control how such code is called. Unfortunately, not all Spring
frameworks ignore visibility in this way. For instance, if you've tried to control web access to your sensitive, <code>private</code>,
<code>@RequestMapping</code> method by marking it <code>@Secured</code> ... it will still be called, whether or not the user is authorized to access
it. That's because AOP proxies are not applied to non-public methods.</p>
<p>In addition to <code>@RequestMapping</code>, this rule also considers the annotations introduced in Spring Framework 4.3: <code>@GetMapping</code>,
<code>@PostMapping</code>, <code>@PutMapping</code>, <code>@DeleteMapping</code>, <code>@PatchMapping</code>.</p>
<h2>Noncompliant Code Example</h2>
<pre>
@RequestMapping("/greet", method = GET)
private String greet(String greetee) {  // Noncompliant
</pre>
<h2>Compliant Solution</h2>
<pre>
@RequestMapping("/greet", method = GET)
public String greet(String greetee) {
</pre>
<h2>See</h2>
<ul>
  <li> OWASP Top 10 2017 Category A6 - Security Misconfiguration </li>
</ul>ZVULNERABILITY
ı	
squid:S1451Â	
squidS1451+Track lack of copyright and license headers"BLOCKER*java:å	<p>Each source file should start with a header stating file ownership and the license which must be used to distribute the application. </p>
<p>This rule must be fed with the header text that is expected at the beginning of every file.</p>
<h2>Compliant Solution</h2>
<pre>
/*
 * SonarQube, open source software quality management tool.
 * Copyright (C) 2008-2013 SonarSource
 * mailto:contact AT sonarsource DOT com
 *
 * SonarQube is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 3 of the License, or (at your option) any later version.
 *
 * SonarQube is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with this program; if not, write to the Free Software Foundation,
 * Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
 */
</pre>Z
CODE_SMELL
¢
squid:S1219í
squidS12196"switch" statements should not contain non-case labels"BLOCKER*java:Æ
<p>Even if it is legal, mixing case and non-case labels in the body of a switch statement is very confusing and can even be the result of a typing
error.</p>
<h2>Noncompliant Code Example</h2>
<pre>
switch (day) {
  case MONDAY:
  case TUESDAY:
  WEDNESDAY:   // Noncompliant; syntactically correct, but behavior is not what's expected
    doSomething();
    break;
  ...
}

switch (day) {
  case MONDAY:
    break;
  case TUESDAY:
    foo:for(int i = 0 ; i &lt; X ; i++) {  // Noncompliant; the code is correct and behaves as expected but is barely readable
         /* ... */
        break foo;  // this break statement doesn't relate to the nesting case TUESDAY
         /* ... */
    }
    break;
    /* ... */
}
</pre>
<h2>Compliant Solution</h2>
<pre>
switch (day) {
  case MONDAY:
  case TUESDAY:
  case WEDNESDAY:
    doSomething();
    break;
  ...
}

switch (day) {
  case MONDAY:
    break;
  case TUESDAY:
    compute(args); // put the content of the labelled "for" statement in a dedicated method
    break;

    /* ... */
}
</pre>
<h2>See</h2>
<ul>
  <li> MISRA C:2004, 15.0 - The MISRA C <em>switch</em> syntax shall be used. </li>
  <li> MISRA C++:2008, 6-4-3 - A switch statement shall be a well-formed switch statement. </li>
  <li> MISRA C:2012, 16.1 - All switch statements shall be well-formed </li>
</ul>Z
CODE_SMELL
’
squid:S3516≈
squidS3516'Methods returns should not be invariant"BLOCKER*java:<p>When a method is designed to return an invariant value, it may be poor design, but it shouldn't adversely affect the outcome of your program.
However, when it happens on all paths through the logic, it is surely a bug.</p>
<p>This rule raises an issue when a method contains several <code>return</code> statements that all return the same value.</p>
<h2>Noncompliant Code Example</h2>
<pre>
int foo(int a) {
  int b = 12;
  if (a == 1) {
    return b;
  }
  return b;  // Noncompliant
}
</pre>Z
CODE_SMELL
Ñ
squid:S2437Ù
squidS2437,Silly bit operations should not be performed"BLOCKER*java:ö<p>Certain bit operations are just silly and should not be performed because their results are predictable.</p>
<p>Specifically, using <code>&amp; -1</code> with any value will always result in the original value, as will <code>anyValue ^ 0</code> and
<code>anyValue | 0</code>.</p>Z
CODE_SMELL
≤	
squid:S1314¢	
squidS1314Octal values should not be used"BLOCKER*java:’<p>Integer literals starting with a zero are octal rather than decimal values. While using octal values is fully supported, most developers do not
have experience with them. They may not recognize octal values as such, mistaking them instead for decimal values.</p>
<h2>Noncompliant Code Example</h2>
<pre>
int myNumber = 010;   // Noncompliant. myNumber will hold 8, not 10 - was this really expected?
</pre>
<h2>Compliant Solution</h2>
<pre>
int myNumber = 8;
</pre>
<h2>See</h2>
<ul>
  <li> MISRA C:2004, 7.1 - Octal constants (other than zero) and octal escape sequences shall not be used. </li>
  <li> MISRA C++:2008, 2-13-2 - Octal constants (other than zero) and octal escape sequences (other than "\0") shall not be used </li>
  <li> MISRA C:2012, 7.1 - Octal constants shall not be used </li>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/_QC7AQ">CERT, DCL18-C.</a> - Do not begin integer constants with 0 when specifying a
  decimal value </li>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/hYClBg">CERT, DCL50-J.</a> - Use visually distinct identifiers </li>
</ul>Z
CODE_SMELL
è

squid:S128Ä
squidS128?Switch cases should end with an unconditional "break" statement"BLOCKER*java:î<p>When the execution is not explicitly terminated at the end of a switch case, it continues to execute the statements of the following case. While
this is sometimes intentional, it often is a mistake which leads to unexpected behavior. </p>
<h2>Noncompliant Code Example</h2>
<pre>
switch (myVariable) {
  case 1:
    foo();
    break;
  case 2:  // Both 'doSomething()' and 'doSomethingElse()' will be executed. Is it on purpose ?
    doSomething();
  default:
    doSomethingElse();
    break;
}
</pre>
<h2>Compliant Solution</h2>
<pre>
switch (myVariable) {
  case 1:
    foo();
    break;
  case 2:
    doSomething();
    break;
  default:
    doSomethingElse();
    break;
}
</pre>
<h2>Exceptions</h2>
<p>This rule is relaxed in the following cases:</p>
<pre>
switch (myVariable) {
  case 0:                                // Empty case used to specify the same behavior for a group of cases.
  case 1:
    doSomething();
    break;
  case 2:                                // Use of return statement
    return;
  case 3:                                // Use of throw statement
    throw new IllegalStateException();
  case 4:                                // Use of continue statement
    continue;
  default:                               // For the last case, use of break statement is optional
    doSomethingElse();
}
</pre>
<h2>See</h2>
<ul>
  <li> MISRA C:2004, 15.0 - The MISRA C <em>switch</em> syntax shall be used. </li>
  <li> MISRA C:2004, 15.2 - An unconditional break statement shall terminate every non-empty switch clause </li>
  <li> MISRA C++:2008, 6-4-3 - A switch statement shall be a well-formed switch statement. </li>
  <li> MISRA C++:2008, 6-4-5 - An unconditional throw or break statement shall terminate every non-empty switch-clause </li>
  <li> MISRA C:2012, 16.1 - All switch statements shall be well-formed </li>
  <li> MISRA C:2012, 16.3 - An unconditional break statement shall terminate every switch-clause </li>
  <li> <a href="http://cwe.mitre.org/data/definitions/484.html">MITRE, CWE-484</a> - Omitted Break Statement in Switch </li>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/YIFLAQ">CERT, MSC17-C.</a> - Finish every set of statements associated with a case
  label with a break statement </li>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/ewHAAQ">CERT, MSC52-J.</a> - Finish every set of statements associated with a case
  label with a break statement </li>
</ul>Z
CODE_SMELL
˙
squid:S1845Í
squidS1845OMethods and field names should not be the same or differ only by capitalization"BLOCKER*java:Ì<p>Looking at the set of methods in a class, including superclass methods, and finding two methods or fields that differ only by capitalization is
confusing to users of the class. It is similarly confusing to have a method and a field which differ only in capitalization or a method and a field
with exactly the same name and visibility.</p>
<p>In the case of methods, it may have been a mistake on the part of the original developer, who intended to override a superclass method, but instead
added a new method with nearly the same name.</p>
<p>Otherwise, this situation simply indicates poor naming. Method names should be action-oriented, and thus contain a verb, which is unlikely in the
case where both a method and a member have the same name (with or without capitalization differences). However, renaming a public method could be
disruptive to callers. Therefore renaming the member is the recommended action.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public class Car{

  public DriveTrain drive;

  public void tearDown(){...}

  public void drive() {...}  // Noncompliant; duplicates field name
}

public class MyCar extends Car{
  public void teardown(){...}  // Noncompliant; not an override. It it really what's intended?

  public void drivefast(){...}

  public void driveFast(){...} //Huh?
}
</pre>
<h2>Compliant Solution</h2>
<pre>
public class Car{

  private DriveTrain drive;

  public void tearDown(){...}

  public void drive() {...}  // field visibility reduced
}

public class MyCar extends Car{
  @Override
  public void tearDown(){...}

  public void drivefast(){...}

  public void driveReallyFast(){...}

}
</pre>Z
CODE_SMELL
ç
squid:S2188˝
squidS2188*JUnit test cases should call super methods"BLOCKER*java:•<p>Overriding a parent class method prevents that method from being called unless an explicit <code>super</code> call is made in the overriding
method. In some cases not calling the <code>super</code> method is acceptable, but not with <code>setUp</code> and <code>tearDown</code> in a JUnit 3
<code>TestCase</code>.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public class MyClassTest extends MyAbstractTestCase {

  private MyClass myClass;
    @Override
    protected void setUp() throws Exception {  // Noncompliant
      myClass = new MyClass();
    }
</pre>
<h2>Compliant Solution</h2>
<pre>
public class MyClassTest extends MyAbstractTestCase {

  private MyClass myClass;
    @Override
    protected void setUp() throws Exception {
      super.setUp();
      myClass = new MyClass();
    }
</pre>Z
CODE_SMELL
ã
squid:S2189˚
squidS2189Loops should not be infinite"BLOCKER*java:∏<p>An infinite loop is one that will never end while the program is running, i.e., you have to kill the program to get out of the loop. Whether it is
by meeting the loop's end condition or via a <code>break</code>, every loop should have an end condition.</p>
<h2>Noncompliant Code Example</h2>
<pre>
for (;;) {  // Noncompliant; end condition omitted
  // ...
}

int j;
while (true) { // Noncompliant; end condition omitted
  j++;
}

int k;
boolean b = true;
while (b) { // Noncompliant; b never written to in loop
  k++;
}
</pre>
<h2>Compliant Solution</h2>
<pre>
int j;
while (true) { // reachable end condition added
  j++;
  if (j  == Integer.MIN_VALUE) {  // true at Integer.MAX_VALUE +1
    break;
  }
}

int k;
boolean b = true;
while (b) {
  k++;
  b = k &lt; Integer.MAX_VALUE;
}
</pre>
<h2>See</h2>
<ul>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/PYHfAw">CERT, MSC01-J.</a> - Do not use an empty infinite loop </li>
</ul>ZBUG
Õ
squid:S2068Ω
squidS2068$Credentials should not be hard-coded"BLOCKER*java:Ë<p>Because it is easy to extract strings from a compiled application, credentials should never be hard-coded. Do so, and they're almost guaranteed to
end up in the hands of an attacker. This is particularly true for applications that are distributed.</p>
<p>Credentials should be stored outside of the code in a strongly-protected encrypted configuration file or database.</p>
<p>It's recommended to customize the configuration of this rule with additional credential words such as "oauthToken", "secret", ...</p>
<h2>Noncompliant Code Example</h2>
<pre>
Connection conn = null;
try {
  conn = DriverManager.getConnection("jdbc:mysql://localhost/test?" +
        "user=steve&amp;password=blue"); // Noncompliant
  String uname = "steve";
  String password = "blue";
  conn = DriverManager.getConnection("jdbc:mysql://localhost/test?" +
        "user=" + uname + "&amp;password=" + password); // Noncompliant

  java.net.PasswordAuthentication pa = new java.net.PasswordAuthentication("userName", "1234".toCharArray());  // Noncompliant
</pre>
<h2>Compliant Solution</h2>
<pre>
Connection conn = null;
try {
  String uname = getEncryptedUser();
  String password = getEncryptedPass();
  conn = DriverManager.getConnection("jdbc:mysql://localhost/test?" +
        "user=" + uname + "&amp;password=" + password);
</pre>
<h2>See</h2>
<ul>
  <li> <a href="http://cwe.mitre.org/data/definitions/798">MITRE, CWE-798</a> - Use of Hard-coded Credentials </li>
  <li> <a href="http://cwe.mitre.org/data/definitions/259">MITRE, CWE-259</a> - Use of Hard-coded Password </li>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/qQCHAQ">CERT, MSC03-J.</a> - Never hard code sensitive information </li>
  <li> OWASP Top 10 2017 Category A2 - Broken Authentication </li>
  <li> <a href="https://www.sans.org/top25-software-errors/#cat3">SANS Top 25</a> - Porous Defenses </li>
  <li> Derived from FindSecBugs rule <a href="http://h3xstream.github.io/find-sec-bugs/bugs.htm#HARD_CODE_PASSWORD">Hard Coded Password</a> </li>
</ul>ZVULNERABILITY
û
squid:S2187é
squidS2187TestCases should contain tests"BLOCKER*java:¬<p>There's no point in having a JUnit <code>TestCase</code> without any test methods. Similarly, you shouldn't have a file in the tests directory with
"Test" in the name, but no tests in the file. Doing either of these things may lead someone to think that uncovered classes have been tested.</p>
<p>This rule raises an issue when files in the test directory have "Test" in the name or implement <code>TestCase</code> but don't contain any
tests.</p>Z
CODE_SMELL
≥
squid:S3046£
squidS30468"wait" should not be called when multiple locks are held"BLOCKER*java:ƒ<p>When two locks are held simultaneously, a <code>wait</code> call only releases one of them. The other will be held until some other thread requests
a lock on the awaited object. If no unrelated code tries to lock on that object, then all other threads will be locked out, resulting in a
deadlock.</p>
<h2>Noncompliant Code Example</h2>
<pre>
synchronized (this.mon1) {  // threadB can't enter this block to request this.mon2 lock &amp; release threadA
	synchronized (this.mon2) {
		this.mon2.wait();  // Noncompliant; threadA is stuck here holding lock on this.mon1
	}
}
</pre>ZBUG
¬
squid:S3282≤
squidS3282<EJB interceptor exclusions should be declared as annotations"BLOCKER*java:»<p>Exclusions for default interceptors can be declared either in xml or as class annotations. Since annotations are more visible to maintainers, they
are preferred.</p>
<h2>Noncompliant Code Example</h2>
<pre>
&lt;assembly-descriptor&gt;
      &lt;interceptor-binding&gt;
         &lt;ejb-name&gt;MyExcludedClass&lt;/ejb-name&gt;
         &lt;exclude-default-interceptors&gt;true&lt;/exclude-default-interceptors&gt; &lt;!-- Noncompliant --&gt;
         &lt;exclude-class-interceptors&gt;true&lt;/exclude-class-interceptors&gt; &lt;!-- Noncomopliant --&gt;
         &lt;method&gt;
           &lt;method-name&gt;doTheThing&lt;/method-name&gt;
         &lt;/method&gt;
      &lt;/interceptor-binding&gt;

&lt;/assembly-descriptor&gt;
</pre>
<h2>Compliant Solution</h2>
<pre>
@ExcludeDefaultInterceptors
public class MyExcludedClass implements MessageListener
{

  @ExcludeClassInterceptors
  @ExcludeDefaultInterceptors
  public void doTheThing() {
    // ...
  }
</pre>Z
CODE_SMELL
ù

squid:S3281ç

squidS3281<Default EJB interceptors should be declared in "ejb-jar.xml""BLOCKER*java:†	<p>Default interceptors, such as application security interceptors, must be listed in the <code>ejb-jar.xml</code> file, or they will not be treated
as default. </p>
<p>This rule applies to projects that contain JEE Beans (any one of <code>javax.ejb.Singleton</code>, <code>MessageDriven</code>,
<code>Stateless</code> or <code>Stateful</code>).</p>
<h2>Noncompliant Code Example</h2>
<pre>
// file: ejb-interceptors.xml
&lt;assembly-descriptor&gt;
 &lt;interceptor-binding&gt; &lt;!-- should be declared in ejb-jar.xml --&gt;
      &lt;ejb-name&gt;*&lt;/ejb-name&gt;
      &lt;interceptor-class&gt;com.myco.ImportantInterceptor&lt;/interceptor-class&gt;&lt;!-- Noncompliant; will NOT be treated as default --&gt;
   &lt;/interceptor-binding&gt;
&lt;/assembly-descriptor&gt;
</pre>
<h2>Compliant Solution</h2>
<pre>
// file: ejb-jar.xml
&lt;assembly-descriptor&gt;
 &lt;interceptor-binding&gt;
      &lt;ejb-name&gt;*&lt;/ejb-name&gt;
      &lt;interceptor-class&gt;com.myco.ImportantInterceptor&lt;/interceptor-class&gt;
   &lt;/interceptor-binding&gt;
&lt;/assembly-descriptor&gt;
</pre>
<h2>See</h2>
<ul>
  <li> OWASP Top 10 2017 Category A6 - Security Misconfiguration </li>
</ul>ZVULNERABILITY
∏
squid:S2168®
squidS2168)Double-checked locking should not be used"BLOCKER*java:ÿ<p>Double-checked locking is the practice of checking a lazy-initialized object's state both before and after a <code>synchronized</code> block is
entered to determine whether or not to initialize the object.</p>
<p>It does not work reliably in a platform-independent manner without additional synchronization for mutable instances of anything other than
<code>float</code> or <code>int</code>. Using double-checked locking for the lazy initialization of any other type of primitive or mutable object
risks a second thread using an uninitialized or partially initialized member while the first thread is still creating it, and crashing the
program.</p>
<p>There are multiple ways to fix this. The simplest one is to simply not use double checked locking at all, and synchronize the whole method instead.
With early versions of the JVM, synchronizing the whole method was generally advised against for performance reasons. But <code>synchronized</code>
performance has improved a lot in newer JVMs, so this is now a preferred solution. If you prefer to avoid using <code>synchronized</code> altogether,
you can use an inner <code>static class</code> to hold the reference instead. Inner static classes are guaranteed to load lazily.</p>
<h2>Noncompliant Code Example</h2>
<pre>
@NotThreadSafe
public class DoubleCheckedLocking {
    private static Resource resource;

    public static Resource getInstance() {
        if (resource == null) {
            synchronized (DoubleCheckedLocking.class) {
                if (resource == null)
                    resource = new Resource();
            }
        }
        return resource;
    }

    static class Resource {

    }
}
</pre>
<h2>Compliant Solution</h2>
<pre>
@ThreadSafe
public class SafeLazyInitialization {
    private static Resource resource;

    public synchronized static Resource getInstance() {
        if (resource == null)
            resource = new Resource();
        return resource;
    }

    static class Resource {
    }
}
</pre>
<p>With inner static holder:</p>
<pre>
@ThreadSafe
public class ResourceFactory {
    private static class ResourceHolder {
        public static Resource resource = new Resource(); // This will be lazily initialised
    }

    public static Resource getResource() {
        return ResourceFactory.ResourceHolder.resource;
    }

    static class Resource {
    }
}
</pre>
<p>Using "volatile":</p>
<pre>
class ResourceFactory {
  private volatile Resource resource;

  public Resource getResource() {
    Resource localResource = resource;
    if (localResource == null) {
      synchronized (this) {
        localResource = resource;
        if (localResource == null) {
          resource = localResource = new Resource();
        }
      }
    }
    return localResource;
  }

  static class Resource {
  }
}
</pre>
<h2>See</h2>
<ul>
  <li> <a href="http://www.cs.umd.edu/~pugh/java/memoryModel/DoubleCheckedLocking.html">The "Double-Checked Locking is Broken" Declaration</a> </li>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/IgAZAg">CERT, LCK10-J.</a> - Use a correct form of the double-checked locking idiom
  </li>
  <li> <a href="http://cwe.mitre.org/data/definitions/609.html">MITRE, CWE-609</a> - Double-checked locking </li>
  <li> <a href="https://docs.oracle.com/javase/specs/jls/se7/html/jls-12.html#jls-12.4">JLS 12.4</a> - Initialization of Classes and Interfaces </li>
  <li> Wikipedia: <a href="https://en.wikipedia.org/wiki/Double-checked_locking#Usage_in_Java">Double-checked locking</a> </li>
</ul>ZBUG
Ë
squid:S3014ÿ
squidS3014 "ThreadGroup" should not be used"BLOCKER*java:ä<p>There is little valid reason to use the methods of the <code>ThreadGroup</code> class. Some are deprecated (<code>allowThreadSuspension()</code>,
<code>resume()</code>, <code>stop()</code>, and <code>suspend()</code>), some are obsolete, others aren't thread-safe, and still others are insecure
(<code>activeCount()</code>, <code>enumerate()</code>) . For these reasons, any use of <code>ThreadGroup</code> is suspicious and should be
avoided.</p>
<h2>Compliant Solution</h2>
<pre>
ThreadFactory threadFactory = Executors.defaultThreadFactory();
ThreadPoolExecutor executorPool = new ThreadPoolExecutor(3, 10, 5, TimeUnit.SECONDS, new ArrayBlockingQueue&lt;Runnable&gt;(2), threadFactory);

for (int i = 0; i &lt; 10; i++) {
  executorPool.execute(new JobThread("Job: " + i));
}

System.out.println(executorPool.getActiveCount()); // Compliant
executorPool.shutdown();
</pre>
<h2>See</h2>
<ul>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/RQCHAQ">CERT, THI01-J.</a> - Do not invoke ThreadGroup methods </li>
</ul>Z
CODE_SMELL
≥

squid:S3374£

squidS33740Struts validation forms should have unique names"BLOCKER*java:¬	<p>According to the Common Weakness Enumeration,</p>
<blockquote>
  If two validation forms have the same name, the Struts Validator arbitrarily chooses one of the forms to use for input validation and discards the
  other. This decision might not correspond to the programmer's expectations...
</blockquote>
<p>In such a case, it is likely that the two forms should be combined. At the very least, one should be removed.</p>
<h2>Noncompliant Code Example</h2>
<pre>
&lt;form-validation&gt;
  &lt;formset&gt;
    &lt;form name="BookForm"&gt; ... &lt;/form&gt;
    &lt;form name="BookForm"&gt; ... &lt;/form&gt;  &lt;!-- Noncompliant --&gt;
  &lt;/formset&gt;
&lt;/form-validation&gt;
</pre>
<h2>Compliant Solution</h2>
<pre>
&lt;form-validation&gt;
  &lt;formset&gt;
    &lt;form name="BookForm"&gt; ... &lt;/form&gt;
  &lt;/formset&gt;
&lt;/form-validation&gt;
</pre>
<h2>See</h2>
<ul>
  <li> <a href="http://cwe.mitre.org/data/definitions/102.html">MITRE, CWE-102</a> - Struts: Duplicate Validation Forms </li>
  <li> <a href="https://www.owasp.org/index.php/Struts:_Duplicate_Validation_Forms#Struts:_Duplicate_Validation_Forms">OWASP, Improper Data
  Validation</a> - Struts: Duplicate Validation Forms </li>
</ul>ZVULNERABILITY
¯
squid:S1190Ë
squidS1190+Future keywords should not be used as names"BLOCKER*java:è<p>Through Java's evolution keywords have been added. While code that uses those words as identifiers may be compilable under older versions of Java,
it will not be under modern versions. </p>
<p>Following keywords are marked as invalid identifiers </p>
<table>
  <tbody>
    <tr>
      <th>Keyword</th>
      <th>Added</th>
    </tr>
    <tr>
      <td><code>_</code></td>
      <td>9</td>
    </tr>
    <tr>
      <td><code>enum</code></td>
      <td>5.0</td>
    </tr>
  </tbody>
</table>
<p><code>assert</code> and <code>strictfp</code> are another example of valid identifiers which became keywords in later versions, however as
documented in SONARJAVA-285, it is not easily possible to support parsing of the code for such old versions, therefore they are not supported by this
rule.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public void doSomething() {
  int enum = 42;            // Noncompliant
  String _ = "";   // Noncompliant
}
</pre>
<h2>Compliant Solution</h2>
<pre>
public void doSomething() {
  int magic = 42;
}
</pre>Z
CODE_SMELL
»
squid:S2178∏
squidS21786Short-circuit logic should be used in boolean contexts"BLOCKER*java:‘<p>The use of non-short-circuit logic in a boolean context is likely a mistake - one that could cause serious program errors as conditions are
evaluated under the wrong circumstances. </p>
<h2>Noncompliant Code Example</h2>
<pre>
if(getTrue() | getFalse()) { ... } // Noncompliant; both sides evaluated
</pre>
<h2>Compliant Solution</h2>
<pre>
if(getTrue() || getFalse()) { ... } // true short-circuit logic
</pre>
<h2>See</h2>
<ul>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/g4FtAg">CERT, EXP46-C.</a> - Do not use a bitwise operator with a Boolean-like operand
  </li>
</ul>Z
CODE_SMELL
é
squid:S2096˛
squidS2096""main" should not "throw" anything"BLOCKER*java:Æ<p>There's no reason for a <code>main</code> method to <code>throw</code> anything. After all, what's going to catch it? </p>
<p>Instead, the method should itself gracefully handle any exceptions that may bubble up to it, attach as much contextual information as possible, and
perform whatever logging or user communication is necessary, and <code>exit</code> with a non-zero (i.e. non-success) exit code if necessary.</p>
<h2>Noncompliant Code Example</h2>
<pre>
public static void main(String args[]) throws Exception { // Noncompliant
  doSomething();
</pre>
<h2>Compliant Solution</h2>
<pre>
public static void main(String args[]) {
 try {
    doSomething();
  } catch (Throwable t) {
    log.error(t);
    System.exit(1);  // Default exit code, 0, indicates success. Non-zero value means failure.
  }
}
</pre>Z
CODE_SMELL
∆
squid:S2095∂
squidS2095Resources should be closed"BLOCKER*java:ı<p>Connections, streams, files, and other classes that implement the <code>Closeable</code> interface or its super-interface,
<code>AutoCloseable</code>, needs to be closed after use. Further, that <code>close</code> call must be made in a <code>finally</code> block otherwise
an exception could keep the call from being made. Preferably, when class implements <code>AutoCloseable</code>, resource should be created using
"try-with-resources" pattern and will be closed automatically.</p>
<p>Failure to properly close resources will result in a resource leak which could bring first the application and then perhaps the box it's on to
their knees.</p>
<h2>Noncompliant Code Example</h2>
<pre>
private void readTheFile() throws IOException {
  Path path = Paths.get(this.fileName);
  BufferedReader reader = Files.newBufferedReader(path, this.charset);
  // ...
  reader.close();  // Noncompliant
  // ...
  Files.lines("input.txt").forEach(System.out::println); // Noncompliant: The stream needs to be closed
}

private void doSomething() {
  OutputStream stream = null;
  try {
    for (String property : propertyList) {
      stream = new FileOutputStream("myfile.txt");  // Noncompliant
      // ...
    }
  } catch (Exception e) {
    // ...
  } finally {
    stream.close();  // Multiple streams were opened. Only the last is closed.
  }
}
</pre>
<h2>Compliant Solution</h2>
<pre>
private void readTheFile(String fileName) throws IOException {
    Path path = Paths.get(fileName);
    try (BufferedReader reader = Files.newBufferedReader(path, StandardCharsets.UTF_8)) {
      reader.readLine();
      // ...
    }
    // ..
    try (Stream&lt;String&gt; input = Files.lines("input.txt"))  {
      input.forEach(System.out::println);
    }
}

private void doSomething() {
  OutputStream stream = null;
  try {
    stream = new FileOutputStream("myfile.txt");
    for (String property : propertyList) {
      // ...
    }
  } catch (Exception e) {
    // ...
  } finally {
    stream.close();
  }
}
</pre>
<h2>Exceptions</h2>
<p>Instances of the following classes are ignored by this rule because <code>close</code> has no effect:</p>
<ul>
  <li> <code>java.io.ByteArrayOutputStream</code> </li>
  <li> <code>java.io.ByteArrayInputStream</code> </li>
  <li> <code>java.io.CharArrayReader</code> </li>
  <li> <code>java.io.CharArrayWriter</code> </li>
  <li> <code>java.io.StringReader</code> </li>
  <li> <code>java.io.StringWriter</code> </li>
</ul>
<p>Java 7 introduced the try-with-resources statement, which implicitly closes <code>Closeables</code>. All resources opened in a try-with-resources
statement are ignored by this rule. </p>
<pre>
try (BufferedReader br = new BufferedReader(new FileReader(fileName))) {
  //...
}
catch ( ... ) {
  //...
}
</pre>
<h2>See</h2>
<ul>
  <li> <a href="http://cwe.mitre.org/data/definitions/459.html">MITRE, CWE-459</a> - Incomplete Cleanup </li>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/9gFqAQ">CERT, FIO04-J.</a> - Release resources when they are no longer needed </li>
  <li> <a href="https://www.securecoding.cert.org/confluence/x/GAGQBw">CERT, FIO42-C.</a> - Close files when they are no longer needed </li>
  <li> <a href="https://docs.oracle.com/javase/tutorial/essential/exceptions/tryResourceClose.html">Try With Resources</a> </li>
</ul>ZBUG