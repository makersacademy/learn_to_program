require '/users/michael/dropbox/makers/pre_week2/learn_to_program/ch10-nothing-new/shuffle.rb'

Dir.chdir "/Users/michael/"

#First find all the music files that need to be in the playlist and place in array
music_file_names = shuffle(Dir["**/*.mp3"])

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
