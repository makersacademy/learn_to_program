def sort arr
    sorted_array = []
  
    while arr.empty? == false
        sorted_array << arr.min
        arr.delete_at(arr.index(arr.min))
    end
  
    sorted_array
  
end