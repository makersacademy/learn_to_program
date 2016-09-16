# Search for music files
# Build you a playlist, shuffling the items
# Save it as an m3u file

def shuffle arr
  recursive_shuffle arr, []
end

def recursive_shuffle original_array, shuffled_array

  if original_array.length <= 0
    return shuffled_array
  end

  # Remove the last item from the original array
  random_element = original_array.pop

  # Insert it in a random place in the shuffled array
  shuffled_array.insert(rand(shuffled_array.length+1), random_element)

  # Call the method again until all the elements have been shuffled
  recursive_shuffle original_array, shuffled_array
end

audio_files = Dir["../**/*.{MP3,mp3}"] # Search in the parent directory and all its subdirectories

shuffled_files = []
shuffled_files = shuffle audio_files

playlist = ""

shuffled_files.each do |filename|
  playlist += filename + "\n"
end

puts playlist
