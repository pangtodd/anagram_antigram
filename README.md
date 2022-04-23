# anagrams_antigrams

#### By Todd Pangilinan

Project which checks user input of two words to check if they are antigrams or anagrams.

## Technologies used:

* Ruby
* RSPEC
* Pry
* markdown
* Regular expressions


## Description:
This project focuses on TDD in the Ruby enviornment. Taking user input for two words or sentences, the program should compare the two inputs and determine if they are anagrams or antigrams. It also accounts for differences like punctionuation, capitalization, and use of non-letter characters (numbers, symbols, etc).

## Setup/Installation Requirements

* If you don't have git installed on your machine, follow these [instructions.](https://www.learnhowtoprogram.com/introduction-to-programming/getting-started-with-intro-to-programming/git-and-github)
* Via your terminmal, navigate to the directory you want to store my files in.
* Clone my git hub directory by typing or cutting pasting: "git clone https://github.com/pangtodd/anagram_antigram.git" into your terminal
* To run this program, you must have Ruby 2.6.5 installed on your machine. If you do not, you can follow these instructions: [Mac](https://www.learnhowtoprogram.com/ruby-and-rails-part-time/getting-started-with-ruby/installing-ruby-on-mac) or [PC](https://www.learnhowtoprogram.com/ruby-and-rails-part-time/getting-started-with-ruby/installing-ruby-on-windows).
* Once you have the project downloaded, navigate to the root of the project in your terminal and type "bundle".
* After that, run "ruby anagrams_antigrams_script.rb"

## Known Bugs

* As of 4/23/22, if the words are not antigrams or anagrams, it will return the number of matching letters correctly (and literally). But this means you will get duplicates. For example, comparing "hill" with "lush" will return "3 letters match: h, l, l. It is technically correct, but would have preferred the example returned "2 letters match: h, l".
* If you notice other mistakes or bugs, please email pang.todd@gmail.com

## License

[MIT](https://opensource.org/licenses/MIT)
Copyright 2022 (c) Todd Pangilinan 