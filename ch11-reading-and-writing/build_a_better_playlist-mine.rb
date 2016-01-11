

def shuffle arr
  rec_shuffle arr, []
end

def rec_shuffle unshuffled_array, shuffled_array

  if unshuffled_array.length <= 0
    return shuffled_array
  else
    r=Random.rand(0...unshuffled_array.length)
    shuffled_array << unshuffled_array[r]
    unshuffled_array.delete_at(r)
  end

  rec_shuffle unshuffled_array, shuffled_array
end

def super_shuffle arr
  return arr if arr.length <= 1
  first_half = []
  second_half = []
  #half deck randomly
  rand_index=Random.rand(arr.length)
  shuffle(arr).each_with_index do |item, index|
    if index <= (rand_index-1)
      first_half << item
    else
      second_half << item
    end
  end

  #shuffle contents and recursively super_shuffle until none left
  super_shuffle(first_half) + super_shuffle(second_half)
end

def music_shuffle filenames
  playlist_file = "playlist2.m3u"
  playlist = super_shuffle filenames

  File.open playlist_file, 'w' do |f|
    f.write(playlist.join("\n"))
  end
end


music_shuffle Dir['/Users/louisefranklin/Music/iTunes/iTunes\ Media/Music/**/*.m4a']
