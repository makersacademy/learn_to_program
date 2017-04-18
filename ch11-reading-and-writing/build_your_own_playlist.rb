require("./build_a_better_playlist.rb")

path = "C:/Users/O/Desktop/Music/"
mp3s = music_shuffle(Dir[path + "**/*.mp3"])
File.open(path + "playlist.m3u", 'w') { |f| f.write(mp3s.join("\n"))}


