def substrings(input_string, dictionary)
  dictionary.reduce(Hash.new(0)) do |hash, word| 
    string = input_string.downcase
    while string.include?(word) do
      hash[word] += 1
      string = string.sub(word, '')
    end
    hash
  end 
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings("Howdy partner, sit down! How's it going?", dictionary)