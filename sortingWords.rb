def recursive_sort unsorted_array, sorted_array
  sorted_array = unsorted_array.sort { |x, y| x <=> y }
end

puts recursive_sort ["meems", "meems", "freems", "frrops", "zeeps", "haha"], []