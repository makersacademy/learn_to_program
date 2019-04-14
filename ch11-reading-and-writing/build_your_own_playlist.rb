tracks = Dir['Users/kath/Desktop/Music/**/*.mp3']

def shuffle tracks
  tracks.sort_by{rand}
end

tracks = shuffle(Dir['**/*.mp3'])

File.open 'playlist1.m3u', 'w' do |f|
  tracks.each do |mp3|
    f.write mp3+"\n"
  end
end
puts 'All done!'
