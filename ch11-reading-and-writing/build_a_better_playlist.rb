def music_shuffle filenames
  #sort before shuffle
  filenames = filenames.sort
  len = filenames.length

  #shuffle twice
  2.times do
    l_idx = 0
    r_idx = len/2
    shuf = []

    while shuf.length < len
      if shuf.length % 2 == 0
        #take card from right pile
        shuf.push(filenames[r_idx])
        r_idx = r_idx + 1
      else
        #take card from the left
        shuf.push(filenames[l_idx])
        l_idx = l_idx + 1
      end
    end
    filenames = shuf
  end
  #and cut the deck
  arr = []
  cut = rand(len) #index of cards to cut at
  idx = 0

  while idx < len
    arr.push(filenames[(idx + cut) % len])
    idx = idx + 1
  end
  arr
end
