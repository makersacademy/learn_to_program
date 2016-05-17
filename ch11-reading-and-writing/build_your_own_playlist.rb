def shuffle arr

arr.shuffle

end

songs = shuffle(Dir['**/*.mp3'])

File.open 'playlist.m3u', 'w' do |f|
 songs.each do |song|
    f.write song
  end
end

