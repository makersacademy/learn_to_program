#!/usr/bin/env ruby
require "../ch10-nothing-new/shuffle.rb"
require "../ch11-reading-and-writing/build_a_better_playlist.rb"

music_dir = "#{ENV["HOME"]}/Music/iTunes/iTunes\ Media/Music/"
save_dir = "#{ENV["HOME"]}/Desktop/"
songs = []

Dir.chdir (music_dir)

while true
  puts "Enter an artist, enter blank when done"
  artist = gets.chomp

  break if artist.empty?

  if artist.length < 3
    puts "Artist name must be at least 3 characters long"
  else
    search_string =  "*#{artist}*/*/*.m4a"
    songs << Dir[search_string]
  end
end

songs.flatten!
shuffled_songs = shuffle songs
shuffled_songs = music_shuffle shuffled_songs

puts "What would you like to call this playlist?"
playlist_name = gets.chomp+".m3u"

Dir.chdir(save_dir)

File.open playlist_name, 'w' do |f|
  shuffled_songs.each { |song| f.write music_dir+song+"\n" }
end

puts "Playlist '#{playlist_name} saved to desktop!"