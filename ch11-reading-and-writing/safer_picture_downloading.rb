def picture_move
	picture_num = 1
	card_path = "/home/ubuntu/Desktop/pics/card/"
	picture_names = Dir["#{card_path}*.jpg"]
	Dir.chdir "/home/ubuntu/Desktop/pics/folder"

	puts "What would you like to call this batch?"
	batch_name = "batch" #gets.chomp

	print "#{picture_names.length} files in total \n\["
	
	picture_names.each do |picture|
		orig_pic = picture 
		mod_pic = if picture_num < 10
			"#{batch_name}0#{picture_num}.jpg"
		else
			"#{batch_name}#{picture_num}.jpg"
		end

		error_msg = "]\nERROR! \"#{mod_pic}\" exists"
		(File.exist? mod_pic) ?	(puts error_msg; exit) : (File.rename orig_pic, mod_pic)
#Alternative method of checking if the file exists --
		#Dir[mod_pic].empty? ?	(File.rename orig_pic, mod_pic) : (puts error_msg; exit)
		print "."
		picture_num += 1
	end

	puts "\]\nCompleted [#{picture_num - 1}/#{picture_names.length}]"
end

picture_move 