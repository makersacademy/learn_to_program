# Change directory to the folder containing my music
Dir.chdir '/home/ubuntu/workspace/projects/music'

# Find the path of each song using Dir and put them on an array
song_files = Dir['**/*.mp3']

# Add the full path for each song
song_files.map!{ |file| Dir.pwd + '/' + file }

# Ask the user the name for the playlist
print "Please type the name for your playlist: "
playlist_name = gets.chomp

File.open(playlist_name + '.m3u', 'w') do |f|
    f.write song_files.join("\n")
end