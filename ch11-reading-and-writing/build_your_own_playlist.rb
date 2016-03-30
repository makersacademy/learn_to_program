#This needs revisiting........

def shuffle input
input.sort_by{rand}
end

all_mp4 = shuffle(Dir['**/*.mp4'])

File.open 'test_playlist.mp4files', 'w' do |f|

all_mp4.each do |mp4|

f.write mp4+"\n"

end

end

puts 'Done!'