#NOTE My completely valid solution that doesn't pass Mr Pine's damned tests!
def music_shuffle filenames

  filenames = filenames.sort
  total = filenames.length
  2.times do
    left = 0
    right = filenames.length/2
    shuff_playlist = []

    while shuff_playlist.length < total
      if shuff_playlist.length%2 == 0
        shuff_playlist << filenames[right]
        right += 1
      else
        shuff_playlist << filenames[left]
        left += 1
      end
    end
    filenames = shuff_playlist
  end

  split = rand(filenames.length)
  first = filenames.drop(split)
  second = filenames.first(split)
  first.concat second

end
