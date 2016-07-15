def music_shuffle filenames
  filenames = filenames.sort
  file_length = filenames.length

  2.times do
    left_pile = 0
    right_pile = file_length/2
    shuf = []

    while shuf.length < file_length
      if shuf.length % 2 == 0
        shuf.push(filenames[right_pile])
        right_pile = right_pile + 1
      else
        shuf.push(filenames[left_pile])
        left_pile = left_pile + 1
      end
    end
    filenames = shuf
  end
  arr = []
  cut = rand(file_length)
  index = 0

  while index < file_length
    arr.push(filenames[(index + cut) % file_length])
    index += 1
  end
  arr
end

songs = ['aa/bbb', 'aa/ccc', 'aa/ddd', 'AAA/xxxx', 'AAA/yyyy', 'AAA/zzzz', 'foo/bar']
puts (music_shuffle(songs))
