def dictionary_sort some_array
  recursive_sort some_array, []
end

def recursive_sort unsorted_array, sorted_array
  if unsorted_array.empty?
    puts sorted_array
  else
    word = unsorted_array.first
    unsorted_array.each do |x|
      word = x if x.downcase <= word.downcase
    end
    if word == word.capitalize || unsorted_array.include?(word.capitalize)
      sorted_array << word.capitalize
      unsorted_array.delete_at(unsorted_array.index(word.capitalize))
    else
      sorted_array << word
      unsorted_array.delete_at(unsorted_array.index(word))
    end
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
puts (dictionary_sort array)
