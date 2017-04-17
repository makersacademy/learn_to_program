Dir.chdir '/Users/Joe/Music/Artists'

puts 'Which artist\'s music would you like to create a playlist of?'
artist_to_playlist = gets.chomp.split.map(&:capitalize).join(' ')

Dir.chdir "/Users/Joe/Music/Artists/#{artist_to_playlist}"

songs_to_playlist = Dir["*.mp3"]

puts 'What would you like your playlist to be called?'
playlist_name = gets.chomp

File.open "#{playlist_name}.m3u", 'w' do |songs|
  songs_to_playlist.each do |mp3|
    songs.write mp3+"\n"
  end
end

puts 'Done!'
