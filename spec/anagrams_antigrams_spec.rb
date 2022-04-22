require('rspec')
require('anagrams_antigrams')

describe(Anagrams)do
  describe('#anagram_check') do
    it("takes two arguments and sees if the words or phrases are anagrams, regardless of punctuation or spacing")do
      test = Anagrams.new
      expect(test.anagram_check("Fourty! Five?","OVER        FIFTY!")).to eq("These words are anagrams!")
    end
    it("takes two arguments and sees if the words are anagrams, regardless of capitalization")do  
      test = Anagrams.new  
      expect(test.anagram_check("Apt","Pat")).to eq("These words are anagrams!")
    end
  end
  describe ("#compare_score")do
    it("takes two arguements and returns a score of how many letters are the same")do
      test = Anagrams.new
      expect(test.compare_score("bob", "bob")).to eq(3)
    end
  end
  describe("#word_check")do
    it("takes two arguments and makes sure the words have letters")do
      test = Anagrams.new
      expect(test.word_check("apt")).to eq("ok, passes the base requirement.")
    end
  end
  describe("#antigram_check")do
    it("takes two arguments and checks to see if they are antigrams/have any letters in common")do
      test = Anagrams.new
      expect(test.antigram_check("box", "cat")).to eq('box and cat are antigrams.')
    end
  end 
end