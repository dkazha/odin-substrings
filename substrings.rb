dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(str, dictionary)
  found_substrings = Hash.new(0)
  dictionary.each do |word|
    if str.include? word
      found_substrings[word] += 1
    end
  end
  found_substrings
end

p substrings("below", dictionary)