def music_shuffle filenames
 
  filenames = filenames.sort
  len = filenames.length

  # shuffle twice.
  2.times do
    l_idx = 0 # index of card in left pile
    r_idx = len/2 # index of card in right pile
    shuf = []

    while shuf.length < len
      if shuf.length%2 == 0
        # card from right pile
        shuf.push(filenames[r_idx])
        r_idx = r_idx + 1
      else
        # card from left pile
        shuf.push(filenames[l_idx])
        l_idx = l_idx + 1
      end
    end

    filenames = shuf
  end

  arr = []
  cut = rand(len) # index of card to cut at
  idx = 0

  while idx < len
    arr.push(filenames[(idx+cut)%len])
    idx = idx + 1
  end
  
  arr
end
