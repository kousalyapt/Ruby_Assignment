# s1 = "hi"

#  s2 = String.new("hi")
#  puts s2.encoding

#  s3 = String.new('foo', encoding: 'ASCII')

#  puts s3.encoding

#  s4 = String.new('こんにちは', encoding: 'ascii')

#  puts s4.valid_encoding?

#  s5 = String.new('foo', encoding: 'bar')

# puts s5

#  s6 = String.new(capacity: 1)
#  puts s6.object_id
#  s6 = "hello how are you"
#  puts s6.object_id
#  puts s6

#  str = "hello"
#  puts str.object_id
#  str = "hi"
#  puts str.object_id

# #----------------------------------------------------

 name = "Fred"
 puts "Double quoted : Hello #{name}"
  puts 'Single quoted : Hello #{name}'

# #----------------------------------

 puts "Double_quoted : 2 * 3 is #{2 * 3}"

 puts 'Single_quoted : 2 * 3 is #{2 * 3}'

# #-------------------------------------

# # \n (newline)
# # \t (tab)

# #---------------------------------------------

 puts "Double quoted :\" Here's a tab\ta new line\nand some text" 

 puts 'Single quoted : "Here\'s a tab\ta new line\nand some text' 

# #------------------------------------------------

class Obj
    def ten
      10
    end
end
  
ob = Obj.new
puts "Double quoted : Here's a method call result: #{ob.ten}"
 puts 'Single quotec : Here\'s a method call result: #{ob.ten}'

# #-------------------------------------------------