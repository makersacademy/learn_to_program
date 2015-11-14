def music_shuffle filenames

	filenames.each {|x|  split_filenames << x.split("/") }
  
	playlist = split_filenames.flatten.shuffle
	filename = "playlist.txt"
	File.open filename 'w' do |f|
		f.puts playlist
	end
end
