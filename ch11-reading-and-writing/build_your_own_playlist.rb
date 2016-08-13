# Make a playlist file (with a .m3u extension) of shuffled songs
# from 'music' folder (including subfolders).

# make big array with all music names in 'music' variable
music = Dir['music/**/*.mp3'].shuffle

# Create a file called 'playlist.m3u' and make it writeable
File.open("playlist.m3u","w") do |playlist|
    # Iterate through each music title
    music.each do |song|
        # Write each song title into playlist file
        playlist.write("#{song}\n")
    end
end

puts "playlist.m3u file has been created."