# def doCalc 
#     begin 
#        print( "Enter a number: " ) 
#        aNum = gets.chomp
#        result = 100 / aNum.to_i 
#     rescue Exception => e       
#        result = 0 
#        puts( "Error: " + e.message + "\nPlease try again." )       
#        retry      # retry on exception        
#     else 
#        msg = "Result = #{result}" 
#     ensure 
#        msg = "You entered '#{aNum}'. " + msg 
#     end 
#     return msg 
#  end 

#  puts doCalc

def doCalc 
    tries = 0
    begin 
       print( "Enter a number: " ) 
       tries += 1
       aNum = gets().chomp() 
       result = 100 / aNum.to_i 
    rescue Exception => e       
       result = 0 
       puts( "Error: " + e.message + "\nPlease try again." )       
       retry if tries < 3  # Retry only if tries are less than 3
       begin
        
       rescue
       end
    else 
       msg = "Result = #{result}" 
    ensure 

       msg = "You entered '#{aNum}'. " 
    end 
    return msg 
end 

puts doCalc
