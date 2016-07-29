# Using the shuffle method created in chap 10
require_relative '../ch10-nothing-new/shuffle.rb'


Dir.chdir "./music"
music = Dir['../music/**/*.{mp3}']
puts music

shuffled_music = shuffle(music)
super_shuffle = shuffle(shuffled_music)

filename = "playlist.m3u"

# Creating file
File.open filename, "w" do |f|
  # writing down tracks one by one
  super_shuffle.each do |track|
    f.puts track
  end
end

read_string = File.read filename
puts
puts read_string
