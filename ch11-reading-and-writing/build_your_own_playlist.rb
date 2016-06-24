# your code here
all_mp3s = shuffle(Dir['/home/frunez/music/**/*.mp3'])

File.open 'playlist.m3u', 'w' {|m| all_mp3s.each {|mp3| m.write mp3 + "\n"}}

puts 'Nice playlist'
