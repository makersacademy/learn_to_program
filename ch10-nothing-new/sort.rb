def sort arr
  recursive_sort arr, []
end

def recursive_sort unsorted_array, sorted_array

unsorted_array.map do |word|
  unsorted_array.any? { |oword| word > oword} ? () : (sorted_array << word ; unsorted_array.delete_at(unsorted_array.index(word)))
end

return sorted_array if unsorted_array.size < 1
recursive_sort(unsorted_array, sorted_array)

end