Dir.chdir '/Users/Mat/Music'

music_files = Dir['Albums/**/*.mp3']

play = music_files.sample(5)

filename = 'Playlist.m3u'

File.open filename, 'w' do |f|
  play.each do |names|
    f.write "#{names}\n"
  end
end



#File.open filename, 'w' do |f|
#  play.each do |names|
#    f.write names
#  end
#end

#filename = 'Playlist.xml'
