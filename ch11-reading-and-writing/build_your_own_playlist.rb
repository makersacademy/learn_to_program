require 'yaml'
tracks = Dir['**/*.{MP3,mp3}']

tracks.sort_by!{rand}
tracks_string = tracks.to_yaml

filename = 'Playlist.m3u'

File.open filename, 'w' do |f|
  f.write tracks_string
end
