def sort arr
  arr_final = []
  
  return arr if arr.empty?
  
  item = arr[0]
  arr.each do |x|
    next if item < x
    item = x
  end
  
  arr.delete_at(arr.index(item))
  arr_final << item
  
  arr_final = arr_final + sort(arr)
end