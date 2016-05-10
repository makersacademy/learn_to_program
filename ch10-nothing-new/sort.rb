def sort(unsorted_array, sorted_array = [])
  sorted_array << unsorted_array.delete_at(unsorted_array.index(unsorted_array.min))
  sort(unsorted_array, sorted_array) until unsorted_array.length == 0
  sorted_array
end

puts(sort(["Stephen", "Robert", "David", "Dawes"]).join(' '))
