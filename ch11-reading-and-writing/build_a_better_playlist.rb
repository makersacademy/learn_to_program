def music_shuffle filenames
  # your code here
  #filenames = 
  filenames.shuffle.shuffle
  #l = filenames.length
  
end
songs = ['aa/bbb', 'aa/ccc', 'aa/ddd',
'AAA/xxxx', 'AAA/yyyy', 'AAA/zzzz', 'foo/bar']

puts(music_shuffle(songs))
