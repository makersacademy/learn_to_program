def playlist_maker
  Dir.chdir('/Volumes/music')
  track_names = Dir['**/*.mp3']

  puts 'What would you like to call this playlist?'
  input = gets.chomp
  playlist_name = "#{input}.m3u"
  puts 'Would you like this playlist to be random?'
  random = gets.chomp.downcase
  if random == 'yes'|'y'
    track_names.shuffle
  end
  File.open(playlist_name, w) do |f|
    track_names.each{|mp3| f.write mp3+"\n"}
  end
end

puts 'Done!'
