
Dir.chdir '/Users/seanhawkridge/Desktop/playlists'
playlist_file = File.new "playlist.mpu","w"
song_names = Dir["/Users/seanhawkridge/Music/iTunes/iTunes\ Media/Music/**/*.mp3"][0..20]

random = song_names.sort_by{rand}

random.each do |song|
  song_title = song.split('/')[-3..-1].join('/')
  playlist_file << "#{song}\n"
end
