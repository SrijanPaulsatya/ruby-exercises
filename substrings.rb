def substrings(words, dictionary)
  words = words.downcase
  words_count = {}

  if words.class == String
    words = words.split
    for word in words
      dictionary.each do |substring|
        substring.downcase
        if word.include?(substring) && words_count.dig(substring) == nil
          words_count[substring] = 1
        elsif word.include?(substring) && words_count.include?(substring) == true
          words_count[substring] += 1
        else
          next
        end
      end
    end
  else
    dictionary.each do |substring|
      substring = substring.downcase
      if word.include?(substring) && words_count.dig(substring) == nil
        words_count[substring] = 1
      elsif word.include?(substring) && words_count.include?(substring) == true
        words_count[substring] += 1
      else
        next
      end
    end
  end
  words_count
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
string = "Howdy partner, sit down! How's it going?"
puts substrings("below", dictionary)
puts substrings(string, dictionary)
