puts "Press c if the temperature you wanted to convert is in celsius or press f if in fahrenheit "
temp_scale = gets.chomp
temp_scale.downcase!
puts "Enter the degree"
degree = gets.chomp.to_i
if temp_scale == "c"
  result = ((degree*9)/5) + 32
  puts "#{result}F"
elsif temp_scale == "f"
  result = ((degree - 32)*5)/9
  puts "#{result}C"
end