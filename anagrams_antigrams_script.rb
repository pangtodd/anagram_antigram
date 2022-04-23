#!/usr/bin/env ruby
require ('./lib/anagrams_antigrams.rb')

puts "Give me two words, and I'll tell you some things about them!"
puts "first word?"
word1 = gets.chomp
puts "second word?"
word2 = gets.chomp
puts "first word is #{word1} and second word is #{word2}, right?"
test= Anagrams.new(word1, word2)
puts "#{test.word_check}"
