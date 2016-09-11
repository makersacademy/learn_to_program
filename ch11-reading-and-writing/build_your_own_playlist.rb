def shuffle array
  shuffled = []
#open an empy array
  while array.length > 0
    random_index = rand(array.length)
#randomise the array using length as the point of randomisation
    current_index = 0
    new_array = []
#creates an open array and sets the initial index position
    array.each do |index|
      if current_index == random_index
        shuffled.push index
        #ensures the index is moving
      else
        new_array.push index
        #pushes values to the new array
      end
      current_index = current_index + 1
      #increases the current index position
    end

    array = new_array
  end
  shuffled
  #runs the shufled method
end

music_files = shuffle(Dir["**/*.mp3"])
#gains files from the specified directory and shuffles the files using the above method
File.open "new_playlist.m3u", 'w' do |add|
  music_files.each do |mp3|
    add.write mp3 + "\n"
    #add the mp3 file to the playlist and a new line
  end
end

puts "Complete."
