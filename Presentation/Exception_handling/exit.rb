begin   
        puts"Enter a number"
        a = gets.chomp.to_i
        if(1/a)
            exit
        end
rescue Exception => e

    puts "Rescued: #{e.class} - #{e.message}"
puts "hi"
end
  
