def substrings( word, dictionary)
  search_list = Hash.new(0)
  separated_words = word.split(" ")
  dictionary.each do |dict_word|
    separated_words.each do |sep_word|
      search_list[dict_word] += 1 if sep_word.include?(dict_word)
    end
  end
  search_list.each { |word, freq| puts "#{word} : #{freq}" }
end



dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts "Enter a word or a sentence"
word = gets.chomp
substrings(word, dictionary)
