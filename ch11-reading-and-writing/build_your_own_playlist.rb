def shuffle arr
  shuffled = []
  until arr.length == 0
      input = arr.sample
      shuffled.push input
      arr.delete(input)
    end
    shuffled
  end

songs = Dir['/Users/crispinandrews/Music/LTPSongs/*.m4a']
playlist = shuffle(songs)

File.open 'playlist.m3u', 'w' do |file|
  playlist.each do |song|
    file.write song
  end
end
