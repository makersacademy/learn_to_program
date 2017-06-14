def shuffle arr
  # your code here
  shuff = []
  
  while !arr.empty?
    rand_index = rand(arr.length)
    #curr_index = 0
    new_arr = []
    arr.length.times do |i|
      if i == rand_index
        shuff << arr[rand_index]
      else
        new_arr << arr[i]
      end
    end
    arr = new_arr
  end
  
  shuff
end