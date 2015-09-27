def music_shuffle filenames
  # first we need to sort the input
  filenames = filenames.sort
  len = filenames.length

  # then we shuffle twice
  2.times do
    # index of next card in left pile
    l_idx = 0
    # index of next card in right pile
    r_idx = len/2
    shuffle = []

    while shuffle.length < len
      if shuffle.length%2 == 0
        # take card from right pile
        shuffle.push(filenames[r_idx])
        r_idx += 1
      else
        # take card from left pile
        shuffle.push(filenames[l_idx])
        l_idx += 1
      end
    end

    filenames = shuffle
  end
  # add cut the desk
  arr = []
  # index of card to cut at
  cut = rand(len)
  idx = 0

  while idx < len
    arr.push(filenames[(idx+cut)%len])
    idx += 1
  end

  arr
end
=begin
songs = ['aa/bbb', 'aa/ccc', 'aa/ddd',
         'AAA/xxxx', 'AAA/yyyy', 'AAA/zzzz', 'foo/bar']

puts(music_shuffle(songs))
=end