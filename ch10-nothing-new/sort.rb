def sort some_array
  recursive_sort some_array, []
end

def recursive_sort unsorted_array, sorted_array
  if unsorted_array.empty?
    puts sorted_array
  else
    word = unsorted_array.first
    unsorted_array.each do |x|
      word = x if x <= word
    end
    sorted_array << word
    unsorted_array.delete_at(unsorted_array.index(word))
    recursive_sort unsorted_array, sorted_array
  end
end

puts "Give me a list of words and enter a blank line to proceed!"
array = []
while true
  word = gets.chomp
  break if word.empty?
  array << word
end
puts "And here is the list sorted:"
puts (sort array)
