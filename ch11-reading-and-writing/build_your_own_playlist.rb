# Using the shuffle method created in chap 10
require_relative '../ch10-nothing-new/shuffle.rb'

Dir.chdir "./music/"

music = Dir['../music/*.{mp3}']
shuffled_music = shuffle(music)

filename = "playlist.m3u"

# Creating file
File.open filename, "w" do |f|
# Iterating through each tracks 
  shuffled_music.each do |track|
    f.puts track
  end


end
