puts "Enter the year"
year = gets.chomp.to_i
if year%4==0 && year%100!=0 || year%400==0
  puts "Leap year"
else
  puts "Not a Leap year"
end