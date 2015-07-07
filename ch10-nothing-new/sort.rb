def sort arr # This "wraps" recursive_sort.
  recursive_sort arr, []
end

def recursive_sort unsorted_array, sorted_array
  if unsorted_array.empty?
    puts sorted_array
  else
    userWord = unsorted_array.first
    unsorted_array.each do |x|
      userWord = x if x <= userWord
    end
    sorted_array << userWord
    unsorted_array.delete_at(unsorted_array.index(userWord))
    recursive_sort unsorted_array, sorted_array
  end
end

puts "Enter word (or press return to sort)"
array = []
while true
  userWord = gets.chomp.capitalize
  break if userWord.empty?
  array << userWord
end
puts "Here are you words sorted alphabetically -"
puts sort array