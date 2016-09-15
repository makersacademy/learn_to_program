tracks = Dir['C:/Users/Tom/Test/**/*.mp3']
Dir.chdir 'C:/Users/Tom/Test/'
tracklist = 'playlist.m3u'

def shuffle arr, shuffled=[]
  r = rand(arr.length)
  shuffled << arr[r]
  arr.delete_at(r)
  if arr.length > 0
    shuffle arr, shuffled
  end
  shuffled
end

shuffled = shuffle(tracks)

File.open tracklist, 'w' do |f|
    shuffled.each do |t|
        f.write(t + "\n")
    end
end