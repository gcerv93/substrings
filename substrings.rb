def substrings(string, dictionary)
  result = Hash.new(0)
  string = string.downcase
  string_array = string.split(' ')

  string_array.each do |word|
    dictionary.each do |sub|
      if word.include?(sub)
        result[sub] += 1
      end
    end
  end

  result
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

p substrings('below', dictionary)
p substrings("Howdy partner, sit down! How's it going?", dictionary)