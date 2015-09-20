require 'yaml'
require 'fileutils'

#move file method, allow for search dir, search file text, new directory, rename with batch name
#eg. Berlin1.jpg, Berlin2.jpg if rename set to true, new_name = Berlin, overwrite is at target dir 
#is defaulting to false
def move_files(search_name_text,new_dir,search_dir = Dir.pwd,rename = false, new_batch_name = 'new_batch_',overwrite = false)
	#need validation checks on search_dir, make sure chop off last /, and report if directory does not exist
	search_dir.slice!(-1) if search_dir[-1] == '/'
	return 'search directory invalid!' unless File.exists?(search_dir)
	num_of_files_moved  = 0
	names_array	= Dir["#{search_dir}/**/*#{search_name_text}*"]  #search for relevant file paths
	FileUtils::mkdir_p(new_dir) unless File.exists?(new_dir)  #make the target dir unless it exists already
	if rename == false
		names_array.each do |file_name| 
			if overwrite == true || (overwrite == false && File.exists?(new_dir+'/'+File.basename(file_name)) != true)
			File.rename(file_name,new_dir+'/'+File.basename(file_name)) 
			num_of_files_moved += 1
			print '. '
			end
		end
	else
		file_num = 1
		names_array.each do |file_name| 
			name = "#{new_batch_name}#{file_num}#{File.extname(file_name)}"
			if overwrite == true || (overwrite == false && File.exists?(new_dir+'/'+name) != true)
				File.rename(file_name,new_dir+'/'+ name) 
				num_of_files_moved += 1
				print '. '
			end
			file_num += 1
		end
	end
	print "moved #{num_of_files_moved} files."; puts ''; puts ''
	return nil
end

#puts "#{move_files('.mp3','/users/joekelly/desktop/new_location','/users/joekelly/desktop/test',true,'Berlin',false)}"

#The move file method interactively.
def move_files_interactive
	puts "Please enter the folder directory where you like to conduct the search.\n\n"
		search_dir = gets.chomp ; puts ""
	puts "Please enter the partial file name or extention you are searching for.\n\n"
		search_name_text = gets.chomp ; puts ""
	puts "Please enter the folder directory where you like to move these files to.\n\n"
		new_dir = gets.chomp; puts ""
	puts "Would you like to rename the files?  (Type 'y' or 'n')\n\n"
		rename = gets.chomp.downcase ; puts ""
	if rename == 'y'
		rename = true
		puts "please enter name prefix for the files."
		new_name = gets.chomp; puts ""
	else
		rename = false
		new_name = ""
	end
	puts "Would you like to overwrite files of the same name at the target directory?  (Type 'y' or 'n')\n\n"
		over_write = gets.chomp.downcase
	over_write = over_write == 'y' ? true : false 

	move_files(search_name_text,new_dir,search_dir,rename,new_name,over_write)
end

#Test, suggestion is to prepare two dir, source and target with suitable files for a test run.
#move_files_interactive

#Returns a decoded file content in normal form, with content in yaml form to begin with. File name in current dir.
def read_yaml file_name
	reverse_yaml = YAML::load File.read file_name
	for i in 0...reverse_yaml.length
		return reverse_yaml unless reverse_yaml[i].kind_of?(String)
	end
	return reverse_yaml.join("")
end

#Object is some text to be added to a file_name which may or may not exist
#If it exists, the object will be appended the file in yaml form as an additional array element
#If it did not exist, object will be written into the file in yaml with this new file name
def write_or_add_yaml object, file_name
	if File.file?(file_name)
		file_content = read_yaml(file_name) 
		if file_content.kind_of?(Array)
			file_content << object
		else
			file_content = []
			file_content << read_yaml(file_name) 
			file_content << object
		end
	else
		file_content = []
		file_content << object
	end
	File.open file_name, 'w' do |f| f.write file_content.to_yaml end
	return file_name
end

#Test to show the read / write in yaml is working.
=begin
object1 = "This is just a string"
write_or_add_yaml(object1, "test1.txt")
object2 = ["asd21","QFQE",[],123,4123]
write_or_add_yaml(object2, "test1.txt")
object3 = {"awefe"=>545,"awewe"=>545,"wewef"=>545}
write_or_add_yaml(object3, "test1.txt")
puts "#{read_yaml("test1.txt")}"
=end

def test_yaml_reader_writer()  #another test for read/write yaml
puts "\n\n" + "Test 1".center(70) + "\n\n"
object1 = "This is just a string"
object2 = [["Hello","World","Joe","2"],1,2,3,4,true,[false,1,true]]
object3 = {show: 3, happy: {user1: 1234}}
object4 = ["string number 4",[1,2,[3,4]],3]
puts "#{read_yaml(write_or_add_yaml(object1, "test1.txt"))}"
puts "#{read_yaml(write_or_add_yaml(object2, "test1.txt"))}"
puts "#{read_yaml(write_or_add_yaml(object3, "test1.txt"))}"
puts "#{read_yaml(write_or_add_yaml(object4, "test1.txt"))}"
puts "\n\n" + "Test 2".center(70) + "\n\n"
string1 = "Something that is a string. "
string2 = "Sentence. "
string3 = "What not. "
puts "#{read_yaml(write_or_add_yaml(string1, "test2.txt"))}"
puts "#{read_yaml(write_or_add_yaml(string2, "test2.txt"))}"
puts "#{read_yaml(write_or_add_yaml(string3, "test2.txt"))}"
end