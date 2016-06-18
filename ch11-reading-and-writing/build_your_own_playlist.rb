play_list_dir = Dir['/Users/NNS/Downloads/SomeMusic/*.{mp3,m4a,MP3}'].shuffle

File.open 'playlist_new.m3u', 'w' do |f| 
play_list_dir.each {|mp| 
f.write mp + "\n"}
end

puts "Created!"

