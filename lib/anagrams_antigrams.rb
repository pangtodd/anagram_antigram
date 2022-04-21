require('pry') 

class Anagrams
  def anagram_check(word1, word2)
    if word1.split("").sort.join == word2.split("").sort.join
      "These words are anagrams!"
    else
      "These words are not anagrams."
    end
  end
end