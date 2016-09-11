def shuffle(sorted_array)
  recursive_shuffle(sorted_array, [])
end

def recursive_shuffle(sorted_array, unsorted_array)
  position = rand(0...sorted_array.length)
  if sorted_array.size > 0 # Exit condition to break the recursiveness
    unsorted_array.push(sorted_array[position])
    sorted_array.delete_at(position)
    recursive_shuffle(sorted_array, unsorted_array)
  else
    unsorted_array
  end
end

puts 'Please enter the full path to your music:'
music_dir = gets.chomp

tracks = Dir[music_dir + '/*.mp3']
shuffled_tracks = shuffle(tracks)

=begin
File.open('playlist_car.m3u', 'w') do |f|
  shuffled_tracks.each do |track|
    f.write(track + "\n")
  end
end
=end

File.open('playlist_car.m3u', 'w') do |f|
  f.write(shuffled_tracks.join("\n"))
end
