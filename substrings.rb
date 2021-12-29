def substrings(string, dictionary)
  result = Hash.new(0)
  string_array = string.downcase.split(' ')

  string_array.each do |word|
    dictionary.each do |sub|
      result[sub] += 1 if word.include?(sub)
    end
  end

  result
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

p substrings('below', dictionary)
p substrings("Howdy partner, sit down! How's it going?", dictionary)