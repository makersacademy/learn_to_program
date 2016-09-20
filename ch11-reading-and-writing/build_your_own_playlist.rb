music = Dir['/home/ubuntu/workspace/week2/music/**/*.{mp3,MP3}'].shuffle

File.open '/home/ubuntu/workspace/week2/music/playlist.m3u', 'w' do |f|
    music.each do |song|
        f.write song+"\n"
    end
end

puts "Playlist created"