def sort some_array
  recursive_sort some_array, []
end

def recursive_sort unsorted_array, sorted_array

  unsorted_array.length.times { |i|
  if i = unsorted_array.min
    sorted_array << i
    unsorted_array.delete_at(unsorted_array.find_index(i))
    recursive_sort(unsorted_array, sorted_array)
  end
  }

  sorted_array

end

puts sort ['can','feel','singing','like','a','can']