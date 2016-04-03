unsorted = ['orange', 'Grape', 'pumpkin', 'apple', 'Banana', 'Cucumber', 'apple', 'grape', 'banana']
sorted = []
print unsorted.sort # Check manual sort against Ruby sort method
puts ''

def dictionary_sort(unsorted_array, sorted_array)
  unsorted_array.map!(&:downcase)
  if unsorted_array.size > 0
    append_next = unsorted_array.min
    sorted_array << unsorted_array.delete_at(unsorted_array.index(append_next))
    dictionary_sort(unsorted_array, sorted_array) 
    sorted_array
  end
end

print dictionary_sort(unsorted, sorted)