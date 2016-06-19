def shuffle arr
    arr.sort_by{rand}
end

music_files = shuffle(Dir['*.mp3'])

File.open 'playlist.m3u', 'w' do |f|
    music_files.each do |file|
        f.write file"\n"
    end
end

puts "Playlist created!"
        
        

