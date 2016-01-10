def music_shuffle filenames
  #shuffle like i would shuffle cards -> split cards in half and put together and then split the p. Start from a totally unshuffled playlist
  filenames = filenames.sort
  length = filenames.length

  2.times do
    right = []
    left = []
    #sort into two piles
    for i in 0...length
      if i  < length/2
        left << filenames[i]
      else
        right << filenames[i]
      end
    end
    #recombine the piles
    shuf = []
    index = 0
    while shuf.length < length
      shuf << right[index]
      shuf << left[index]
      index += 1
    end
    filenames = shuf
  end
  #rand(length) will return a random number >= 0 and < length
  cut = rand(length)
  #want to take the files starting from index 'cut' and put them first.
  music = []
  index = 0
  while index < length
    music << filenames[(cut+index)%length]
    index += 1
  end
  # (cut + index)%length will take everything to modulo length (so once cut + index > length, it will return 1...(cut-1))
  music
end
