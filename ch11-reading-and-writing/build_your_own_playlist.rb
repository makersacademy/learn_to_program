# your code here
def sort(arr)  
  i =0
  while i < arr.length 
    j = i + 1
    while j < arr.length
      if arr[i] > arr[j]
        arr[i]  , arr[j] = arr[j], arr[i] 
      end
      j += 1 
    end
    i += 1
 end
 arr
end 

def sort(arr)
  pre_sort(arr, [])
end

def shuffle(arr)
  arr.sort() {rand}
end

# give you music a good shuffle
music_mix = shuffle(Dir['/Users/AppsDJ/Music/*.{MP3, mp3}'])

# now shove it into a new list
File.open 'stanton_lanier.m3u', 'w' do |f| 
  music_mix.each do |song|
    f.write song + "\n" 
  end
end
puts 'New playlist created successfuly!'
