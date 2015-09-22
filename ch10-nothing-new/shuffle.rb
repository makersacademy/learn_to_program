def shuffle arr
  recursive_shuffle arr, []
end

def recursive_shuffle arr, shuffled_arr
  
  return shuffled_arr if arr.length == 0 

  unshuffled_arr = []

  index = rand(arr.length)

  arr.each do |item|
    
    if item == arr[index]
      shuffled_arr.push(item)
    else
      unshuffled_arr.push(item)
    end

  end

  recursive_shuffle unshuffled_arr, shuffled_arr

end