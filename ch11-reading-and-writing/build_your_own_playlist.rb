music = shuffle(Dir["**/*.m4p"])

File.open "playlist.m3u", "w" do |f|
    music.each do |track|
        f.write track + "\n"
    end
end