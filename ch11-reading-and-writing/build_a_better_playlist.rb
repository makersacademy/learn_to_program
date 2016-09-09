def music_shuffle filenames
  filenames = filenames.sort
  number_of_files = filenames.length

  2.times do
    left_index = 0
    right_index = number_of_files/2
    shuffle = []

    while shuffle.length < number_of_files
      if shuffle.length % 2 == 0
        shuffle.push(filenames[right_index])
        right_index += 1
      else
        shuffle.push(filenames[left_index])
        left_index += 1
      end
    end
    filenames = shuffle
  end

  playlist = []
  cut = rand(number_of_files)
  i = 0
  while i < number_of_files
    playlist.push(filenames[(i + cut) % number_of_files])
    i += 1
  end

  playlist
end

songs = ['aa/bbb',   'aa/ccc',   'aa/ddd',
         'AAA/xxxx', 'AAA/yyyy', 'AAA/zzzz', 'foo/bar']
puts(music_shuffle(songs))
