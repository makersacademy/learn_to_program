def music_shuffle filenames
  filenames = filenames.sort
  len = filenames.length
  2.times do
    l_idx = 0
    r_idx = len/2
    shuffle = []

    while shuffle.length < len
      if shuffle.length % 2 == 0
        shuffle.push(filenames [r_idx])
        r_idx = r_idx + 1
      else
        shuffle.push(filenames[l_idx])
        l_idx = l_idx + 1
      end
    end

    filenames = shuffle
  end

  arr = []
  cut = rand(len)
  idx = 0

  while idx < len
    arr.push(filenames[idx + cut) % len])
    idx = idx + 1
  end

  arr
end
