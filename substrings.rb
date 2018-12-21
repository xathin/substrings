# Takes a word and a dictionary and returns a hash containing the
# words found and how many times it was found.
# @param word [String] word to find in dictionary
# @param dictionary [Array<String>] list of words for the dictionary
# @return [Hash] list of words found from dictionary
def substrings(word, dictionary)
  matches = {}
  word.downcase!
  dictionary.each do |search|
    next unless (i = word.index(search))
    matches[search] = 0
    while ! i.nil?
      matches[search] += 1
      i = word.index(search, i + 1)
    end
  end
  return matches
end

# dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
# puts substrings("below", dictionary)
# => {"below"=>1, "low"=>1}
# puts substrings("Howdy partner, sit down! How's it going?", dictionary)
# => {"down"=>1, "go"=>1, "going"=>1, "how"=>2, "howdy"=>1, "it"=>2, "i"=>3, "own"=>1, "part"=>1, "partner"=>1, "sit"=>1}