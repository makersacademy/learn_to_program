puts "Name your playlist"
playlist_name = gets.chomp
playlist_songs = Dir['**/*.mp3']

puts "Building a playlist of #{playlist_songs.length} songs..."

playlist_songs.sort_by!{rand}

filename = playlist_name + ".m3u"

  File.open filename, 'w' do |f|
    playlist_songs.each do |song|
      f.write song + "\n"
    end
  end
puts "Done!"
