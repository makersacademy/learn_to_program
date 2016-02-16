def sort(array)
rec_meth(array, [])
end

def rec_meth(array,sorted_array)
  if array == []
    return sorted_array
  end
  sorted_array << array.delete_at(array.index(array.min))
  rec_meth(array,sorted_array)
end
