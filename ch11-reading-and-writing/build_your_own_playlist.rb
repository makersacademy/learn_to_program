all_songs = shuffle(Dir['**/*.mp3']

File.open 'playlist.m3u', 'w' do |f|
  all_songs.each do |song|
    f.write song+"\n"
  end
end

puts 'Done!'
