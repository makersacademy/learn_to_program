playlist = Dir['/home/ubuntu/workspace/**/*.mp3'].shuffle

filename = "new_playlist.m3u"

File.open filename, 'w'  do |f|
    playlist.each do |song|
        f.write song+"\n"
    end
end
    