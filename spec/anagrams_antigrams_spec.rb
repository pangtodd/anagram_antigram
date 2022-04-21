require('rspec')
require('anagrams_antigrams')

describe(Anagrams)do
  describe('#anagram_check') do
    it("takes two arguments and sees if the words are anagrams")do
      test = Anagrams.new
      expect(test.anagram_check("apt","pat")).to eq("These words are anagrams!")
    end
    it("takes two arguments and sees if the words are anagrams, regardless of capitalization")do  
    test = Anagrams.new  
    expect(test.anagram_check("Apt","Pat")).to eq("These words are anagrams!")
    end
  end
end