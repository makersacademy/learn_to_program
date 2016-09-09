# Music directory is /Users/Fbell/Music/iTunes/iTunes_Media/Music
# Playlist is in  /Users/Fbell/Music/iTunes/iTunes_Media/playlist.m3u

all_mp3s = shuffle(Dir['/**/*.mp3'])

File.open 'playlist.m3u' , 'w' do |x|
  all_mp3s.each do |mp3|
    x.write mp3+"\n"
  end
end

puts 'Done'
