def shuffle arr
  
  shuffled_arr = [] #Start with empty array to collect shuffled items

  while arr.length > 0 #Set point at which recursion should stop
    
    rand_index = rand(arr.length) #Randomly pick one element of the array
    curr_index = 0  #Set back to 0 before going around again
    new_arr = [] 

    arr.each do |item|
      if curr_index == rand_index
        shuffled_arr.push item #If it's the random index one then chuck it into the shuffled pile
      else
        new_arr.push item #Chuck the others back to be 'recursed'...
      end
      curr_index = curr_index + 1 
    end

    arr = new_arr
  end

  return shuffled_arr
end

# puts(shuffle([1,2,3,4,5,6,7,8,9]))

arr = ['beaver', 'badger', 'bear', 'lion', 'tiger', 'panda', 'bear', 'giraffe']
puts shuffle arr    
  