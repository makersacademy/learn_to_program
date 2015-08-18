# your code hereD



music_name = shuffle(Dir['/Users/philipclarke/Desktop/testmusic/*.mp3'])
puts "What do you want to call this playlist"
name = gets.chomp
File.open "#{name}.m3u", 'w' do |track| 
music_name.each do |tracks|
track.write tracks+"\n"
end
end




