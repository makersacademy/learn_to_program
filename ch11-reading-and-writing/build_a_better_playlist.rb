def music_shuffle filenames
  # We don't want a perfectly random shuffle, so let's
  # instead do a shuffle like card-shuffling. Let's
  # shuffle the "deck" twice, then cut it once. That's
  # not enough times to make a perfect shuffle, but it
  # does mix things up a bit.
  # Before we do anything, let's actually *sort* the
  # input, since we don't know how shuffled it might
  # already be, and we don't want it to be *too* random.
  filenames = filenames.sort  # => ["AAA/xxxx", "AAA/yyyy", "AAA/zzzz", "aa/bbb", "aa/ccc", "aa/ddd", "foo/bar"]
  len = filenames.length      # => 7

  # Now we shuffle twice.
  2.times do   # => 2
    l_idx = 0 # index of next card in left pile
    r_idx = len/2 # index of next card in right pile
    shuf = []  # => [], []
    # NOTE: If we have an odd number of "cards",
    # then the right pile will be larger.

    while shuf.length < len          # => true, true, true, true, true, true, true, false, true, true, true, true, true, true, true, false
      if shuf.length%2 == 0          # => true, false, true, false, true, false, true, true, false, true, false, true, false, true
        # take card from right pile
        shuf.push(filenames[r_idx])  # => ["aa/bbb"], ["aa/bbb", "AAA/xxxx", "aa/ccc"], ["aa/bbb", "AAA/xxxx", "aa/ccc", "AAA/yyyy", "aa/ddd"], ["aa/bbb", "AAA/xxxx", "aa/ccc", "AAA/yyyy", "aa/ddd", "AAA/zzzz", "foo/bar"], ["AAA/yyyy"], ["AAA/yyyy", "aa/bbb", "aa/ddd"], ["AAA/yyyy", "aa/bbb", "aa/ddd", "AAA/xxxx", "AAA/zzzz"], ["AAA/yyyy", "aa/bbb", "aa/ddd", "AAA/xxxx", "AAA/zzzz", "aa/ccc", "foo/bar"]
        r_idx = r_idx + 1            # => 4, 5, 6, 7, 4, 5, 6, 7
      else
        # take card from left pile
        shuf.push(filenames[l_idx])  # => ["aa/bbb", "AAA/xxxx"], ["aa/bbb", "AAA/xxxx", "aa/ccc", "AAA/yyyy"], ["aa/bbb", "AAA/xxxx", "aa/ccc", "AAA/yyyy", "aa/ddd", "AAA/zzzz"], ["AAA/yyyy", "aa/bbb"], ["AAA/yyyy", "aa/bbb", "aa/ddd", "AAA/xxxx"], ["AAA/yyyy", "aa/bbb", "aa/ddd", "AAA/xxxx", "AAA/zzzz", "aa/ccc"]
        l_idx = l_idx + 1            # => 1, 2, 3, 1, 2, 3
      end                            # => 4, 1, 5, 2, 6, 3, 7, 4, 1, 5, 2, 6, 3, 7
    end                              # => nil, nil

    filenames = shuf  # => ["aa/bbb", "AAA/xxxx", "aa/ccc", "AAA/yyyy", "aa/ddd", "AAA/zzzz", "foo/bar"], ["AAA/yyyy", "aa/bbb", "aa/ddd", "AAA/xxxx", "AAA/zzzz", "aa/ccc", "foo/bar"]
  end                 # => 2
  # And cut the deck.
  arr = []            # => []
  cut = rand(len) # index of card to cut at
  idx = 0             # => 0

  while idx < len                       # => true, true, true, true, true, true, true, false
    arr.push(filenames[(idx+cut)%len])  # => ["aa/ccc"], ["aa/ccc", "foo/bar"], ["aa/ccc", "foo/bar", "AAA/yyyy"], ["aa/ccc", "foo/bar", "AAA/yyyy", "aa/bbb"], ["aa/ccc", "foo/bar", "AAA/yyyy", "aa/bbb", "aa/ddd"], ["aa/ccc", "foo/bar", "AAA/yyyy", "aa/bbb", "aa/ddd", "AAA/xxxx"], ["aa/ccc", "foo/bar", "AAA/yyyy", "aa/bbb", "aa/ddd", "AAA/xxxx", "AAA/zzzz"]
    idx = idx + 1                       # => 1, 2, 3, 4, 5, 6, 7
  end                                   # => nil

  arr                                                   # => ["aa/ccc", "foo/bar", "AAA/yyyy", "aa/bbb", "aa/ddd", "AAA/xxxx", "AAA/zzzz"]
end                                                     # => :music_shuffle
songs = ['aa/bbb', 'aa/ccc', 'aa/ddd',                  # => "aa/ddd"
        'AAA/xxxx', 'AAA/yyyy', 'AAA/zzzz', 'foo/bar']  # => ["aa/bbb", "aa/ccc", "aa/ddd", "AAA/xxxx", "AAA/yyyy", "AAA/zzzz", "foo/bar"]
puts(music_shuffle(songs))                              # => nil

# >> aa/ccc
# >> foo/bar
# >> AAA/yyyy
# >> aa/bbb
# >> aa/ddd
# >> AAA/xxxx
# >> AAA/zzzz
