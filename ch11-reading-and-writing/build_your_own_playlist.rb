def shuffle arr
  recursive_shuffle(arr, [])
end

def recursive_shuffle(unshuffled, shuffled)
  if unshuffled.size <= 0
    return shuffled
  end
  index = rand(unshuffled.size)
  selected = unshuffled[index]
  unshuffled.delete_at(index)
  shuffled << selected
  recursive_shuffle(unshuffled, shuffled)
end

# Change to the the directory we want to save the playlist in
Dir.chdir '/Users/mattward/Desktop/music'

# Look through and select files with the correct file ending
song_names = Dir['**/*.mp3'].shuffle

# Save to the playlist.m3u file
playlist = 'my_playlist.m3u'

File.open playlist, 'w' do |f|
  song_names.each do |name|
    f.write name
  end
end
