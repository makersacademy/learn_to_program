def music_shuffle filenames

music_array = filenames.split("/n")
puts  rand(10..100).times.map {music_array.shuffle}[-1]

end

