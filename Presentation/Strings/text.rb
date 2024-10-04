In Ruby, strings can be enclosed in either single quotes ('') or double quotes (""), but they behave 
differently in how they handle escape sequences and embedded code.

Double-Quoted Strings:
Double-quoted strings in Ruby are more powerful because they allow for string interpolation and escape
sequences. Interpolation means that Ruby will evaluate any code within #{} inside the string and insert 
the result into the string.

For example:

name = "Fred"
puts "Hello #{name}" # => Hello Fred

In this case, #{name} is evaluated, and the value of name (which is "Fred") is inserted into the string. 

Similarly, you can embed more complex expressions, like:

puts "2 * 3 is #{2 * 3}" # => 2 * 3 is 6


Escape Sequences in Double-Quoted Strings:
Double-quoted strings also handle escape characters such as:

\n (newline)
\t (tab)
For example:

puts "Here's a tab\ta new line\nand some text" 
This will output:

Here's a tab    a new line
and some text
'
You can also embed method calls, like this:

class Obj
  def ten
    10
  end
end

ob = Obj.new
puts "Here's a method call result: #{ob.ten}" # => Here's a method call result: 10


Single-Quoted Strings:
Single-quoted strings, on the other hand, do not evaluate expressions inside #{} and handle 
escape sequences much more literally. They are simpler and faster when you don't need interpolation.

For example:

puts 'Hello #{name}' # => Hello #{name}
In this case, #{name} is treated as a plain string and is not evaluated. 

Similarly:

puts '2 * 3 is #{2 * 3}' # => 2 * 3 is #{2*3}
The content inside #{} remains unchanged in single-quoted strings.

Escape Sequences in Single-Quoted Strings:
In single-quoted strings, the only recognized escape sequence is \' (for a literal single quote). 
Other escape sequences like \n and \t are treated as literal text.

For example: 

puts 'Here\'s a tab\ta new line\nand some text'

This will output:

Here's a tab\ta new line\nand some text

'
USER DEFINED STRING DELIMITERS:

In Ruby, user-defined string delimiters provide an alternative way to define strings, 
especially when using traditional single or double quotes might become cumbersome. This is particularly 
helpful when the string itself contains many quote characters, and escaping them (with backslashes) 
would make the code harder to read.

puts "He said, \"It's a sunny day,\" and then left."

Ruby offers special syntax to create strings without using single or double quotes:

%Q: Acts like a double-quoted string (allows interpolation and escape sequences).
%q: Acts like a single-quoted string (no interpolation or escape sequences).

You can use any non-alphanumeric character as the delimiter, and Ruby will treat everything 
between the opening and closing delimiters as the string content. 

For example:

str1 = %Q/This is a "double-quoted" string/
str2 = %q/This is a 'single-quoted' string/

Using Backquotes (``):

In Ruby, strings enclosed by backquotes (``) or the equivalent %x{} (or %x/) /are used to 
execute system commands on the operating system. This feature allows Ruby to run external commands, 
such as shell commands, from within a Ruby program.

When you enclose a string inside backquotes, Ruby interprets it as a system command. 
The command is passed to the operating system, executed, and the result is returned as a string. 
This is useful for interacting with the command line or executing scripts from within Ruby code.

For example:

puts(`dir`)  # On Windows, this lists the directory contents
This executes the dir command (which lists directory contents on Windows) and displays the result.

On Unix-like systems (Linux, macOS), you might use:

puts(`ls`)  # This lists the directory contents in Unix-like systems

Equivalent Syntax: %x

Ruby provides an alternative way to execute system commands using the %x syntax. 
It works exactly the same as using backquotes but offers the flexibility of choosing different delimiters, 
similar to %Q and %q for strings.

Examples:

puts(%x/dir/)  # Same as using backquotes, lists directory contents
puts(%x{dir})  # Another equivalent form

Both of these are equivalent to:

puts(`dir`)

Embedding Commands in Strings :

