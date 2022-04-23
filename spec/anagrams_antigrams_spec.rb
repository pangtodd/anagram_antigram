require('rspec')
require('anagrams_antigrams')

describe(Anagrams)do
  describe('#anagram_check') do
    it("takes two arguments and sees if the words or phrases are anagrams, regardless of punctuation or spacing")do
      test = Anagrams.new("Forty! Five?","OVER        FIFTY!")
      expect(test.anagram_check).to eq("Forty! Five? and OVER        FIFTY! are anagrams!")
    end
    it("takes two arguments and sees if the words are anagrams. If they are not, it checks if they are antigrams.")do  
      test = Anagrams.new("Apt","Part")
      expect(test.anagram_check).to eq("Apt and Part are not anagrams. \nApt and Part are not antigrams or anagrams- but 3 letters match: a,p,t")
    end
  end
  describe("#word_check")do
    it("takes both inputs and makes sure the variables has at least one vowel or y")do
      test = Anagrams.new("hzzz", "hi")
      expect(test.word_check).to eq("check again, hzzz doesn't seem to have any vowels or a y.")
    end
    it("takes both inputs and if both inputs meet the basic requirement of having a vowel or y, it check to see if they are an anagram")do
      test = Anagrams.new("apt", "pat")
      expect(test.word_check).to eq("ok, apt and pat pass the basic requirement of a word having at least one vowel or y. \n apt and pat are anagrams!")
    end
  end
  describe("#antigram_check")do
    it("takes two arguments and checks to see if they are antigrams/have any letters in common regardless of punctionuation, capitaliztion or special characters.")do
      test = Anagrams.new("box o' ROX!", "FAT cat")
      expect(test.antigram_check).to eq("box o' ROX! and FAT cat are antigrams.")
    end
    it("takes two arguments and checks to see if thy are antigrams- if they are not, it says how many letters are in common, and which ones.")do
      test = Anagrams.new("box o' ROCKS!", "FAT cats")
      expect(test.antigram_check).to eq("box o' ROCKS! and FAT cats are not antigrams or anagrams- but 2 letters match: c,s")
    end
  end 
end