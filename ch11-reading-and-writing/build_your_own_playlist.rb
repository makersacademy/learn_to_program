Dir.chdir '../../../Music' #Change to my music folder
music_names = Dir['**/*.{mp3,ogg,flac,m4a}'] #Search for all my music files within subdirectories.
music_names = music_names.join("\n")
file_name = "music_playlist.m3u"

File.open file_name, 'w' do |f|
  f.write music_names
end
