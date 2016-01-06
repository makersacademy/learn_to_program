def dictionary_sort arr
    dictionary_array = []
  
    while arr.empty? == false
        dictionary_array << arr.min
        arr.delete_at(arr.index(arr.min))
    end
  
    dictionary_array
end