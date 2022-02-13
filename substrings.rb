# frozen_string_literal: true

# dict.reduce -> str.include?(word)

def substrings(str, dict)
  str = str.upcase

  dict.reduce(Hash.new(0)) do |hash, dict_word| 
    hash[dict_word] = str.split.reduce(0) {|sum, str_word| sum += str_word.include?(dict_word.upcase) ? 1 : 0}
    hash.delete(dict_word) if hash[dict_word].zero?
    hash
  end
end
dictionary = %w[below down go going horn how howdy it i low own part partner sit]
p substrings('below', dictionary)
p substrings("Howdy partner, sit down! How's it going?", dictionary)
p "Howdy partner".include?('how')