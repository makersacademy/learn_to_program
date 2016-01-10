def shuffle
  songs = (Dir'**/*.mp3).sort_by{rand}
  filename.File.open '~/Users/RachelSmith/Music/iTunes/Playlist.txt, 'w' do |song|
    song.write mp3+"/n"
  end
end
