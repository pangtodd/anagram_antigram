require('pry') 

class Anagrams
  def anagram_check(word1, word2)
    if word1.upcase.split("").sort.join == word2.upcase.split("").sort.join
      "These words are anagrams!"
    else
      "These words are not anagrams."
    end
  end
end