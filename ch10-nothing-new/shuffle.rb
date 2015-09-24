def shuffle arr
  length = arr.length
  shuffles = length*100

  new_arr = arr

  shuffles.times do
    index = 0
    while index < (length -1)
      n = new_arr[index]
      nn = new_arr[index+1]

      shuffle_it = rand(length) < (length/2)

      if shuffle_it
        new_arr[index] = nn.to_i
        new_arr[index+1] = n.to_i
      end
      index += 1
    end
  end
  return new_arr
end

puts shuffle [1,2,3,4,5,6,7,8,9]
