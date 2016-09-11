def sort some_array
recursive_sort some_array, []
end

def recursive_sort unsorted_array, sorted_array

if unsorted_array.length <= 0
  return sorted_array
  puts sorted_array
end
smallest_word = unsorted_array.pop
still_unsorted = []
unsorted_array.each do |x|
  if x < smallest_word
    still_unsorted.push(smallest_word)
    smallest_word = x
  else
    still_unsorted.push(x)
  end
end
sorted_array.push(smallest_word)
recursive_sort still_unsorted, sorted_array
end

puts (sort(["fucking", "hell", "bollocks"]))
