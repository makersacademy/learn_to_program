def build_playlist
	Dir.chdir 'C:\Users\Chris\Desktop'
	songs = Dir['C:/**/*.{MP3,mp3}']

    File.open("Playlist.m3u", "w+"){|playlist| playlist.puts songs.shuffle}
end

build_playlist

