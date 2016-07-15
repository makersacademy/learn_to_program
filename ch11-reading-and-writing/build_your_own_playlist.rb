def shuffle arr
  arr.sort_by{rand}
end

music = shuffle(Dir['**/*.mp3'])

File.open 'playlist.m3u', 'w' do |f|
  music.each do |song|
    f.write song + "\n"
  end
end
