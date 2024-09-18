def add(num1, num2)
  num1 + num2
end

def subtract(num1, num2)
  num1 - num2
end

def multiply(num1, num2)
  num1 * num2
end

def divide(num1, num2)
  num1 / num2
end

def exponentiate(num1, num2)
  num1 ** num2
end

def modulo(num1, num2)
  num1 % num2
end

p "Enter num1"
num1 = gets.chomp.to_i

p "Enter num2"
num2 = gets.chomp.to_i

puts "addition : #{ add(num1, num2) }"
puts "subtraction : #{ subtract(num1, num2) }"
puts "multiplication : #{ multiply(num1, num2) }"
puts "division : #{ divide(num1, num2) }"
puts "exponentiation : #{ exponentiate(num1, num2) }"
puts "modulo : #{ modulo(num1, num2) }"
