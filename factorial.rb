puts "Enter a number to calculate factorial"
num = gets.chomp.to_i
result = 1
while num>1
  result=result*num
  num=num-1
end
puts result