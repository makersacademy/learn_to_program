#!/usr/bin/env ruby
def sort arr
  recursive_sort arr, []
end

def recursive_sort unsorted_words, words
  return words if unsorted_words.length <= 0

  still_unsorted_words = []
  smallest = unsorted_words.pop

  unsorted_words.each do |test_word|
    if test_word < smallest
      still_unsorted_words << smallest
      smallest = test_word
    else
      still_unsorted_words << test_word
    end
  end

  words << smallest

  recursive_sort still_unsorted_words, words
end

words = []

puts "Give me some words and I'll sort them for you...press ENTER when you've finished your list.."

while true
  word = $stdin.gets.chomp

  break if word.empty?

  words << word
end

puts "................"
puts ""
puts (sort words)
puts "\nCome again soon!"
