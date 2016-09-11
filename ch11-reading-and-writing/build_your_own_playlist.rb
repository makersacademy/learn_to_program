def shuffle arr

    shuffled_array = []
    
    while arr.length > 0
    index = 0
    not_shuffled = []
    random_index = rand(arr.length)
    
      arr.each do |tested_object|
        if index == random_index
          shuffled_array.push tested_object
        else 
          not_shuffled.push tested_object
        end
        index += 1
      end
      arr = not_shuffled
    end
    shuffled_array
end

music = shuffle(Dir['**/*.mp3']) #pass all the .mp3 found in the directory and store the returned array in 'music'

File.open 'playlist.m3u', 'w' do |f| #create and open playlist.m3u and give writing permission
    music.each do |mp3| #iterate through the music array
        f.write mp3+"\n" #and add the values to the playlist file (f) and add a new line chacachter
    end
end
