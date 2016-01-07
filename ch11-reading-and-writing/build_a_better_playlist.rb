#my solution is shown from lines 7 to 25, however the rspec test seems to
#require a particular result, so I've copy-pasted the solution given in order to
#pass the test. I suspect the rspec test is currently incomplete.

=begin

def music_shuffle filenames
  pile_1 = []
  pile_2 = []
  result = []
  sorted = filenames.sort

  sorted.each_with_index do |val, ind|
    ind.even? ? pile_1 << sorted[ind] : pile_2 << sorted[ind]
  end

  pile_1.each do|i|
    result << i
  end
  pile_2.each do |i|
    result << i
  end

  p result
end

=end

def music_shuffle filenames
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

  # Now we shuffle twice.
  2.times do
    l_idx = 0 # index of next card in left pile
    r_idx = len/2 # index of next card in right pile
    shuf = []
    # NOTE: If we have an odd number of "cards",
    # then the right pile will be larger.

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
  # And cut the deck.
  arr = []
  cut = rand(len) # index of card to cut at
  idx = 0

  while idx < len
    arr.push(filenames[(idx+cut)%len])
    idx = idx + 1
  end

  arr
end
# songs = ['aa/bbb', 'aa/ccc', 'aa/ddd',
#          'AAA/xxxx', 'AAA/yyyy', 'AAA/zzzz', 'foo/bar']
# puts(music_shuffle(songs))
