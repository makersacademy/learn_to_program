Dir.chdir'/Users/sorry/desktop/photos2'
pic_names  = Dir['/Users/sorry/desktop/photos/**/*.{jpg}']
existornot = Dir['/Users/sorry/desktop/photos2/**/*.{jpg}']

directory = existornot[0].split('/')

puts 'How would you like to name your photos?'
newname = gets.chomp

#depending of the number of photos to download from container it will print photo or photos 
if pic_names.length == 1
	photos = 'photo'
else
	photos = 'photos'
end
print "Downloading #{pic_names.length} #{photos}: "


pic_number = 1
pic_names.each do |x|
  print '.'
    if pic_number < 10
   		new_name = "#{newname}0#{pic_number}.jpg"
   	else
       	new_name = "#{newname}#{pic_number}.jpg"
   	end
   	#it will check if the file already exists, in case it does it will give you the overwrite or
   	#copy with a different name
	if File.exist?(new_name) == true
		print "The file #{new_name} already exists in #{directory[-2]}, Do you want to overwrite it? Please type 'Yes or Not'"
		puts
		b = gets.chomp

		if b.downcase == 'yes'
			if pic_number < 10
    			new_name = "#{newname}0#{pic_number}.jpg"
    		else
   				new_name = "#{newname}#{pic_number}.jpg"
    		end
    	else
    		print 'Do you want to write as a copy with a different name?'
    		puts
    		c = gets.chomp
    		
    		if c.downcase == 'yes'
    			print 'Enter a new name please'
    			puts
    			h = gets.chomp
    			
    			if pic_number < 10
    				new_name = "#{h}0#{pic_number}.jpg"
    			else
   					new_name = "#{h}#{pic_number}.jpg"
    			end
    		
    		else
    			print 'Do you want to write it as a copy?'
    			puts
    			m = gets.chomp
    			if m == 'yes'
    				if pic_number < 10
    					new_name = "#{newname}0#{pic_number}COPY.jpg"
    				else
   						new_name = "#{newname}#{pic_number}COPY.jpg"
   					end
    			end	
    		end
    	end
	end

File.rename x, new_name
pic_number = pic_number + 1
end

