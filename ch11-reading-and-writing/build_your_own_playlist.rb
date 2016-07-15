def playlist_generator
    
    tunes = Dir['music/*.mp3']
    tunes << Dir['music/*/*.mp3']
    tunes.flatten!
    system_root = 'C://'
    tunes.each_with_index {|item,index| tunes[index] = system_root + item}
    
    File.open 'playlist.m3u', 'w' do |f|
      tunes.each do |tune|
        f.write tune+"\n"
      end
    end
    
    # IO.write('playlist_001.m3u', tunes.shuffle)
    # Can't seem to test this from the command line -> ruby filename.rb quietly executes with no output
    
end