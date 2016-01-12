# program should search for various music files to build playlist
# use the shuffle method created to mix up
# filename must end .m3u

#search for music and assign to variable
playlist = Dir['/users/michaelcollins/music/**/*.mp3']
filename = 'RubyPlaylist.m3u'
shuffled = []

while playlist.length >= 1
    shuffled <<  playlist.delete_at(rand(playlist.length))
end


File.open filename, 'w' do |file|
  shuffled.each do |song|
    file.write "#{song}\n"
  end
end
