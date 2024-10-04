s1 = "Hello world\n"

puts s1.chop

s2 = "Hello hi how are you world\n"

puts s2.chomp

puts s2.chomp("world")

#--------------------------------------------------

$/ = "\n"
s = gets   
puts s 