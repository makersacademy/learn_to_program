def shuffle array
	array.shuffle
end

Dir.chdir "~/Desktop/music"
my_music = Dir["*.mp3"]
my_music.join("\n")
all_music = "shuffled_playlist.m3u"

shuffle all_music

File.open all_music "w" do |tracks|
	file.write my_music
end
