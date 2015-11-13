# your code here

def create_playlist
Dir.chdir('/Users/garethmckenna/music/') #change working directory
#find all mp3s to be moved
music = Dir['./*.{MP3,mp3}']
File.open 'Playlist.m3u'.shuffle, 'w' do |i|
music.each do |a|
  f.write "#{a} \n"
  end
end
puts "Playlist created"
end

create_playlist
