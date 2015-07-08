def music_shuffle array, new = []
  size = array.length/4
  array = array.sort.each_slice(size).to_a
  block = rand(0..3)

  while array.length > 0
    selected = array[block]
    pick = rand(0..(selected.length-1))
    new << selected[pick]
    selected.delete(new.last)
    array.delete([])
    block = (block + rand(1..[array.length-1, 1].max))%[array.length, 1].max
  end
  new
end

all_mp3 = music_shuffle(Dir['/Users/Adrian/**/*.mp3'])

File.open 'shuffled_playlist.m3u', 'w' do |f|
  all_mp3.each do |x|
    f.write x + "\n"
  end
end

puts 'Done!'


