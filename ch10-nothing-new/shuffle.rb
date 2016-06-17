def shuffle arr
  shuffled = []

  while !arr.empty?
    random = rand(arr.length) # picking random element using length of array
    index_no = 0
    new_arr = []

    arr.each do |element|
      if index_no == random
        shuffled.push element # if index number matches random number add to shuffled array
      else
        new_arr.push element # otherwise add to new array
      end

      index_no += 1
    end

  arr = new_arr #new array smaller, loops until arr is empty
  end

  shuffled # returns all elements in shuffled array in random order
end

puts(shuffle([1,2,3,4,5,6,7,8,9]))
