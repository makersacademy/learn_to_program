def dictionary_sort arr
  recursive_sort arr, []
end


def recursive_sort unsorted_array, sorted_array
  return sorted_array if unsorted_array.length == 0
  smallest = unsorted_array[unsorted_array.length-1]

  unsorted_array.each do |word|
    smallest = word if word.capitalize < smallest.capitalize
  end

  unsorted_array.slice!(unsorted_array.index{ |word| word == smallest })
  sorted_array << smallest

  recursive_sort unsorted_array, sorted_array
end
