def shuffle arr
  arr.sort_by{rand}
end

Dir.chdir "~../../music"
musics = Dir["*.mp3"]
musics.join("\n")
music_file = "playlist.m3u"
shuffle music_file

File.open music_file, "w" do |file|
    file.write musics
end
