def create_playlist
  music_dir = Dir["/Users/rebeccaappleyard1984/*.m4a"]

  puts "What would you like to call your playlist?"
  playlist_name = gets.chomp

  filename = "/Users/rebeccaappleyard1984/Desktop/Music/#{playlist_name}.m3u"

  File.open filename, 'w' do |f|
    music_dir.each do |track|
      f.write track
    end
  end
end

create_playlist()
