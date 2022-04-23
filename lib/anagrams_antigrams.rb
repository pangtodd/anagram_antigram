require('pry') 

class Anagrams
  def initialize(word1, word2)
    @word1 = word1
    @word2 = word2 
  end
  
  #checks words have at least one vowel and starts the program- if first condition is met, it daisy-chains into anagram_check, which daisy-chains into antigram_check.
  def word_check
    vowels = "aiedouy"
    word1_score = compare_score(@word1, vowels)
    word2_score = compare_score(@word2, vowels)
    if word1_score > 0 && word2_score > 0
      "ok, #{@word1} and #{@word2} pass the basic requirement of a word having at least one vowel or y. \n#{anagram_check}"
    elsif word1_score < 1 && word2_score > 0
      "check again, #{@word1} doesn't seem to have any vowels or a y."
    elsif word2_score < 1 && word1_score > 0
      "check again, #{@word2} doesn't seem to have any vowels or a y."  
    else
      "check again, #{@word1} and #{@word2} doesn't seem to have any vowels or a y."
    end
  end

  #checks for anagrams, but also calls antigram_check if not an anagram.
  def anagram_check
    if @word1.gsub(/[^a-zA-Z]+/,"").downcase.split("").sort.join == @word2.gsub(/[^a-zA-Z]+/,"").downcase.split("").sort.join
      "#{@word1} and #{@word2} are anagrams!"
    else
      "#{@word1} and #{@word2} are not anagrams. \n#{antigram_check}"
    end
  end
  
  def antigram_check
    score = compare_score(@word1, @word2)
    if score < 1
      "#{@word1} and #{@word2} are antigrams."
    else
      "#{@word1} and #{@word2} are not antigrams."
    end
  end

  #utility method used within antigram_check and word_check.
  def compare_score (word1, word2)
    score = 0
    word1_array = word1.gsub(/[^a-zA-Z]+/,"").downcase.split("")
    word2_array = word2.gsub(/[^a-zA-Z]+/,"").downcase.split("")
    word1_array.each do |letter|
      if word2_array.include?(letter)
        score = score +1
      end
    end
    score
  end
end