songs = Dir["/Users/joestephens/Music/iTunes/iTunes Media/Music/**/*.m4a"].shuffle

File.open("playlist.m3u", "w") do |file|
  songs.each do |song|
    file.write("#{song}\n")
  end
end
