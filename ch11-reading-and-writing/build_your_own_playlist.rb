Dir.chdir '../../Music/iTunes'

songs = Dir['**/*.mp3']

require '../../Projects/learn_to_program/ch10-nothing-new/shuffle.rb'

#shuffle the songs using the method I wrote in the previous exercises
songs = shuffle songs

#change from an array into a string - each file on a new line
song_list = songs.join "\n"

puts 'What would you like to call this playlist?'
playlist = gets.chomp

File.open (playlist + ".m3u"), 'w' do |f|
  f.write song_list
end