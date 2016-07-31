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

Dir.chdir 'C:\Users\tim3t\Music'
 
song_names = shuffle(Dir['*.mp3'])
filename = 'playlist.m3u'
 
File.open filename, 'w' do |f|
song_names.each do |song|
    f.write song+"\n"
 end
end