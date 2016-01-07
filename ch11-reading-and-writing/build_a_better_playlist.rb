def music_shuffle filenames
  splitnames = []
  filenames.each do |path|
    splitnames << path.split('/')
  end
  playlist = []
# put first random
  index = rand(splitnames.length)
  playlist[0] = splitnames[index].join('/')
  splitnames.delete_at index
  playlist_index = 1
  while splitnames.length > 1
    count = 0
    found = false
    while count < 5
      index = rand(splitnames.length)
      found = false
# when equal in the first part we try another rand
      if splitnames[index][0] != playlist[playlist_index - 1].split('/')[0]
        playlist[playlist_index] = splitnames[index].join('/')
        splitnames.delete_at index
        playlist_index += 1
        found = true
        break
      else
        count += 1
      end
    end
    if found == false
# still the same after 5 tries, we leave it that way
      playlist[playlist_index] = splitnames[index].join('/')
      splitnames.delete_at index
      playlist_index += 1
    end
  end
# add the last one
  playlist[playlist_index] = splitnames[0].join('/')
  playlist
end
