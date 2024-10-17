

 #logging an error and reraising

 def risky_operation
    100 / 0
  end
  
  def log_error(exception)
    puts "Logging error: #{exception.message}"
  end

 def perform_operation
    begin
      result = risky_operation
    rescue StandardError => e
      log_error(e)  
      raise       
    end
  end
  
  
  begin
    perform_operation
  rescue => e
    puts "Caught exception: #{e.message}"
  end
   