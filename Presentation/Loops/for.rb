# for i in [1, 2, 3] do
#     puts(i)
# end

# for s in ['one', 'two', 'three'] do
#     puts(s)
# end

#  [1, 2, 3].each {|element| puts element}

#  [1, 2, 3].each do |element| 
#      puts element
#      puts "This is element #{element}"
#  end

# # Using for
# for x in [1, "two", [3, 4, 5]] do
#     puts(x)
# end
  
# # # Using each
# [1, "two", [3, 4, 5]].each do |x|
#     puts(x)
# end

# #Ranges and Loops

# for i in (1..10) do
#     puts(i)
# end

# (1..3).each do |s|
#     puts(s)
# end

# #Single-line and Multi-line Loops

# # Multi-line for loop without `do`

# for s in ['one', 'two', 'three']
#     puts(s)
# end
  
# # Single-line for loop requires `do`

#for s in ['one', 'two', 'three']  do puts(s) end

# #Iterating Over a Multi-Dimensional Array

# multiarr = [
#   ['one', 'two', 'three','four'],
#   [1, 2, 3]
# ]

# #Using a for Loop with Multiple Variables

# for (a, b, c, d  ) in multiarr
#     print("a=#{a}, b=#{b}, c=#{c}, d =#{d || 0}\n")
# end

# #Using each with Block Parameters

# multiarr.each do |a, b, c, d|
#     print("a=#{a}, b=#{b}, c=#{c}, d=#{d}\n")
# end

# #-------------------------

# i = 0
# (1..3).each do |n|
#   i += 1
#   redo if i < 2  # Re-run the iteration once
#   puts n
# end

# puts i

# #----------------------------

# (1..5).each do |i|
#     next if i == 3  # Skip iteration when i is 3
#     puts i
#   end

# #--------------------
# i = 0
# loop do
#   i += 1
#   next if i == 2    
#   redo if i == 3    
#   break if i > 5    
#   puts i
# end

# #-----------------------

# 5.times do |i|
#     puts "Iteration #{i}"
# end

# #-------------------

 -5.upto(-1) { |i| puts i } 

 # Prints numbers from 1 to 5

#5.downto(1) { |i| puts i }  # Prints numbers from 5 to 1

# #---------------------------

# arr1 = [1, 2, 3]
# arr2 = ['a', 'b', 'c', 'd']

# arr1.zip(arr2) do |num, letter|
#   puts "#{num} -> #{letter}"
# end

# #-----------------------------------

# #Break with a Value

result = (1..3).each do |i|
    break i * 2 if i == 2
end
  
puts result 
  


  


  
  
  
  
  
  
