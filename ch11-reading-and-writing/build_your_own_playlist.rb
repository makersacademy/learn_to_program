def shuffle arr
    arr.length > 1 ? [arr.slice!(rand(0..arr.length-1)) ] + shuffle(arr) : arr
end
# using the shuffle method as defined above
puts "Getting all the music in the given folder"
music = shuffle(Dir['**/*.mp3'])

File.open 'allsongs.m3u', 'w' do |f|
  music.each do |file_name|
    f.write file_name+"\n"
  end
end

puts 'Music Shuffled!'
