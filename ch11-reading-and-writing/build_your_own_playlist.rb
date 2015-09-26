def shuffle arr
  if arr == [] then
    []
  else
    index = rand(arr.length)
    out = arr[index]
    arr.delete_at(index)
    shuffle(arr) << out
  end
end

  Dir.chdir '/home/nitrous/music'

music_files = Dir['**/*.mp3']

playlist = shuffle(music_files)

File.open 'random_playlist.m3u', 'w' do |file|
  while !(playlist == [])
    file.write playlist.pop + "\n"
  end
end
