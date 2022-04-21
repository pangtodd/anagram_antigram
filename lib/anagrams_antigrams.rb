require('pry') 

class Anagrams
  def anagram_check(word1, word2)
    if word1.upcase.split("").sort.join == word2.upcase.split("").sort.join
      "These words are anagrams!"
    else
      "These words are not anagrams."
    end
  end

  def word_check(word1)
    vowels = ["a", "i", "e", "o", "u", "y"]
    score = 0
    word_array= word1.downcase.split("")
    word_array.each do |letter|
      if vowels.include?(letter)
        score = score +1
      end
    end
    if score < 1
      "check again, your word doesn't have any vowels."
    else
      "ok, passes the base requirement."
    end
  end
end