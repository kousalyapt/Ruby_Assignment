def greet1 (name, &greet1)
    puts "Welcome #{name}"
    greet1.call if block_given?
end

greet1("kousalya"){ puts "inside block"}

def greet2 (name)
    puts "Welcome #{name}"
    yield if block_given?
end

greet2("shahana"){ puts "inside block"}