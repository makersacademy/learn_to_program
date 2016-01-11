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

=begin
songs = ['aa/bbb', 'aa/ccc', 'aa/ddd','AAA/xxxx', 'AAA/yyyy', 'AAA/zzzz', 'foo/bar']
your_result = ['aa/ddd', 'AAA/xxxx', 'AAA/zzzz', 'aa/ccc', 'foo/bar', 'AAA/yyyy', 'aa/bbb']
his_result = ['foo/bar', 'AAA/zzzz', 'aa/ddd', 'aa/ccc', 'AAA/xxxx', 'aa/bbb', 'AAA/yyyy']

puts "#{music_shuffle(songs)}"
puts
puts "#{your_result}"
puts
puts "#{his_result}"
=end