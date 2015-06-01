music = Dir['/users/khalidkarim/music/itunes/itunes\ media/music/*.{mp3,m4a}']

music = music.shuffle

File.open 'playlist.m3u', 'w' do |f|
  music.each do |song|
    f.write song+"\n"
  end
end
