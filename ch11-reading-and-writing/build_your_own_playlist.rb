playlist = Dir["/Users/Theo/Music/*You.mp3"]
playlist.sort_by!{rand}

File.open "You playlist.m3u", "w" do |f|
  playlist.each do |track|
    f.write track + "\n"
  end
end
