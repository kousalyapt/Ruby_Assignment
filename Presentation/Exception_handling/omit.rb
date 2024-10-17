# def calc
#     result = 1 / 0  # This will raise a ZeroDivisionError
#  rescue Exception => e
#     puts e.class     # Prints the class of the error (ZeroDivisionError)
#     puts e           # Prints the error message ("divided by 0")
#     result = nil     # Sets result to nil if an error occurs
# end
# puts calc 


class X
    @@x = 1 / 0   # This will raise a ZeroDivisionError during class initialization
 rescue Exception => e
    puts e.class   # Prints the class of the error (ZeroDivisionError)
    puts e         # Prints the error message
 end
 