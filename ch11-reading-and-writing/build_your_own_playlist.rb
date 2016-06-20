# your code here
#use shuffle.rb
all_oggs = shuffle(Dir['**/*.ogg'])

File.open 'playlist.m3u', 'w' do |f|
  all_oggs.each do |ogg|
    f.write ogg+"\n"
  end
end

#-Dir array with ** and *.0gg ---- understand this


