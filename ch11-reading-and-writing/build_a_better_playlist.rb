def music_shuffle(filenames)
  filenames = filenames.sort
  length = filenames.length

  2.times do
    left = 0
    right = length / 2
    shuffle = []

    while shuffle.length < length
      if shuffle.length.even?
        shuffle.push(filenames[right])
        right += 1
      else
        shuffle.push(filenames[left])
        left += 1
      end
    end

    filenames = shuffle
  end
  arrray = []
  split = rand(length)
  i = 0

  while i < length
    arrray.push(filenames[(i + split) % length])
    i += 1
  end

  arrray
end
