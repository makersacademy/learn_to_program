song_arr = Dir[' ~/Music/*.mp3' ]

File.open 'kendrick_playlist.m3u' , 'w' do |f|
song_arr.each do |ogg|
f.write mp3+"\n"
end
end
puts "Songs added successfully!"
