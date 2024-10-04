str1 = "hello"
str2 = "world"

a = str1 << str2


b = str1 + str2

puts a

puts b


c = "Hello " "world" 

puts c

#------------------------------------------

s = "Hello " << 65  # Will append 65 as its ASCII character .

puts s

t = "Hello " << 256

puts t

#---------------------------------

# s = "Hello " + 65

puts s

#------------------------------------

s4 = "This ", "is", " not a string!", 10 

puts s4

print s4