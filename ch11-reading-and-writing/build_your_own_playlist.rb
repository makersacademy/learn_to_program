def shuffle arr
        recursive_shuffle arr, []
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

tracks = shuffle(Dir["/home/ubuntu/workspace/sample_files/*.mp3"])
filename = "playlist.m3u"

File.open filename, "w" do |f|
	tracks.each do |t| 
	f.write t + "\n"
	end
end
