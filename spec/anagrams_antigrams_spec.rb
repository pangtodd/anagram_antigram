require('rspec')
require('anagrams_antigrams')

describe(Anagrams)do
  describe('#anagram_check') do
    it("takes two arguments and sees if the words or phrases are anagrams, regardless of punctuation or spacing")do
      test = Anagrams.new("Forty! Five?","OVER        FIFTY!")
      expect(test.anagram_check).to eq("Forty! Five? and OVER        FIFTY! are anagrams!")
    end
    it("takes two arguments and sees if the words are anagrams, regardless of capitalization")do  
      test = Anagrams.new("Apt","Pat")
      expect(test.anagram_check).to eq("Apt and Pat are anagrams!")
    end
  end
  describe("#word_check")do
    it("takes a single argument and makes sure the string has at least one vowel")do
      test = Anagrams.new("hzzz", "hi")
      expect(test.word_check).to eq("check again, hzzz doesn't seem to have any vowels or a y.")
    end
  end
  describe("#antigram_check")do
    it("takes two arguments and checks to see if they are antigrams/have any letters in common")do
      test = Anagrams.new("box o' ROX!", "FAT cat")
      expect(test.antigram_check).to eq("box o' ROX! and FAT cat are antigrams.")
    end
    it("takes two arguments and checks to see if thy are antigrams- if they are not, it says how many letters are in common, and which ones.")
      test = Anagrams.new("box o' ROCKS!", "FAT cats")
      expect(test.antigram_check).to eq("box o' ROCKS! and FAT cats are not antigrams or anagrams- but 2 letters match: k,s")
  end 
end