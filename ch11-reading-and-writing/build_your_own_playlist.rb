def shuffle arr
  arr_shuffled = Array.new
  while arr.length > 0
    rand_position = rand(arr.length) #initialize
    arr_shuffled.push(arr[rand_position])
    arr.delete_at(rand_position)
  end
  arr_shuffled #return the new shuffled array
end

Dir.chdir '/Users/amaal/Documents/Ruby/scrap'
#Search for files
music_files = shuffle(Dir[ x.pwd + '**/*.mp3']) #shuffle(Dir['**/*.mp3'])
#start creating playlist
File.open 'ch11_playlist.m3u', 'w' do |pl_entry|
  music_files.each do |track|
    #add each track to playlist file
    pl_entry.write track + "\n"
  end
end
