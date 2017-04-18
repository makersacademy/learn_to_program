def music_shuffle filenames

  return [] if filenames.length == 0
  pivot = filenames[rand(filenames.size)] # randomise the pivot
  filenames.delete(pivot)
  less, more = filenames.partition {|e| e <=> pivot }
  shuffled = music_shuffle(less) + [pivot] + music_shuffle(more)

  list = ''
  tracks = shuffled.each {|track| list << track + "\n"} # adds each track to list

  tracks
  
end

#songs = ['aa/bbb', 'aa/ccc', 'aa/ddd',
#         'AAA/xxxx', 'AAA/yyyy', 'AAA/zzzz', 'foo/bar']
#puts(music_shuffle(songs))
