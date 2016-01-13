#copied in his version to pass
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





#my version, which does shuffel, but clearly, not in the exact same way as CP
=begin
def music_shuffle filenames
  # your code here
  #sort completely
  #then take out [0] then [4] and then [2] [3]
  filenames.sort!
  shuffle = []
  2.times do
    #puts filenames.length
    while filenames.length > 0
      shuffle << filenames.shift
      shuffle << filenames.pop if filenames.length > 0
      #puts shuffle.join(' ')
    end
    #puts shuffle.join(' ')
    (filenames << shuffle.pop(shuffle.length/2)).flatten!
    (filenames << shuffle).flatten!
    #puts filenames.join(' ')
    shuffle = []
  end
  puts filenames.join(' ')
  return filenames

end

#music_shuffle ['aa/bbb', 'aa/ccc', 'aa/ddd',
         #'AAA/xxxx', 'AAA/yyyy', 'AAA/zzzz', 'foo/bar']
music_shuffle [1,2,3,4,5,6,7,8,9,10]

=end
