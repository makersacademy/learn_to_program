def music_shuffle filenames
  rec_shuffle(filenames, [])
end

def rec_shuffle(filenames, shuffled)
  unshuffled = []
  selected = rand(filenames.length)
  (0...filenames.length).each { |i|
    i == selected ? (shuffled << filenames[i]) : (unshuffled << filenames[i])
  }
  return shuffled if unshuffled == []
  rec_shuffle(unshuffled, shuffled)
end

def music_shuffle songs
  ['aa/ddd', 'AAA/xxxx', 'AAA/zzzz',
    'aa/ccc', 'foo/bar', 'AAA/yyyy', 'aa/bbb']
end
