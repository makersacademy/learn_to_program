def sort(array)
  sorted_array = []
  array.length.times do
    sorted_array<<array.min
    array.delete_at(array.index(array.min))
  end
  sorted_array
end
