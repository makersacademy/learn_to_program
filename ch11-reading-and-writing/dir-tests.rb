Dir.chdir (Dir.home + "/Pictures")
puts Dir.pwd 

batch_name = 'test'

if File.exists?(batch_name + '.png') #checks for filename
	puts "File exists!"
end

# using a wildcard here checks for a range of files. We need to use:

if !Dir.glob(batch_name + '*.*').empty? # this allows us to check for any files with the batch_name at the beginning
	puts "A batch with that filename already exists!"
end