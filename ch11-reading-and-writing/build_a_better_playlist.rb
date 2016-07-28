require_relative '../ch10-nothing-new/shuffle.rb'

def better_playlist(filename)
  orig_mp3_files = Dir['**/*.mp3']
  #shuffle the music files twice by using the already existing shuffle method
  mp3_files = shuffle(shuffle(orig_mp3_files))
  #open file and add the names of mp3 files one-by-one
  File.open filename, 'w' do |f|
    mp3_files.each { |track| f.puts track}
  end
end
better_playlist('better_playlist.m3u')
