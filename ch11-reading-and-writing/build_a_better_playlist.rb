def shuffle arr
  x = arr.length
  new_arr = []
  while x != 0
    randpos = rand(x)
    x = x-1
    item = arr[randpos]
    new_arr.push item
    arr[randpos] = arr[x]
    arr.pop
  end

  new_arr
end

def music_shuffle filenames

Dir.chdir 'C:\Users\tim3t\Music'
original_pl = shuffle(Dir['*.mp3'])
reshuffle = shuffle(shuffle(original_pl))

  File.open filenames, 'w' do |f|
    reshuffle.each { |s| f.puts s}
  end
end
music_shuffle('playlist.m3u')