def shuffle arr
    arr.shuffle
end

all_m4a = shuffle(Dir['/Users/tomharker/Projects/Playlist/*.m4a'])

File.open 'playlist.txt', 'w' do |x|
    all_m4a.each do |m4a|
        x.write("#{m4a}" + "\n")
    end
end