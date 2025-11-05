dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(str, dictionary)
  found_substrings = Hash.new(0)
  arr_from_str = str.delete("^a-zA-Z0-9\' ").downcase.split
  
  arr_from_str.each do |word|
    dictionary.each do |dict_word|
      if word.include? dict_word
        found_substrings[dict_word] += 1
      end
    end
  end
  found_substrings
end

p substrings("below", dictionary)
p substrings("Howdy partner, sit down! How's it going?", dictionary)