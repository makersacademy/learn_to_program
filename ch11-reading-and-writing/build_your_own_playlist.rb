#!/usr/bin/env ruby

def shuffle arr
  return recursive_shuffle(arr, [])
end



def recursive_shuffle array, temp_array
	
	if array.empty?
		return temp_array
	end
	random=rand(0..(array.length-1))
	temp_array.push(array[random])
	array.delete_at(random)	
	recursive_shuffle(array, temp_array)
end



music_dir="/home/db/Music/"
extension=".mp3"
mu_names = Dir[music_dir+"*"+extension]
mu_names=shuffle(mu_names)
puts 'What would you like to call this playlist?'
play_name = gets.chomp+".m3u"

File.open play_name, 'w' do |f|
f.write mu_names*"\n"
end




