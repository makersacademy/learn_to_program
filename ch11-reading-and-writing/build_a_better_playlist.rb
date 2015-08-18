def music_shuffle filenames

puts "What do you want to call this playlist"
name = gets.chomp

playlist = []
song_name = []
track_number = 0
number_of_tracks = filenames.length
half = number_of_tracks / 2
puts number_of_tracks.to_s
track = filenames[1..half].split'/'
puts track
end



songs = ['aaa/bbb','bbb/aaa','aa/bb','AAA/zzz','AAA/aaa']
puts(music_shuffle(songs))



