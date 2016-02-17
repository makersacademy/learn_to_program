

puts "What do you want your playlist to be called?"
filename= gets.chomp + ".m3u"


puts "Which folder contains the songs for your playlist?"
song_dir = '/Users/Office/Music' #gets.chomp

puts "Where do you want to safe the playlist?"
playlist_dir = '/Users/Office/Desktop' #gets.chomp

Dir.chdir(song_dir)

song_name = (Dir['**/*.{m4a,mp3}']).sort_by{rand}


Dir.chdir(playlist_dir)

File.open(filename,'w') do |f|
  song_name.each do |a|
  f.write(a + "\n")
  end
end



