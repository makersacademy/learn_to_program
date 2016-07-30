def music_shuffle filenames

  filenames.sort_by!{rand}

  #added extra shuffling bit ??
  array_1 = []
  array_2 = []

    while filenames.size > 0
      array_1 << filenames.pop
      array_2 << filenames.pop
    end

  array_1.concat(array_2)
  array_1.compact!

end

songs = ['aa/bbb',   'aa/ccc',   'aa/ddd',
         'AAA/xxxx', 'AAA/yyyy', 'AAA/zzzz', 'foo/bar']
puts(music_shuffle(songs))
