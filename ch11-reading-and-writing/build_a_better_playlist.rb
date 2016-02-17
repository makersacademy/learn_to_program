def music_shuffle(filenames)
  # We don't want a perfectly random shuffle, so let's
  # instead do a shuffle like card-shuffling. Let's
  # shuffle the "deck" twice, then cut it once. That's
  # not enough times to make a perfect shuffle, but it
  # does mix things up a bit.
  # Before we do anything, let's actually *sort* the
  # input, since we don't know how shuffled it might
  # already be, and we don't want it to be *too* random.
  filenames = filenames.sort
  len = filenames.length
  # Finding the length of the filenames array

  # Now we shuffle twice.
  # 2.times = do whatever is inside the block twice.
  2.times do
    # Splitting the deck in half and the left side is l_idx and the right half is r_dx.
    l_idx = 0 # index of next card in left pile
    r_idx = len/2 # index of next card in right pile
    # Created an empty array called shuf.
    shuf = []
    # NOTE: If we have an odd number of "cards",
    # then the right pile will be larger.
    # While the shuf array is smaller than len (see variable at beginning) do the loop.
    while shuf.length < len
      # If the length of shuf is an even number.
      if shuf.length%2 == 0
        # take card from right pile
        # Push that r_idx onto the end of the shuf array.
        shuf.push(filenames[r_idx])
        # Increment r_idx by one because we've gone from index 0 to index 1.
        r_idx = r_idx + 1
      else
        # If the length of shuf is odd take off the left pile.
        # take card from left pile
        shuf.push(filenames[l_idx])
        l_idx = l_idx + 1
      end
    end

    # Now making the filenames variable the new shuf array.
    filenames = shuf
  end
  # And cut the deck.
  arr = []
  # Cutting the pack at a random number below the length of filenames.
  cut = rand(len) # index of card to cut at
  idx = 0

  while idx < len
    arr.push(filenames[(idx+cut)%len])
    # Say cut = 7, idx = 0, len = 10
    # 0 + 7 = 7 % 10 = 7
    # Push 7 onto arr.
    idx = idx + 1
    # plus 1 onto idx. so idx now = 1.
    # 1 + 7 = 8 % 10 = 8. Push 8 onto arr. All the way up to 10.
    # idx now = 4. 4 + 7 = 11 % 10 = 1.
    # Push 1 into arr and and so on until idx is bigger than len.
  end
  arr
end
  songs = ['aa/bbb', 'aa/ccc', 'aa/ddd',
          'AAA/xxxx', 'AAA/yyyy', 'AAA/zzzz', 'foo/bar']
  puts(music_shuffle(songs))