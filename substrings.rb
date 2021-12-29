def substrings(string, dictionary)
  result = Hash.new(0)

  dictionary.each do |word| 
    if string.include?(word)
      result[word] += 1
    end
  end

  result
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

p substrings('below', dictionary)