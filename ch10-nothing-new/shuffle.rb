def shuffle some_array
# This "wraps" recursive_sort.
recursive_sort some_array, []
end
def recursive_sort(unsorted_array, sorted_array)
  if unsorted_array == []
    return sorted_array
  end
  if sorted_array == []
    num = unsorted_array.length
    sorted_array = Array.new(num)
    # num.times { sorted_array << nil}
  end

  available_indexes = []
  sorted_array.each_with_index {|val, index| available_indexes << index if val == nil}
  random_index = rand(available_indexes.length)
  rand_avail_index = available_indexes[random_index]
  sorted_array[rand_avail_index]= unsorted_array.pop

  recursive_sort(unsorted_array, sorted_array)
end