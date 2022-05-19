def caesar_cipher(string, shift_factor)
  small_letters = ('a'..'z').to_a
  big_letters = ('A'..'Z').to_a
  ciphered = []

  character_array = string.split('')
  character_array.map do |char|
    if (small_letters + big_letters).include?(char)
      if char == char.upcase
        new_index = big_letters.find_index(char) + shift_factor
        if new_index > 26
          new_index = new_index % 26
        end
        ciphered.push(big_letters[new_index])
      else
        new_index = small_letters.find_index(char) + shift_factor
        if new_index > 26
          new_index = new_index % 26
        end
        ciphered.push(small_letters[new_index])
      end
    else
      ciphered.push(char)
    end
  end
  puts ciphered.join('')
end