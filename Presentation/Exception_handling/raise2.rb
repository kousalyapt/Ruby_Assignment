 
  # raise "it is an exception"

# raise ZeroDivisionError

 #raise ZeroDivisionError.new( "I'm afraid you divided by Zero" )


class NoNameError < Exception
    def message
      "No Name given!"
    end
end

def sayHello( aName )
    begin
       if (aName == "") or (aName == nil) 
          raise NoNameError  # Raise a custom exception if the name is empty or nil.
       end
    rescue Exception => e
       puts( e.class )        # Prints the class of the exception (NoNameError).
       puts( "message: " + e.message ) # Prints the default message from the to_str method.
    else
       puts( "Hello #{aName}" ) # Executes if no exception occurs.
    end
 end

 sayHello("")
 
  