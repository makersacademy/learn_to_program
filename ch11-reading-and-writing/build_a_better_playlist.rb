def music_shuffle filenames
  shuffled = []
  filenames.each do |filename|
    filename = (rec_shuffle filename.split('/'), []).join('/')
    shuffled << filename
  end
  shuffled = rec_shuffle shuffled, []
end

def rec_shuffle arr, shuffled
  if arr == []
    return shuffled
  end
  i = rand(0...arr.length)
  shuffled << arr[i]
  arr.delete_at(i)
  rec_shuffle arr, shuffled
  shuffled
end


Dir.chdir '/Users/camilla_foodity/Music'

all_music = Dir['**/*.mp3']
# puts "/////////////////// ALL MUSIC /////////////"
# puts all_music
music_shuffled = music_shuffle all_music
# puts "/*/*/*/*/*/*/*/*/*/*/*/* SHUFFLED /*/*/*/*/*/*/*/*/*/*/*/*"
# puts music_shuffled
playlist = 'playlist.m3u'

File.open playlist, 'w' do |song_to_write|
  music_shuffled.each do |song|
    puts song
    song_to_write.write song+"\n"
  end
end
