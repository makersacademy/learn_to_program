def shuffle arr
    shuffle_array = []
  
    while arr.empty? == false
        r = arr[rand(arr.length)]
        shuffle_array << r
        arr.delete_at(arr.index(r))
    end
  
    shuffle_array
end