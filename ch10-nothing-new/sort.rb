def sort array
  recursive_sort array, []
end

def recursive_sort unsorted_array, sorted_array
   smallest_word = unsorted_array.first
  while unsorted_array.length > 0 do
    unsorted_array.each do |word|
        smallest_word = word if word < smallest_word
    end

    unsorted_array.slice!(unsorted_array.index(smallest_word))
    sorted_array << smallest_word
    recursive_sort unsorted_array, sorted_array
  end
    return sorted_array
end
