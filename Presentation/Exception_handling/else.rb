def doCalc(aNum)
    begin
       result = 100 / aNum.to_i
    rescue Exception => e
       result = 0
       msg = "Error: " + e.message
    else
       msg = "Result = #{result}"
    ensure
       msg = "You entered '#{aNum}'. " + msg
    end
    return msg
 end

 puts doCalc(2)