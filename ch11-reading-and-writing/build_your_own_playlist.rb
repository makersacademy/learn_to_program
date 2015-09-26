require 'yaml'
load '/Users/chukaebi//Makers_Academy/learn_to_program/ch10-nothing-new/shuffle.rb'
# your code here
Dir.chdir("/Users/chukaebi/Downloads/")
music = Dir['**/*.{mp3,MP3,m4a,M4A}']
music_shuffled = shuffle music

filename = "playlist.m3u"

File.open filename, 'w' do |f| 
	f.write(music_shuffled.to_yaml)
end


read_songs = File.read filename

puts read_songs