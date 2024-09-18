def caesor_cipher(str, shift_factor)
  print "Modified String : "
  str.each_char do |element|
    element_position = element.ord
    if(element_position >= 65 && element_position <= 90)
      new_char_position = ( element_position + shift_factor - 65 ) % 26 + 65
      print new_char_position.chr
    elsif(element_position >= 97 && element_position <= 122)
      new_char_position = ( element_position + shift_factor - 97 ) % 26 + 97
      print new_char_position.chr
    else
      print element
    end
  end
end


puts "Enter the string"
str = gets.chomp
puts "Enter the shift factor"
shift_factor = gets.chomp.to_i
caesor_cipher(str, shift_factor)



