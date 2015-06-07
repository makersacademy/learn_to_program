def music_shuffle filenames

  filenames = filenames.sort
  
  len = filenames.length

  2.times do 
    shuffled_arr = []
    left_index = 0
    right_index = len/2

    while shuffled_arr.length < len
      if shuffled_arr.length%2 == 0 #even indices
        shuffled_arr.push(filenames[right_index])
        right_index += 1
      else
        shuffled_arr.push(filenames[left_index])
        left_index += 1
      end
    end
    filenames = shuffled_arr
  end

  new_array = []
  cut = rand(len)
  ind = 0
  
  while ind < len
    new_array.push(filenames[(ind+cut)% len])
    ind += 1
  end
  new_array
end