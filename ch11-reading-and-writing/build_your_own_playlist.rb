def shuffle arr
  recursive_shuffle arr, []
end

def recursive_shuffle original_array, shuffled_array

  if original_array.length <= 0
    return shuffled_array
  end

  random_element = original_array.pop
  shuffled_array.insert(rand(shuffled_array.length+1), random_element)
  recursive_shuffle original_array, shuffled_array
end

audio_files = Dir["../**/*.{MP3,mp3}"]

if audio_files.length == 0
  puts "I'm sorry, I couldn't find any audio files in your collection."
else
  puts "I found #{audio_files.length} audio files in your collection."
  puts "What do you want to call your playlist?"
  playlist_name = gets.chomp
  playlist_name += ".m3u"

  shuffled_files = []
  shuffled_files = shuffle audio_files

  playlist = ""

  shuffled_files.each do |filename|
    playlist += filename + "\n"
  end

  File.open playlist_name, 'w' do |f|
    f.write playlist
    puts "I just wrote you a file called #{playlist_name}. Enjoy!"
  end
end
