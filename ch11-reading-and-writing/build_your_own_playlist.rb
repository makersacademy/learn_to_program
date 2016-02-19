# This programme finds all the mp3 files in the computer
# and creates a shuffled playlist

# 1. moves to the Music directory
Dir.chdir "/Users/misaogura/Music"

# 2. looks for ALL the mp3 files in the directory and subdirectories
mp3_list = Dir["**/*.mp3"]

# 3. creates a shuffled list with a file name in each line
shuffled_list = mp3_list.sample(mp3_list.length).join("\n")

# 4. takes user input for the playlist name
puts "Enter the name of the playist you would like to create:"
filename = gets.chomp + ".m3u"

# 5. creates a playlist
File.open filename, 'w' do |file|
  file.write shuffled_list
end

puts "All done! You have created a playlist called #{filename} with #{mp3_list.length} songs in!"
