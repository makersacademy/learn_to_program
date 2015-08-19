#!/usr/bin/env ruby
def sort arr
  return arr if arr.length <= 1

  middle = arr.pop
  less = arr.select{ |x| x < middle } 
  more = arr.select{ |x| x >= middle }

  sort(less) + [middle] + sort(more)
end

words_sort = ['I', 'kinda', 'wana', 'yellow', 'zombie']

words = words_sort.shuffle

puts "................"
puts (sort words)
puts "\nCome again soon!"
