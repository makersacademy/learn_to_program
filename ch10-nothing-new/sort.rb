def sort some_array # This "wraps" recursive_sort. 
  recursive_sort some_array, []
end
def recursive_sort unsorted_array, sorted_array 
  x = 0
  index = 0
  temp = unsorted_array[x]
  (unsorted_array.length-1).times do
    if temp > unsorted_array[x+1]
      temp = unsorted_array[x+1]
      index = x+1
    end
    x += 1
  end
  if unsorted_array.length != 0 
    sorted_array << temp
    unsorted_array.delete_at(index)
    recursive_sort unsorted_array, sorted_array
  else
    sorted_array
  end
end

array = ['here', 'are', 'some', 'some', 'stupid', 'words', 'i', 'wrote']

puts sort array