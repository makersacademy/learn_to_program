def shuffle arr
  # your code here
  shuff = []
  
  while !arr.empty?
    rand_index = rand(arr.length)
    #curr_index = 0
    new_arr = []
    arr.length.times do |i|
      if i == rand_index
        shuff << arr[rand_index]
      else
        new_arr << arr[i]
      end
    end
    arr = new_arr
  end
  shuff
end

def build_your_own_playlist 
tracks = shuffle(Dir['**/*.{ogg,mp3,m4a,wma}'])
File.open 'playlist.m3u', 'w' do |f|
  tracks.each do |track|
    f.write track+"\n"
  end
end
end