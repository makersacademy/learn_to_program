music = Dir['C:/Users/James/Music/Makers/*.mp3']

playlist.m3u = []

playlist.m3u << music.shuffle

puts playlist.m3u