 #File.foreach("sample.txt") { |line| print(line) }

#  lines = File.readlines("sample.txt")
# lines.each { |line| print(line) }

#----------------------------------------------------------

f = File.new("img.png", "rb")

# f.each_line do |line|
#   puts line
# end

#  puts f.gets

a =  f.read
b = a.bytes
puts b.size

f.close

#-------------------------------------------------------------

# f = File.new("sample.txt", "r+")

# f.puts( "I", "wandered", "lonely", "as", 'a\nhi', "cloud" )

# f.each_line do |line|
#     puts line
#   end



# f.close

#---------------------------------------------------------------

# f = File.new("samples.txt", "w")
# f.puts( "I", "wandered", "lonely", "as", "a", "cloud" )
# f.close

#----------------------------------------------------------------

# f = File.new("sample2.txt", "w+")

# f.each_line do |line|
#     puts line
#   end

# f.puts( "I", "wandered", "lonely", "as", "a", "cloud" )


# f.close

#----------------------------------------------------------------

# f = File.new("samples1.txt", "a")
# f.puts( "I", "wandered", "lonely", "as", "a", "cloud" )
# f.close

#----------------------------------------------------------------

# f = File.new("sample.txt", "a+")

# f.puts( "I", "wandered", "lonely", "as", "a", "cloud" )

# f.each_line do |line|
#     puts line
#   end


#   g = File.new("samples.txt", "a+")

#   g.puts( "I", "wandered", "lonely", "as", "a", "cloud" )
  
#     g.close

    # f.puts("kousalya")
    # puts f


# f.close

#------------------------------------------------------------------

# file = File.open("sample.txt", "r+")  
# file.each_line { |line| puts line }  

# file.puts( "I", "wandered", "lonely", "as", "a", "cloud" )

#--------------------------------------------------------------

# File.open("sample.txt", "r") do |file| 
#     file.each_line { |line| puts line }  
# end  
  
#---------------------------------------------------------------

# if File.exist?("sample4.txt") 
#     puts("Yup, you have a sample file")
# else 
#     puts("Eeek! Can't find the sample file")
# end

#-----------------------------------------------------------------


# def dirOrFile(aName)
#     if File.directory?(aName) 
#       puts("#{aName} is a directory")
#     else 
#       puts("#{aName} is a file")
#     end
# end

# dirOrFile("sample.txt")
  