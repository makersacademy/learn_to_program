def music_shuffle filenames
  
 arr = filenames.sample(filenames.length)
 
 arr
 # your code here
end

songs = ['aa/bbb', 'aa/ccc', 'aa/ddd',
          'AAA/xxxx', 'AAA/yyyy', 'AAA/zzzz', 'foo/bar']
puts(music_shuffle(songs))

