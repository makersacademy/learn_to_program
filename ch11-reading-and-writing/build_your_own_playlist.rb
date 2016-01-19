my_playlist = Dir['**/*.mp3'].shuffle
File.open "Playlist.m3u".shuffle, "w" do |bam|
  music.each do |song|
    bam.write song+"\n"
  end
end