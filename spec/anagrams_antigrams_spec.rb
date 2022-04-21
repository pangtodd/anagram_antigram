require('rspec')
require('anagrams_antigrams')

describe(Anagrams)do
  describe('#anagram_check') do
    it("takes two arguments and sees if the words are anagrams")do
    test = Anagrams.new
    expect(test.anagram_check("bob","obo")).to eq("this is an anagram")
    end
  end
end