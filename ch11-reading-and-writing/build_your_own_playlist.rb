

Dir.chdir 'where you want to store playlist e.g. /Users/ewansheldon/music/playlists/new_playlist'

playlist_music = shuffle(Dir['where all your music for playlist is e.g. /Users/ewansheldon/music/playlist'])

playlist = 'myplaylist.m3u'

print "Creating a playlist with #{playlist_music.length} tracks:    "

song_number = 1

File.open playlist, 'w' do |playlist|
  playlist_music.each do |song|
    print '.'
    playlist.write song + "\n"
  end
end

song_number += 1

puts "Playlist complete!"
