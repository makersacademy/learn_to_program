Dir.chdir('/Users/mattia/Desktop/txt_files')
puts Dir.pwd

foto = Dir["/Users/mattia/Desktop/*.txt"]


puts "come vuoi chiamarla?"
nome_foto = gets.chomp


puts "downloading #{foto.length} files: "
counter = 1


	foto.each do |name|
		print "."

		new_name = if counter < 10
			"#{nome_foto}0#{counter}.txt"
				else
			"#{nome_foto}#{counter}.txt"
			end 

		if File.exists? new_name
			puts "already exist, type new name"
		
			exit
		else	
			File.rename name, new_name
		
			puts "File esistente"
			end
			counter += 1

 
	end