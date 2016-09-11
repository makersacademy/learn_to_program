# CREATES A NEW FILE USING THE NAME PASSED IN AS AN ARGUMENT
def create_playlist(playlist_name)
	File.open playlist_name, 'w' do |f|
		# CALL THE 'TRACKS' METHOD TO GENERATE THE CONTENTS OF THE FILE
		f.write(tracks)
	end
end

# RETURNS THE LIST OF TRACKS
def tracks
	track_list = []
	# NAVIGATES TO THE DIRECTORY WITH THE MP3 FILES AND SAVES THEM TO AN ARRAY
	track_array = Dir['/Users/rosie/Music/Adele/*.mp3']
	# RAMDOMLY SHUFFLES THE CONTENTS OF THE ARRAY
	random_order_array = track_array.sort_by{rand}
	# COUNTS HOW MANY TRACKS NEED TO BE ITERATED THROUGH
	track_total = track_array.length
	# COUNTS HOW MANY TRACKS HAVE BEEN ITERATED THROUGH
	track_count = 0
	if track_count < track_total
		random_order_array.each do |name|
		# PUSHES EACH TRACK NAME INTO THE NEW 'TRACK LIST' ARRAY
		 track_list.push(name)
		end
	end
	# JOINS THE TRACK LIST ARRAY, INSERTING A RETURN AFTER EACH TRACK
	joined_tracks = track_list.join("\n")
	# RETURNS THE FINAL TRACK LIST
	return joined_tracks
end

name = 'RosiesPlaylistShuffled.m3u'

create_playlist(name)