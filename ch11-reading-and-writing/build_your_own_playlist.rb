#!/usr/bin/env ruby
require "../ch10-nothing-new/shuffle.rb"

music_dir = "#{ENV["HOME"]}/Music/iTunes/iTunes\ Media/Music/"
save_dir = "#{ENV["HOME"]}/Desktop/"

puts "What would you like to call this playlist?"
playlist_name = gets.chomp+".m3u"

puts "Enter an artist"
artist = gets.chomp
search_string =  "*#{artist}*/*/*.m4a"

Dir.chdir (music_dir)

songs = Dir[search_string]

shuffled_songs = shuffle (songs)

Dir.chdir(save_dir)

File.open playlist_name, 'w' do |f|
  shuffled_songs.each { |song| f.write music_dir+song+"\n" }
end

puts "Playlist '#{playlist_name} saved to desktop!"