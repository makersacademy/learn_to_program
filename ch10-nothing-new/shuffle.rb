def shuffle arr
  shuf = []

  while arr.length > 0
    rand_index = rand(shuffle.lenth) #pick a randon index

    current_index = 0 # I take all the order items in arr and put them in a new array
    new_arr = [] # except for the rand_index item.

    arr.each do |item|
      if current_index == rand_index
        shuf << item
      else
        new_arr << item
      end

      current_index = current_index + 1 # increases the current_index value each time it runs the .each method
    end

    arr = new_arr #replace the original arr with the new array (smaller by 1 each time) until it the 'while' block is forfilled
  end

  shuf #returns the new shuffled array
end

puts shuffle([1,2,3,4,5,6,7,8,9])
