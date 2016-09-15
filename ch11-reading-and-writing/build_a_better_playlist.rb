def music_shuffle filenames
  return filenames.shuffle!
end

# search for music files in current directory
songs = Dir['*.mp3']

#create the playlist 
filename = 'playlist.m3u'

songs = music_shuffle songs

songs_string = ''
songs.each do |song|
    songs_string << song << "\n"
end

File.open filename, 'w' do |f|
    f.write songs_string
end