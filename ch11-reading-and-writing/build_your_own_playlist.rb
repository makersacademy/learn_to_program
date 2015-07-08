def shuffle array, new = []
  while array.length > 0
    rand = rand(0..(array.length-1))
    new << array[rand]
    array.delete(new.last)
  end
  new
end

all_mp3 = shuffle(Dir['/Users/Adrian/**/*.mp3'])

File.open 'shuffled_playlist.m3u', 'w' do |f|
  all_mp3.each do |x|
    f.write x + "\n"
  end
end

puts 'Done!'
