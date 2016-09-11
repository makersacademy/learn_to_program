# your code here
songs = shuffle(Dir["**/*.mp3"])
File.open 'playlist.m3u', 'w' do |f|
    songs.each do |mp3|
        f.write mp3 + "/n"
    end
end