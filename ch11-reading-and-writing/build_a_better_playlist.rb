require 'yaml'
load '/Users/chukaebi//Makers_Academy/learn_to_program/ch10-nothing-new/shuffle.rb'

def music_shuffle filenames
# your code here
music = File.read filenames

music_array = YAML:: load music

shuffled_songs = shuffle music_array

music_strings = shuffled_songs.join("\n")

puts music_strings

File.open filenames, 'w' do |f| 
	f.write(music_strings)
 end

end

music_shuffle('playlist.m3u')