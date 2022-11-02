# Your code goes here!
require 'pry'

class Anagram
  attr_reader :match

  def initialize(word)
    @word = word
  end

  def match(array)
    # puts array
    # separate letters with split
    # array.sort_by {|w| w.downcase}
    sorted_array = array.map do |w|
      separate_letters = w.split("")
      separate_letters.sort.join("")
    end

    sorted_array.filter do |w|
      separate_letters = @word.split("")
      w == separate_letters.sort.join("")
    end

  end

end


new_word = Anagram.new('ab')
# new_word.match(%w[mlania google notebook airtag])
# new_word.match(["mlania", "google", "notebook", "airtag", "ba"])

binding.pry