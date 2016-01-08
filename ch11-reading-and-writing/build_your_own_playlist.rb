# Start by getting the program to find files in the music directory that match a user input. 
require 'find'

tunes_filepaths = []

Dir.chdir("/Users/Viola/Music/iTunes/iTunes Media/")

puts "Enter a keyword"
keyword = gets.chomp.capitalize

#Find.find("/Users/Viola/Music/iTunes/iTunes Media/") do |path|
#	tunes_filepaths << path if path =~ /**/**/*#{keyword}*.mp3
#end


def shuffle arr
	arr.sort_by{rand(arr.length)}
end

tunes_filepaths = Dir.glob("**/**/*#{keyword}*.mp3")

puts tunes_filepaths

tunes = shuffle(tunes_filepaths)


File.open 'keywordplaylist.m3u', 'w' do |f|
	tunes.each do |tune|
		f.write tune+"\n"
	end
end

puts "Playlist made using keyword '#{keyword}'"