#This needs revisiting........

def shuffle input
input.sort_by{rand}
end

all_oggs = shuffle(Dir['**/*.ogg'])

File.open 'playlist.m3u', 'w' do |f|

all_oggs.each do |ogg|

f.write ogg+"\n"

end

end

puts 'Done!'