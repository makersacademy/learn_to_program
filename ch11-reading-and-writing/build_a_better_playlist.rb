
#rand can return the same number twice


def music_shuffle filenames
    x = filenames.length
    extra_shuffled = []
    counter = 0
    while counter < 3
      while x != 0
        shufflepos = rand(x)
        item = arr[shufflepos] #selects item in array based on shufflepos
        shuffled_array.push item #pushes to new array
        x = x - 1 #arr needs to be reduced by one item
        arr[shufflepos] = arr[x] #giving new array item position at end of array allowing it to be popped off
        arr.pop #reduces arr by the item that has just been pushed to shuffled array
      end
  music_shuffle extra_shuffled
  counter+=1
  end
end

Dir.chdir "/Users/summerbrines/Music"

song_names = music_shuffle(Dir['/Users/summerbrines/Music/**/*.{mp3}'])

filename = 'playlist.m3u'


File.open filename, 'w' do |f|
  song_names.each do |song|
    f.write song+"\n" #must have new line otherwise songs can't be read
  end
end
