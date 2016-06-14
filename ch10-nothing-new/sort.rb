def sort(array, sorted_array = [])
  sorted_array << array.delete_at(array.index(array.min))
  sort(array, sorted_array) unless array.size.zero?
  sorted_array
end
