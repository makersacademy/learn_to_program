Dir.chdir '/Users/zeshanrasul/Documents/Music/'

playlist_files = Dir['/Users/zeshanrasul/Documents/Music/**/*.mp3']
playlist_files.shuffle!

filename = 'playlist.m3u'

File.open filename, 'w' do |f|
  playlist_files.each do |file|
      f.write file + "\n"
    end
end
