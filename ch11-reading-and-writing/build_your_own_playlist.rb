require '../ch10-nothing-new/shuffle.rb'

#search for music files
homedir = '/Users/errolelliott/Documents'
Dir.chdir homedir #'/Users/errolelliott/Documents/Music'
music_names = Dir['**/*.mp3']
puts music_names
puts
music_name2 = shuffle music_names
puts music_name2
#write playlist
filename = 'myMusicPlaylist.m3u'

File.open filename, 'w' do |f|
  music_name2.each { |element| f.puts(homedir + '/' + element) }
end

