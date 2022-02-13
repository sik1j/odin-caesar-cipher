# frozen_string_literal: true

def ascii_shift(char_int, shift_factor)
  if char_int.between?(65, 90)
    (char_int + shift_factor - 65) % 26 + 65
  elsif char_int.between?(97, 122)
    (char_int + shift_factor - 97) % 26 + 97
  else
    char_int
  end
end

def caesar_cipher(str, shift_factor)
  # str -> char list
  # char list -> int list
  # int list + shift_factor if ascii (if overflow, wrap back)
  # shifted_list -> char list
  # char list -> str
  str
    .split('')
    .map(&:ord)
    .map { |char_int| char_int.between?(65, 122) ? ascii_shift(char_int, shift_factor) : char_int }
    .map(&:chr)
    .join('')
  # puts 'A'.ord
  # puts 'Z'.ord
  # puts 'a'.ord
  # puts 'z'.ord

  # puts 91.chr
end
puts caesar_cipher('What a string!', 5)
