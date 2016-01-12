music = Dir['**/*.mp3'].shuffle

File.open 'playlist.m3u', 'w' do |here|
  music.each do |song|
    here.write song+"\n"
  end
end
