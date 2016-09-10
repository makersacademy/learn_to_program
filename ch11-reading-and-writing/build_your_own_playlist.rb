def shuffle array
  shuffled = []

  while array.length > 0

    random_index = rand(array.length)

    current_index = 0
    new_array = []

    array.each do |index|
      if current_index == random_index
        shuffled.push index
      else
        new_array.push index
      end
      current_index = current_index + 1
    end

    array = new_array
  end
  shuffled
end

music_files = shuffle(Dir["**/*.mp3"])

File.open "new_playlist.m3u", 'w' do |add|
  music_files.each do |mp3|
    add.write mp3 + "\n"
  end
end

puts "Complete."
