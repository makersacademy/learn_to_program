# your code here

music = Dir['C:/**/*.mp3']
shuffled = music.sample(music.length)

puts "What do you want to call this playlist?"
playlist_name = gets.chomp
playlist_name += ".m3u"

print "Downloading #{music.length} songs"

File.open playlist_name, 'w' do |playlist|
  shuffled.each do |y|
    playlist.write(y)
  end
end




  
  