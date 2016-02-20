def shuffle(array)
  array.size.times do |i|
      random = i + rand(array.size-i)
      array[i], array[random] = array[random], array[i]
  end
  array
end

Dir.chdir '/home/ubuntu/workspace/projects/photos'

all_mp3s = shuffle(Dir['**/*.mp3'])

File.open 'playlist.m3u', 'w' do |f|
  all_mp3s.each do |mp3|
    f.write mp3+"\n"
  end
end

puts 'Done!'