begin
    puts "Trying to execute some code."
    num = 10 / 0
    puts "Result: #{num}"
  rescue ZeroDivisionError => e
    puts "Rescue: Division by zero error occurred!"
  ensure
    puts "Ensure: This will always run, regardless of an exception."
  end
  

startdir = Dir.getwd

begin
  Dir.chdir("X:\\") # Attempt to change to a non-existent directory
  puts(`dir`)       # Display directory contents
rescue Exception => e
  puts e.class      # Display the exception class
  puts e            # Display the exception message
ensure
  Dir.chdir(startdir) # Ensure that we return to the original directory
end

