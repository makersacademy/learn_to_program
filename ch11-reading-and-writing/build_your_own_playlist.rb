Dir.chdir "/users/alexlemons/Music/Alex_Music/"

songs = Dir["/users/alexlemons/Music/Alex_Music/*.wav"]

n = songs.length

playlist = []

while playlist.length < 21

  random = songs[rand(n)]
  playlist.push(random)
  songs.delete(random)

end

File.open("Alex_Playlist.m3u", "w") do |f|
  f.write playlist.to_s
end
