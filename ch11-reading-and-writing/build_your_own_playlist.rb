
Dir.chdir ("/Users/NOMNOMg0/Music/")
puts 'Potatolist located here', Dir.pwd

music_names = Dir['/Users/NOMNOMg0/Music/Music/**/*potato*.{mp3,MP3}']

f = File.new('potatolist.m3u', 'w+')

puts 'Re-inserting potato'
music_names.each do |x|
  f.write(x + "\n")
end

puts 'Shutting down'