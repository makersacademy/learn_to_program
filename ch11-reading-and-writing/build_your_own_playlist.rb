require_relative '../ch10-nothing-new/shuffle.rb'

def playlist(filename)
  orig_mp3_files = Dir['**/*.mp3']
  #shuffle the music files once by using the already existing shuffle method
  mp3_files = shuffle(orig_mp3_files)
  File.open filename, 'w' do |f|
    mp3_files.each { |track| f.puts track}
  end
end

playlist('playlist.m3u')
