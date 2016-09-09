def music_shuffle(filenames)
  filenames_sorted = filenames.sort # in case files ar already 'unsorted'
  filenames_length = filenames.length
  
  # to be mixed up like shuffling(x2) and cutting
  
  2.times do
      left_index = 0 # 'left pile'
      right_index = filenames_length/2 # 'right pile'
      shuffled_arr = []
      
      while shuffled_arr.length < filenames_length
        if shuffled_arr.length%2 == 0
            #take card from 'right pile'
            shuffled_arr.push(filenames_sorted[right_index])
            right_index = right_index + 1
        else
            # take card from 'left pile'
            shuffled_arr.push(filenames_sorted[left_index])
            left_index = left_index + 1
        end
    end
    
    filenames_sorted = shuffled_arr
  end
  # now to 'cut' the deck.
  arr = []
  cut = rand(filenames_length)
  index = 0
  
  while index < filenames_length
    arr.push(filenames_sorted[(index+cut)%filenames_length])
    index = index + 1
  end
  arr
end
