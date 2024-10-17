Errors point to mistakes in the code that need fixing.
Exceptions are runtime issues that can be anticipated and managed using exception handling, 
allowing the program to continue running or fail gracefully.

Errors
Definition: Errors represent conditions or problems that occur due to programming mistakes or incorrect
logic that generally cannot (or should not) be recovered from.
Nature: Errors often indicate a flaw in the program's' code or logic that needs fixing 
(e.g., syntax errors, undefined methods, wrong argument types).

Exceptions
Definition: Exceptions are unexpected situations that occur while the program is running, which can 
often be anticipated and handled without stopping the program. They represent "exceptional" conditions 
that may or may not indicate a problem in the code.
Nature: Exceptions can be raised intentionally by the programmer or by Ruby when something goes wrong 
during program execution. The program can handle exceptions to recover and continue running.

begin
    # Code that may cause an exception
  rescue <ExceptionClass>
    # Code to recover from the exception
  end

  When an exception occurs, Ruby stops executing the normal code flow and jumps to the rescue block.
  
  Ensure

  In Ruby, the ensure block is used to define code that should always run, whether or not an 
  exception occurs within the preceding begin block. It is particularly useful for tasks like 
  cleanup operations that must be completed no matter the outcome, such as closing files, 
  releasing resources, or resetting system states.

  raise

  The raise keyword is used to generate exceptions, either to re-raise an already 
  caught exception or to create and raise new ones intentionally, even if no error has 
  occurred in the code.