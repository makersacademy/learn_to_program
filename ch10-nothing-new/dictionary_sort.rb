def dictionary_sort array
rec_meth(array, [])
end

def rec_meth(array,sorted_array)
  if array == []
    return sorted_array
  end
  sorted_array << array.delete_at(array.map{|b| b.downcase}.index(array.map{|a| a.downcase}.min))
  rec_meth(array,sorted_array)
  
end

 puts dictionary_sort("A can can feel like singing.".split)