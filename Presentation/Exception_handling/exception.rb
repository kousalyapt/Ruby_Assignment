# begin
#     # Code that may cause an exception
# rescue <ExceptionClass>
#     # Code to recover from the exception
# end


# Exception
#   NoMemoryError
#   ScriptError
#     LoadError
#     NotImplementedError
#     SyntaxError
#   SecurityError
#   SignalException
#     Interrupt
#   StandardError -- default for rescue
#     ArgumentError
#       UncaughtThrowError
#     EncodingError
#     IOError
#     IndexError
#       KeyError
#       StopIteration
#     LocalJumpError
#     NameError
#       NoMethodError
#     RangeError
#       FloatDomainError
#     RegexpError
#     RuntimeError -- default for raise
#     SystemCallError
#       Errno::*
#     ThreadError
#     TypeError
#     ZeroDivisionError
#   SystemExit
#   SystemStackError

  
# begin
#     x = 1/0
# rescue Exception
#     x = 0
#     puts($!.class) # Prints the class of the exception
#     puts($!)       # Prints the error message
# end



# begin
#     x = 1/0
# rescue ZeroDivisionError => exc
    
#     puts(exc.class)
#     puts(exc)
# end

# begin
#     # Deliberately raising a ZeroDivisionError
#     result = 10 / 0
# rescue ZeroDivisionError => e
#     # Using Object class methods on the exception object
#     puts "Exception class: #{e.class}"        # e.class returns the class of the object (ZeroDivisionError)
#     puts "Exception message: #{e.to_s}"       # e.to_s returns the error message as a string
#     puts "Inspect the exception: #{e.inspect}"# e.inspect returns a detailed string representation of the exception
# end
  

# def calc(val1, val2)
#     begin
#       result = val1 / val2
     

#     rescue TypeError, NoMethodError => e
#         puts("hi")
#         puts(e.class)
#         puts("One of the values is not a number!")

#     rescue Exception => e
#         puts(e.class)
#         puts(e)
#         result = nil
    
#     end
#     return result
# end

# puts calc(1,'s')
  
  begin
    x = 1/0
   
  rescue ZeroDivisionError => error
    puts "zero division error"
    begin
        y = 1/'s'
    rescue TypeError => err
        puts "type error"
    end
  end