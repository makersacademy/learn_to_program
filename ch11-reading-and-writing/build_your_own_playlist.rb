# using the shuffle method as defined above
all_oggs = (Dir['/Users/jamesbaker/Music/Qobuz/10_000_Maniacs-Our_Time_In_Eden/*.flac']).shuffle
puts all_oggs
File.open 'playlist.m3u', 'w' do |f|
all_oggs.each do |ogg|
f.write ogg+"\n"
end
end
puts 'Done!'
