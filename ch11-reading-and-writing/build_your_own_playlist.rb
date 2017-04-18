def shuffle(array)
  array.shuffle
end

all_oggs = shuffle(Dir['/Users/sdawes/documents/projects/playlist/*.ogg'])

File.open 'playlist.txt', 'w' do |f|
  all_oggs.each do |ogg|
    f.write('ogg' + "\n")
  end
end