You can also embed system commands inside double-quoted strings using string 
interpolation (#{}), just like you would for Ruby expressions.

For example:

print("Goodbye #{%x{calc}}")

In this case, the system command calc (which launches the calculator on Windows) is executed first. 
The Ruby program pauses until the calculator is closed. Once the calculator process terminates, 
Ruby resumes and prints "Goodbye".


String Concatenation:

Concatenation is the process of joining two or more strings together to form a single string. 
In Ruby, you can concatenate strings using several methods:

Using << Operator:

This operator is known as the shovel operator. It appends the right operand to the left operand.

s = "Hello " << "world" 
# s is now "Hello world"

Using + Operator:

The + operator combines strings but creates a new string.

s = "Hello " + "world" 
# s is now "Hello world"

Using Space Between Strings:

Placing strings next to each other with spaces also concatenates them.

s = "Hello " "world" 
# s is now "Hello world"

Comma Usage in Expressions: 

In Ruby, if you separate items with commas, you are not concatenating them into a single string; 
instead, you are creating an array. For example:

s4 = "This ", "is", " not a string!", 10 

String Assignment and Mutation:

In Ruby, strings are mutable objects, meaning you can modify their content. 
However, Ruby makes a distinction between modifying an existing string and creating a new string object.

Creating a New String Object: 

When you perform an operation like concatenation with the + operator, Ruby creates a new 
string object rather than modifying the original string in place. 

Here’s an example from your text:

s = "hello world"
s = s + "!"

The first line creates a string "hello world", and the variable s points to this string.
In the second line, s + "!" creates a new string object "hello world!".
The original string "hello world" is not modified, but s now points to this new string object ("hello world!").

The important point here is that s is reassigned to a new string object, which means it no longer 
points to the original "hello world" string. The two strings ("hello world" and "hello world!") are 
different objects with different object_ids.

In-Place Modification with ! Methods: 

Ruby provides a set of methods that modify the string in place, meaning they alter the 
original object instead of creating a new one. These methods usually have a bang (!) at the end, 
like capitalize!, upcase!, and strip!. 

Here’s an example:

s = "hello world"
s.capitalize!

The capitalize! method modifies the string in place, meaning the string object referenced by s 
is now "Hello world". No new object is created.
The object_id of s remains the same before and after calling capitalize!, because the method worked 
directly on the original string.

INDEXING INTO A STRING :

This section covers the indexing of strings in Ruby, which treats strings as arrays of characters. 
This means you can access individual characters or substrings by specifying their position (index) 
in the string, either using positive or negative indexing. 

  Basic Indexing: Positive Index Values

  In Ruby, strings are indexed starting from 0, so the first character of a string is at index 0, 
  the second character at index 1, and so on.

s = "Hello world"
puts s[1] 

=> e

To retrieve a substring starting at index 1 and getting the next three characters:

puts s[1, 3]  # Outputs 'ell'

Ruby starts at index 1 ('e') and returns the next 3 characters, 'ell'.

You can also use range notation (..) to define a range of indices:

puts s[1..3]  # Outputs 'ell'

The range 1..3 starts at index 1 and includes indices 1, 2, and 3 (i.e., 'ell').

Negative Indexing

Ruby allows you to index from the end of the string using negative numbers. In this case:

-1 is the last character,
-2 is the second-to-last character, and so on.

Examples:

puts s[-1, 1]  # Outputs 'd' (last character)
puts s[-5, 1]  # Outputs 'w' (character at index -5)
puts s[-5, 5]  # Outputs 'world' (substring starting from index -5 with 5 characters)

Range with Negative Indices:

When using range notation with negative indices, you must use negative values for both the start 
and end indices:

puts s[-5..-1]  # Outputs 'world'

This starts at the character at index -5 ('w') and goes up to index -1 (the last character 'd'), 
returning 'world'.
If you mix positive and negative indices, the result might not be what you expect:

puts s[-5..5]  # Outputs an empty string!
This range asks Ruby to start at index -5 (which is 'w') and go up to index 5 (which is 'o'), 
but since the range is invalid (negative start with a positive end), it results in an empty string.

CHOMP AND CHOP

In Ruby, the chop and chomp methods are useful for removing characters from the end of a string, 
particularly for handling line feeds (newlines) or other separators.

Chop Method:

chop removes the last character from a string, regardless of what that character is. 
If the string ends with a newline (\n) or a carriage return-newline sequence (\r\n), 
chop will remove those characters as well.

Examples:

s1 = "Hello world\n"
puts s1.chop   # "Hello world" (newline removed)

However, if the string does not end with a newline, it simply removes the last character:

s2 = "Hello world"
puts s2.chop   # "Hello worl" (last character 'd' removed)


Chomp Method
chomp only removes the record separator (newline \n or carriage return \r\n), 
if present at the end of the string. If the string does not end with a record separator, 
chomp leaves it unchanged.

Examples:

s1 = "Hello world\n"
puts s1.chomp   # "Hello world" (newline removed)

If the string doesn’t end with a newline, chomp does nothing:

s2 = "Hello world"
puts s2.chomp   # "Hello world" (unchanged)

Key Difference:
chop always removes the last character, even if it's not a newline or record separator.
chomp only removes the record separator (newline), leaving other characters intact.'

Specifying a Custom Separator with Chomp:

You can pass a custom string or character as the separator to chomp. 
This tells Ruby to remove the specified sequence if it's found at the end of the string.'

Example:

s2 = "Hello world"
puts s2.chomp("world")  # "Hello" (removes "world" from the end)

Using the Record Separator ($/):

Ruby uses a predefined variable $/ as the record separator, which defaults to a newline (\n). 
The gets method reads up to this separator, and chomp removes it. 
You can redefine the record separator to change the behavior of methods like gets and chomp.

Example:

$/ = "world"
s = gets   # User enters: "Had we but world enough and time..."
puts s     # Displays: "Had we but world"

In this case, Ruby stops reading when it encounters the word "world," using it as the record separator.


FORMAT STRINGS

In Ruby, format strings allow you to display data in a specific format using the printf method or 
its variant sprintf. These format strings include special format specifiers that control how the 
data is presented. The actual values are substituted into the format string in place of the specifiers.

Here's a breakdown of how the format strings and their specifiers work, followed by an example:'

Common Format Specifiers:
%d – Formats the value as a decimal (integer) number.
%f – Formats the value as a floating-point number.
%o – Formats the value as an octal number (base 8).
%p – Calls the .inspect method on the object, typically used to print a Ruby object's state.'
%s – Formats the value as a string.
%x – Formats the value as a hexadecimal number (base 16).


Floating-Point Precision Control:
You can control the number of decimal places displayed for floating-point values by specifying the 
precision inside the format specifier.

Example:

printf("%0.02f", 10.12945)

%0.02f means:

%: Start of the format specifier.
0: Zero-padding (optional, it doesn't affect the decimal part here).'
.02: Precision specifier, meaning 2 decimal places.
f: Format as a floating-point number.

Result:

10.13
The value 10.12945 is rounded to two decimal places (10.13).