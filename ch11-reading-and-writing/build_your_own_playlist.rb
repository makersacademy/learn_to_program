tracks = Dir['C:/Users/Tom/Test/**/*.mp3']
Dir.chdir 'C:/Users/Tom/Test/'
content =  tracks.each do |t|  
        "#{t}/n"
    end

tracklist = 'playlist.m3u'

File.open tracklist, 'w' do |f|
    tracks.each do |t|
        f.write(t + "\n")
    end
end