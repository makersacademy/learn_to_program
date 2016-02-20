def shuffle(arr)
 arr.shuffle
end

Dir.chdir '/Users/yasmingreen/Music/itunes/itunes media/music'
all_mus = shuffle(Dir['**/*.{mp3,m4a}'])

File.open 'playlist.m3u', 'w' do |f|
  all_mus.each do |mus|
    f.write mus+"\n"
  end
end
puts "Done!"