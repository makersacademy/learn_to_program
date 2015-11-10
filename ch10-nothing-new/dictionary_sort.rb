def dictionary_sort arr
  arr_final = []
  
  return arr if arr.empty?
  
  item = arr[0]
  arr.each do |x|
    next if item.downcase < x.downcase
    item = x
  end
  
  arr.delete_at(arr.index(item))
  arr_final << item
  
  arr_final = arr_final + dictionary_sort(arr)
end