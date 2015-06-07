track_names = Dir['Music/**/*.{mp3,wma}']

filename = 'my_playlist.m3u'

File.open filename, 'w' do |f|
  f.write track_names
end
