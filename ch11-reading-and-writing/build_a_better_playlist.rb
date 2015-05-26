# /usr/bin/env ruby

# This works less well than .shuffle! when all the songs are in a single directory

def music_shuffle filenames
	# Slice the array into three sets i.e. [[],[],[]]
	three_sets = filenames.each_slice(3).to_a
	# Let's shuffle the outer array
	three_sets.shuffle!
	# Now let's suffle the inner arrays
	three_sets.each {|set| set.shuffle!}
	# Now let's get back to having just one array of file names
	three_sets.flatten!
end

Dir.chdir "/Users/nhughes/Music/iTunes/iTunes Media/Music/Unknown Artist/Unknown Album"

puts "What would you like to call this playlist"
playlist_name = gets.chomp

all_sounds = music_shuffle(Dir["*.mp3"])

File.open(playlist_name + ".m3u", "w+") do |f|
	all_sounds.each do |sound|
		f.write("music/sound-effects/Miscellaneous/#{sound}\n")
	end
end

