music = shuffle(Dir["/Users/aga/Music/empeki/*m4a"])

File.open "playlist.m3u", "w" do |f|
  music.each do |song|
    f.write song + "\n"
  end
end
