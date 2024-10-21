The Ruby programming language provides built-in classes for handling input and output operations,
particularly through the IO and File classes.

IO Class

Purpose: The IO class is a core class for managing input and output operations in Ruby. 
It allows you to open, read, and write to various types of I/O streams.

Streams: I/O streams can be files, network sockets, or standard input/output (like the console).

Using IO.foreach:

Example:

IO.foreach("testfile.txt") { |line| print(line) }

Explanation:
The foreach method is a class method of IO. You don’t need to create an instance of the IO class to use it; 
you can call it directly with the class name.
This method takes the filename as an argument and reads each line of the file one at a time.
A block is provided to process each line read from the file. In this case, each line is printed to the screen.
The method handles opening the file and closing it after reading, so you don't need to manage 
these operations manually.'

Using IO.readlines:

Example:

lines = IO.readlines("testfile.txt")
lines.each { |line| print(line) }

Explanation:
The readlines method reads all lines of the specified file into an array called lines.
After that, you can iterate over the array using each to print each line.
This method also automatically manages the file's opening and closing.'

The File Class

Inheritance: The File class is a subclass of the IO class, meaning it inherits all methods 
of IO but is specifically designed for file operations.

File-Specific Methods: The File class provides methods that are tailored to file handling, 
making it straightforward to perform file operations.

Using File.foreach:

File.foreach("testfile.txt") { |line| print(line) }

This behaves the same way as the IO.foreach method, reading and printing each line of the file.

Using File.readlines:

lines = File.readlines("testfile.txt")
lines.each { |line| print(line) }

This performs the same function as the IO.readlines method, reading all lines into an array and printing them.

Opening and Closing Files

Opening a File:

In Ruby, you can open a file using the File.new or File.open method. You need to provide the file name and 
the mode (e.g., "r" for reading, "w" for writing).
File modes specify the permissions for accessing the file, and they include options like:
"r": Read-only (default).
"w": Write-only (truncates the file or creates a new one).
"r+": Read and write (starts at the beginning).
"a": Write-only (starts at the end).
"a+": Read and write (starts at the end).
"b": Binary mode (used on Windows).
