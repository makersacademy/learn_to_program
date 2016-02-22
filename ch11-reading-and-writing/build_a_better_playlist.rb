def music_shuffle files  # Couldn't get my own version to pass, so made new solution following Chris Pine.
  files = files.sort
  num_tracks = files.length

  2.times do                      #shuffling the deck twice
    left_index = 0                #left half of deck
    right_index = num_tracks/2    #right half
    shuffle = []
    # => N.B Right deck will be larger if odd number of tracks

    while shuffle.length < num_tracks
      if shuffle.length % 2 == 0    # if even take from right, else: from left (alternating)
        shuffle.push(files[right_index])  #takes track at right_index from right deck
        right_index +=1       # increment right_index
      else
        shuffle.push(files[left_index])   # (otherwise) take track from left deck
        left_index += 1       # increment
      end
    end

  files = shuffle  # twice shuffled deck saved to files variable
  end

  ary = []                  # new empty array
  cut = rand(num_tracks)    # cut deck at random index
  index = 0

  while index < num_tracks    # from index (0) to total num_tracks
    ary.push(files[(index+cut)%num_tracks])
    index += 1
  end
  ary   # return twice shuffled and then cut deck
end
