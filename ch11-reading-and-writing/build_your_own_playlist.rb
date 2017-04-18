Dir.chdir '/Users/towilkins/Documents/Music'

require 'find'
mp3_file_paths = []
Find.find('/Users/towilkins/Documents/Music') do |path|
  mp3_file_paths << path if path =~ /.*\.mp3$/
end

puts "What shall we call this playlist?"
playlist_name = gets.chomp
begin
puts "how many songs would you like"
nbr_songs = Integer(gets) 
rescue  
	puts "Please give a number"
retry
end

tracks_for_playlist = mp3_file_paths.sample(nbr_songs)

File.open("Playlist - #{playlist_name}.m3u", "w") do |f| 

tracks_for_playlist.each do |track| f.write("#{track}\n") end 
end