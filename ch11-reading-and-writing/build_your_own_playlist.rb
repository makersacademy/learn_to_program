def shuffle arr
  rec_shuffle arr, []
end

def rec_shuffle unshuffled_array, shuffled_array

  if unshuffled_array.length <= 0
    return shuffled_array
  else
    r=Random.rand(0...unshuffled_array.length)
    shuffled_array << unshuffled_array[r]
    unshuffled_array.delete_at(r)
  end

  rec_shuffle unshuffled_array, shuffled_array
end

playlist_file = "playlist.m3u"
playlist = shuffle Dir['/Users/louisefranklin/Music/iTunes/iTunes\ Media/Music/**/*.m4a']

File.open playlist_file, 'w' do |f|
  f.write(playlist.join("\n"))
end
