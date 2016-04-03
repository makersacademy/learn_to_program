unsorted = ['orange', 'grape', 'pumpkin', 'apple', 'banana', 'cucumber', 'apple', 'grape', 'banana']
sorted = []
print unsorted.sort # Check manual sort against Ruby sort method
puts ''

def recursive_sort (unsorted_array, sorted_array)
  if unsorted_array.size > 0
    append_next = unsorted_array.min
    sorted_array << unsorted_array.delete_at(unsorted_array.index(append_next))
    recursive_sort(unsorted_array, sorted_array) 
    sorted_array
  end
end

print recursive_sort(unsorted, sorted)
