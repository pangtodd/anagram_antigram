require('pry') 

class Anagrams
  def anagram_check(word1, word2)
    if word1.upcase.split("").sort.join == word2.upcase.split("").sort.join
      "These words are anagrams!"
    else
      "These words are not anagrams."
    end
  end

  def compare_score (word1, word2)
    score = 0
    word1_array = word1.downcase.split("")
    word2_array = word2.downcase.split("")
    word1_array.each do |letter|
      if word2_array.include?(letter)
        score = score +1
      end
    end
    score
  end

  def word_check(word1)
    vowels = "aiedouy"
    score = compare_score(word1, vowels)
    if score < 1
      "check again, your word doesn't have any vowels."
    else
      "ok, passes the base requirement."
    end
  end

  def antigram_check(word1, word2)
    score = compare_score(word1, word2)
    if score < 1
      "#{word1} and #{word2} are antigrams."
    else
      "not antigrams."
    end
  end
end