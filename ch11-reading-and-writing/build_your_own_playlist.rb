require 'yaml'
require 'fileutils'
#This function shuffles an array involving recursion
def shuffle(array,shuffled_array=[])
	if array.length != 0 
		selected = rand(array.length)
		shuffled_array.push(array[selected])
		array.delete(array[selected])
		shuffle(array,shuffled_array)
	else
		return shuffled_array
	end
end

#puts "About to test shuffle method"
#array1 = ["hello",1,3,"world",[]]
#puts "#{array1}"
#puts "#{shuffle(array1)}"

def change_file_ext(file_name,new_ext)
	file_name = "#{File.dirname(file_name)}/#{File.basename(file_name,'.*')}.#{new_ext}"
	return file_name
end


def play_list(search_ext,new_dir,search_dir = Dir.pwd,playlist_name = "new_play_list#{rand(9999)}.m3u",shuffle = true)
	search_dir.slice!(-1) if search_dir[-1] == '/'
	return 'search directory invalid!' unless File.exists?(search_dir)
	num_of_files_moved  = 0
	names_array	= Dir["#{search_dir}/**/*#{search_ext}*"]  #search for relevant file paths
	names_array = shuffle(names_array) if shuffle == true
	#FileUtils::mkdir_p(new_dir) unless File.exists?(new_dir)  #make the target dir unless it exists already  
	File.open playlist_name, 'w' do |f| 
		names_array.each{|x| f.write(x+"\n")} 
	end
	File.rename(Dir.pwd+'/'+playlist_name,new_dir+'/'+playlist_name)
	return nil
end
#test need to put some mp3s in temp folder, can also add a validation check to make sure the new playlist name ends in m3u.
#puts play_list('.mp3','/users/joekelly/desktop/test5','/users/joekelly/desktop/temp')
