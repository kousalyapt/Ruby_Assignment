name = "Fred"
puts "Double quoted : Hello #{name}"

puts 'Single quoted : Hello #{name}'

#----------------------------------

puts "Double_quoted : 2 * 3 is #{2 * 3}"

puts 'Single_quoted : 2 * 3 is #{2 * 3}'

#-------------------------------------

# \n (newline)
# \t (tab)

#---------------------------------------------

puts "Double quoted : Here's a tab\ta new line\nand some text" 

puts 'Single quoted : Here\'s a tab\ta new line\nand some text' 

#------------------------------------------------

class Obj
    def ten
      10
    end
end
  
ob = Obj.new
puts "Double quoted : Here's a method call result: #{ob.ten}"
puts 'Single quotec : Here\'s a method call result: #{ob.ten}'

#-------------------------------------------------