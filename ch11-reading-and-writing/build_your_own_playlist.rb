Dir.chdir "/Users/michael/music/prince/live_albums/2002-one-nite-alone"

#First find all the music files that need to be in the playlist and place in array
music_file_names = Dir["/Users/michael/music/prince/live_albums/2002-one-nite-alone/*.mp3"]

#Creating playlist
puts "What do you want to call your playlist?"
playlist_name = gets.chomp
puts
puts "Creating playlist:"

#don't let user save over existing file:
if File.exist?("#{playlist_name}.m3u")
  puts "\n"
  puts "ERROR - #{playlist_name}.m3u already exists."
  puts "EXITING PROGRAMME"
  exit
end

playlist_file = File.open("#{playlist_name}.m3u", 'a+')

#Iterate over each file in array, writing them into the file
music_file_names.each do |track|
  #print a dot for each new file
  print "."
  playlist_file.puts "#{track}"
end


#Close file
playlist_file.close

puts 
puts "Playlist created!"
