def music_shuffle filenames

      randomised_list =  recursive_shuffle filenames, []
	mixed_list = recursive_mix randomised_list, []

puts mixed_list
puts mixed_list.length

end
	
def recursive_mix unmixed, mixed

return mixed if unmixed.length == 0
	still_unmixed = []

unmixed.each do |filename|
	split_filename = filename.split("/")
	artist_song = split_filename[-1].split("-")
	artist = artist_song[0]
	if mixed.length == 0 || !(mixed.last.include?artist)
		mixed.push(filename)
	else
	still_unmixed.push(filename)	
	end
end

recursive_mix still_unmixed, mixed
end




def recursive_shuffle unsorted, sorted

        return sorted if unsorted.length == 0

        still_unsorted = []
        rand_index = rand(unsorted.length)        
        curr_index = 0  
        
        unsorted.each do |item|      
                 if curr_index == rand_index    
                sorted.push(item)
                else still_unsorted.push(item)
                end
        
        curr_index += 1
        end
        
        recursive_shuffle still_unsorted, sorted
end

music_folder = Dir["/home/ubuntu/workspace/sample_files/*.mp3"]
tracks = music_shuffle(music_folder)

#tracks = music_shuffle(Dir["/home/ubuntu/workspace/sample_files/*.mp3"])

=begin 
filename = "playlist.m3u"

File.open filename, "w" do |f|
        tracks.each do |t| 
        f.write t + "\n"
        end
end
=end

