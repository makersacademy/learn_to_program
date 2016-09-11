def shuffle(array)
  shuffled = []

  while array.length > 0
 
    rand_index = rand(array.length)

 
    current_index = 0
    unshuffled = []

    array.each { |item|
      if current_index == rand_index
        shuffled << item
      else
        unshuffled << item
      end

      current_index += 1
     }

  
    array = unshuffled

  end

  shuffled

end

numbers = [1, 2, 3, 4]
puts shuffle(numbers)


