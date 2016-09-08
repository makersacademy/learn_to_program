def shuffle arr

    shuffled_array = []
    
    while arr.length > 0
    index = 0
    not_shuffled = []
    random_index = rand(arr.length)
    
      arr.each do |tested_object|
        if index == random_index
          shuffled_array.push tested_object
        else 
          not_shuffled.push tested_object
        end
        index += 1
      end
      arr = not_shuffled
    end
    shuffled_array
end
