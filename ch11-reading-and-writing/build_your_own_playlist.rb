def create_playlist(playlist_file)
  music_files = Dir['Downloads/*.wav']
  playlist = playlist_file + '.m3u'
  File.open playlist, 'w' do |f|
    music_files.each do |file|
      f.write file+"\n"
    end
  end
end

def view_playlist(playlist)
  view_playlist = File.read(playlist)
end

create_playlist('my_playlist')
view_playlist('my_playlist.m3u')
