# solution suggests mix = 2 * shuffle + 1 * cut

def music_shuffle(filenames)
  shuffled = filenames.sort.shuffle.shuffle
  shuffled[filenames.length / 2..-1] + shuffled[0...filenames.length/2]
end

songs = ['aa/bbb', 'aa/ccc', 'aa/ddd', 'AAA/xxxx', 'AAA/yyyy', 'AAA/zzzz', 'foo/bar']
puts music_shuffle(songs).inspect
