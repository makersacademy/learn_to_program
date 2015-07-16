

Music = (Dir['~PATH/*.ogg']).shuffle
Filename = 'playlist.m3u'
File.open filename, 'w' do |f|
  Music.each do |ogg|
    f.write ogg+"\n"
  end
end