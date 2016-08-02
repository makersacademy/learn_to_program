def build_a_better_playlist

Dir.chdir 'D:/Pottomke/Music_repo'

filename = "MyPlaylist.m3u"

playlist = File.readlines filename 
shuffeled_playlist = music_shuffle playlist

File.open filename, 'w' do |f|
	shuffeled_playlist.each do
		|song| f.write song
	end
end

end

def music_shuffle filenames
	for i in 0...filenames.size-1
		current_filename_array = filenames[i].split('/')
		# #get the element before the last element (folder name)
		music_folder = current_filename_array[current_filename_array.size - 2]
		next_filename_array = filenames[i+1].split('/')
		# #get the element before the last element (folder name)
		next_music_folder = current_filename_array[current_filename_array.size - 2]
		if(music_folder == next_music_folder)
			for j in 0...filenames.size
				temp_filename_array = filenames[j].split('/')
				# #get the element before the last element (folder name)
				temp_music_folder = temp_filename_array[temp_filename_array.size - 2]
				if(music_folder != temp_music_folder)
					temp = filenames[i]
					filenames[i] = filenames[j]
					filenames[j] = temp
				end
			end
		end
	 end	
	return filenames
end

build_a_better_playlist