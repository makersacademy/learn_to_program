#Dir.chdir '/Users/laurawilson/newpics' #file where playlist will be stored
def shuffle arr
  return arr if arr.length <= 1
  x = arr.sample
  arr.delete(x)
  [x] + shuffle(arr)
end

songlist = shuffle(Dir['/Users/laurawilson/Music/**/*.{mp3,MP3,m4a,M4A,wma,WMA}'])

playlist = "Playlist.m3u"
numberofsongs = 10

songs = songlist.sample(numberofsongs)

File.open playlist, 'w' do |f|
  songs.each do |song|
    f.puts(song)
  end
end
