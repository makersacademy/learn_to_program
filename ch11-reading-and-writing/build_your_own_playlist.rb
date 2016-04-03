# your code here
ogg_files = shuffle(Dir['**/*.ogg'])
File.open 'playlist.m3u', 'w' do |f|
  ogg_files.each do |song|
    f.write song+"\n"
  end
end

#is this line necessary to pass the testing on rspec?
puts 'Done!'
