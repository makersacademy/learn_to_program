def music_shuffle filenames

  filenames= filenames.sort
  len = filenames.length

  2.times do
    left_idx = 0
    right_idx = len/2
    shuf = []

    while shuf.length < len
      if shuf.length % 2 == 0
        shuf.push(filenames[right_idx])
        right_idx = right_idx + 1
      else
        shuf.push(filenames[left_idx])
        left_idx = left_idx + 1
      end
    end

    filenames = shuf
  end

  array = []
  cut = rand(len)
  idx = 0

  while idx < len
    array.push(filenames[(idx+cut) % len])
    idx = idx + 1
  end

  array
end

filenames = ['aa/bbb', 'aa/ccc', 'aa/ddd',
         'AAA/xxxx', 'AAA/yyyy', 'AAA/zzzz', 'foo/bar']
