Dir.chdir("/home/ants/Pictures") do
	pictures =  Dir["*.jpg"]
	puts "what would you like to rename this batch?"
	batch_name = gets.chomp
	pictures.each_with_index do |picture,index|
		new_name = "#{batch_name}#{index}.jpg"
		if File.exist? new_name
			puts "ERROR: There is already a file called #{new_name}"
		else
			File.rename picture, new_name
		end
	end
end
