#!/usr/bin/env ruby
require "../ch10-nothing-new/shuffle.rb"

music_dir = "/Users/michaelharrison/Music/iTunes/iTunes\ Media/Music/"
save_dir = "/Users/michaelharrison/Desktop/"
playlist_name = "It's The Bea.m3u"
search_string =  "The\ Bea*/*/*.m4a"

Dir.chdir (music_dir)

songs = Dir[search_string]

shuffled_songs = shuffle (songs)

Dir.chdir(save_dir)

File.open playlist_name, 'w' do |f|
  shuffled_songs.each { |song| f.write music_dir+song+"\n" }
end

puts "Playlist '#{playlist_name} saved to desktop!"