filename = 'Playlist.m3u'
Dir.chdir '/media/alan/DATI/Music'
songs = Dir['/media/alan/DATI/Music/*.mp3']
tracks = String.new
songs.each { |song| tracks += song + "\n"}
File.open filename, 'w' do |my_file|
  my_file.write tracks
end