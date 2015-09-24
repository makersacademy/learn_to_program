def music_shuffle filenames
  # your code here
  mid = filenames.length / 2

  shuf1 = filenames[0..mid]
  shuf2 = filenames[(mid+1)..filenames.length]

  shuf1.sort!{rand} + shuf2.sort!{rand}

end

songs = ['aa/bbb',   'aa/ccc',   'aa/ddd',
         'AAA/xxxx', 'AAA/yyyy', 'AAA/zzzz', 'foo/bar']

puts(music_shuffle(songs))
