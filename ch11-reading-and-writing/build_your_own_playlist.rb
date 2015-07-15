
# This is where she stores her pictures before
# she gets her YAML on and moves them to the server.
# Just for my own convenience, I'll go there now.
Dir.chdir '/home/ps/Music'
# First we find all of the pictures to be moved.
songs = Dir['**/*.mp3']
songs.shuffle

puts 'What would you like to call this playlist?'
playlist_name = gets.chomp

playlist_file = "#{playlist_name}.m3u"

File.open playlist_file, 'w' do |f|
  f.write songs
end

read_string = File.read playlist_file

puts 'Done, cutie!'
