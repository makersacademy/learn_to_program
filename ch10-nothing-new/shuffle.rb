def shuffle arr
  shuff = []

while arr.length > 0
  rand_index = rand(arr.length)
  curr_index = 0
  new_arr = []

    arr.each do |item|
      if curr_index == rand_index
        shuff.push item
      else
        new_arr.push item
      end

      curr_index = curr_index + 1
    end
    arr = new_arr
  end
  shuff
end

puts(shuffle(['1' , '2' , '3' , '4' , '5' , '6' , '7' , '8', '9']))
