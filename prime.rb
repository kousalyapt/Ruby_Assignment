puts "Enter a number to check if it is prime"
num = gets.chomp.to_i
flag = true
if num <= 1
	flag = false
elsif num > 2
	for n in 2...num
		if num%n == 0
			flag = false
		end
	end
end
if flag == true
	puts "prime"
else
	puts "not a prime"
end

