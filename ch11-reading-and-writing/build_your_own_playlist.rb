require_relative '../ch10-nothing-new/shuffle.rb'

music_path = '/Users/Mali/Desktop/songs_for_playlist/'
Dir.chdir(music_path)
all_music = shuffle(Dir['*.{MP3,mp3}'])

puts "What would you like to name your playlist?"
playlist_name = gets.chomp

File.open(playlist_name+'.m3u','w') do |f|
  all_music.each do |song|
    f.write(music_path+song+"\n")
  end
end

puts "Playlist '#{playlist_name}' created!"
