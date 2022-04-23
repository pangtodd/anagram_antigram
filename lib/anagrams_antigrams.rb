require('pry')

class Anagrams
  def initialize(word1, word2)
    @word1 = word1.gsub(/[^a-zA-Z]+/,"").downcase
    @word2 = word2.gsub(/[^a-zA-Z]+/,"").downcase
    @word1_plain = word1
    @word2_plain = word2
  end

  #checks words have at least one vowel and starts the program- if first condition is met, it daisy-chains into anagram_check, which then daisy-chains antigram_check.
  def word_check
    word1_score = @word1.match(/[aeiouy]/) ? 1 : 0
    word2_score = @word2.match(/[aeiouy]/) ? 1 : 0
    if word1_score > 0 && word2_score > 0
      "ok, #{@word1_plain} and #{@word2_plain} pass the basic requirement of a word having at least one vowel or y. \n#{anagram_check}"
    elsif word1_score < 1 && word2_score > 0
      "check again, #{@word1_plain} doesn't seem to have any vowels or a y."
    elsif word2_score < 1 && word1_score > 0
      "check again, #{@word2_plain} doesn't seem to have any vowels or a y."  
    else
      "check again, #{@word1_plain} and #{@word2_plain} doesn't seem to have any vowels or a y."
    end
  end

  #checks for anagrams, but also calls antigram_check if not an anagram.
  def anagram_check
    if @word1.split("").sort.join == @word2.split("").sort.join
      "#{@word1_plain} and #{@word2_plain} are anagrams!"
    else
      "#{@word1_plain} and #{@word2_plain} are not anagrams. \n#{antigram_check}"
    end
  end
  
  def antigram_check
    score = @word1.scan(/[#{@word2}]/)
    if score.length() < 1
      "#{@word1_plain} and #{@word2_plain} are antigrams."
    else
      "#{@word1_plain} and #{@word2_plain} are not antigrams or anagrams- but #{score.length()} letters match: #{score.join(",")}"
    end
  end
end