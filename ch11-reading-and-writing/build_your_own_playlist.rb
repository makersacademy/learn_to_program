def shuffle arr
  arr.shuffle
end

 #finds wavs mp3s and flac files and stores them in the song_list variable
song_list = shuffle(Dir['**/*.{wav,WAV,mp3,MP3,FLAC,flac}'])

FIle.open 'playlist.m3u', 'w'  do |f|
  song_list.each do |song| #loop through every song in the list
    f.write song+"\n" #write each song from the list in a new line in the playlist file
  end
end
puts 'Playlist compiled'
