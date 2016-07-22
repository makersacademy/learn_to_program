require '/Users/mfperkins/Projects/learn_to_program/ch10-nothing-new/shuffle.rb'

# 1) Specify the directory where I want to store my playlist

Dir.chdir '/Users/mfperkins/Projects/learn_to_program/Playlist'

# 2) find all my music

trackz = shuffle(Dir['/Users/mfperkins/music/iTunes/iTunes Media/Music/**/*.mp3'])

filename = 'myPlaylist.m3u'

print "Creating playlist out of #{trackz.length} files ..."

File.open filename, 'w' do |x|
  trackz.each do |y|
  print '.' ## sweet a progress bar! :)
  x.write y+"\n"

  end
end

puts "Done!"
