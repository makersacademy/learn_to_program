Dir.chdir '/Users/Gabrielle/Music/iTunes/iTunes Media/Test'

playlist = Dir['**/*.mp3']

playlist_name = 'playlist.m3u'
    File.open playlist_name, 'w' do |p|
      p.write playlist.shuffle
    end