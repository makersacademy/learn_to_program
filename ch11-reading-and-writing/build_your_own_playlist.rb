music = Dir["/users/elizabethwicks/**/*.mp3"]

puts "Name of playlist?"
title = gets.chomp

File.open (title + ".m3u"), 'w' do |f|
    f.write music.shuffle
end

puts "Done"

