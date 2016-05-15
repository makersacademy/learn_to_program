def music_shuffle filenames
	result = []
	files_in_folders = Hash.new{|h,k| h[k] = []}
	filenames.each{ |e| 
		files_in_folders[e.split("/")[-2] || :nofolder] << e
	}
	files_in_folders = files_in_folders.values
	while(files_in_folders.length > 0) 
		files_in_folders.shuffle!.delete_if{ |e| 
			result << e.shuffle!.pop
			e.empty?
		}
	end
	result
end