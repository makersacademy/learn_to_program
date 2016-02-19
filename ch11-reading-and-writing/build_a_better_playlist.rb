def music_shuffle filenames
  filenames.sort!
  length = filenames.size
  2.times do
    l_index = 0
    r_index = length / 2
    shuffle = []

    while shuffle.size < length
      if shuffle.size % 2 == 0
        shuffle.push(filenames[r_index])
        r_index += 1
      else
        shuffle.push(filenames[l_index])
        l_index += 1
      end
    end

    filenames = shuffle
  end

  shuffle_2 = []
  cut = rand(length)
  index = 0
  while index < length
    shuffle_2.push(filenames[(index+cut)%length])
    index += 1
  end

  return shuffle_2
end
songs = ['aa/bbb', 'aa/ccc', 'aa/ddd', 'AAA/xxxx', 'AAA/yyyy', 'AAA/zzzz', 'foo/bar']
p music_shuffle songs
