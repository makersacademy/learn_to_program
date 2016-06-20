def shuffle arr
  
  shuf = []

  while arr.length > 0
  
  random_index = rand(arr.length)
  current_index = 0
  
  new_array = []
    arr.each do |item|
      
      if current_index == random_index
        shuf.push item
      else
        new_array.push item
      end
    
    current_index = current_index + 1
    end
  
    arr = new_array
  end
  
  shuf
end