def shuffle (arr)
  if arr.length > 0
    arr.sort {|a, b| rand <=> rand}
  else 
    return arr
  end
end

music_files = shuffle(Dir['/Users/lucetzer/Music/Various_singles/*.{mp3,m4a}'])

File.open 'singles_playlist.m3u', 'w' do |f| 
  music_files.each do |song|
    f.write song + "\n"
  end
end
