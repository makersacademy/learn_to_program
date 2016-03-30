# your code here
def shuffle arr
  shuffled = []
  while arr.length > 0
    shuffled << arr.delete_at(arr.index(arr[rand(arr.length)]))
  end
  shuffled
end

Dir.chdir('/home/letianw/Music')

playlist = shuffle(Dir['**/*.mp3'])

File.open "playlist.m3u", 'w' do |f|
  f.puts(playlist)
end
