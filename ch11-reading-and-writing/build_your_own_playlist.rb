Dir.chdir("../../Music/Standalone Files/")

mp3s = Dir["*.mp3"]

File.open("playlist.m3u", "a") do |f|
  mp3s.shuffle.each do |x|
    f.write(x + "\n")
  end
end