module FunWithStrings
  def palindrome?
    return self.gsub(/(\W|\d)/, "").downcase.reverse == self.gsub(/(\W|\d)/, "").downcase
  end
  def count_words
    words = {}
    self.downcase.gsub(/[^a-z\s]/, '').split.each { |word| 
      if words[word]
        words[word] = words[word]+1
      else
        words[word] = 1
      end
    }
    return words
  end
  def anagram_groups
    groups = {}
    self.split.each { | word |
    	ordered = word.downcase.chars.sort.join
	counter = 0
	if not groups[ordered] 
		groups[ordered] = []
	end
	groups[ordered].push(word)
    }
    
	return groups.values
   # return  groups.map { |k, vs| vs.map { |v| [k, v] } }.flatten(1)

  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end

puts "scream cars for four scar creams".anagram_groups

