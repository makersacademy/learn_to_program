# your code here

Dir.chdir '/Users/camilla_foodity/Music'

def shuffle ary
  rec_shuffle ary, []
end

def rec_shuffle ary, shuffled
  if ary == []
    return ary
  end
  i = rand(0...ary.length)
  shuffled.insert(0, ary[i])
  ary.delete_at(i)
  rec_shuffle ary, shuffled
  shuffled
end

all_music = Dir['**/*.mp3']
# puts "/////////////////// ALL MUSIC /////////////"
# puts all_music
music_shuffled = shuffle all_music
# puts "/*/*/*/*/*/*/*/*/*/*/*/* SHUFFLED /*/*/*/*/*/*/*/*/*/*/*/*"
# puts music_shuffled
playlist = 'playlist.m3u'

File.open playlist, 'w' do |song_to_write|
  music_shuffled.each do |song|
    puts song
    song_to_write.write song+"\n"
  end
end
