# Require previous shuffle.rb program
require '/Users/Billy/Projects/learn_to_program/ch10-nothing-new/shuffle.rb'

# This is where the playlist will be stored.
Dir.chdir '/Users/Billy/Projects/learn_to_program/ch10-nothing-new/Playlist'

# First we find our music files and shuffle them
music_files = Dir['/Users/Billy/Music/**/*.mp3']
selection = shuffle (music_files)

# Create playlist file
playlist = 'playlist.m3u'

# Open and write each song in selection to the file
File.open playlist, 'w' do |f|
  selection.each {|song| f.write (song + "\n")}
  end
end
