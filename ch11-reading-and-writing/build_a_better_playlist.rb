def music_shuffle filenames
  filenames = filenames.sort
  len = filenames.length

  2.times do
    l_idx = 0     # index of next card in the left pile
    r_idx = len/2 # index of next card in the right pile
    shuf = []

    # if we have an odd numer of cards, then the right pile will be larger.
    while shuf.length < len
      if shuf.length%2 == 0
        # take card from right pile
        shuf.push(filenames[r_idx])
        r_idx = r_idx + 1
      else
        # take card from left pile
        shuf.push(filenames[l_idx])
        l_idx = l_idx + 1
      end
    end
    filenames = shuf
  end
  # cut the deck
  arr = []
  cut = rand(len) # index of card to cut at
  idx = 0

  while idx < len
    arr.push(filenames[(idx+cut)%len])
    idx = idx + 1
  end

  arr
end

songs = ['aa/bbb', 'aa/ccc', 'aa/ddd', 'AAA/xxx', 'AAA/yyyy', 'AAA/zzzz', 'foo/bar']
puts music_shuffle(songs)
