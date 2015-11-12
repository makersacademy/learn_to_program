def music_shuffle filenames
  len = filenames.length
  shuffled = []

  10.times do
    cut = rand(len)  #cut deck at random

    left = filenames[0..cut]
    right = filenames [cut+1..len]

  # alternate cards from each deck
    while shuffled.length < len
      shuffled.push left.pop if left.length > 0
      shuffled.push right.pop if right.length > 0
    end

    filenames = shuffled
  end

return filenames

end



 songs = ['aa/bbb', 'aa/ccc', 'aa/ddd', 'AAA/xxxx', 'AAA/yyyy', 'AAA/zzzz', 'foo/bar']
 puts(music_shuffle(songs))
