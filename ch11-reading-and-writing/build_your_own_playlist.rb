Dir.chdir '/Users/loliphant/Documents/Projects/playlist2'

# find all music files
# audio_files = Dir['*.{mp3}']
# filename = 'Playlist.m3u'
# audio_string1 = "/Users/loliphant/Documents/Projects/playlist/Introduction.mp3\n"
# audio_string2 = "/Users/loliphant/Documents/Projects/playlist/MindfulnessOfBreathing.mp3\n"
# audio_string3 = "/Users/loliphant/Documents/Projects/playlist/JustBeing.mp3\n"
# audio_string4 = "/Users/loliphant/Documents/Projects/playlist/mozart-clarinet-concerto-2-piano-and-clarinet.mp3\n"
# audio_string5 = "/Users/loliphant/Documents/Projects/playlist/edvard-grieg-peer-gynt1-morning-mood-piano.mp3\n"
#
# File.open filename, 'w' do |f|
#   f.write audio_string1 + audio_string2 + audio_string3 + audio_string4 + audio_string5
# end


def shuffle(arr)
  shuf = []

  while arr.length > 0
    rand_index = rand(arr.length)
    curr_index = 0
    new_arr = []

    arr.each do |item|
      if curr_index == rand_index
        shuf.push(item)
      else
        new_arr.push(item)
      end
      curr_index += 1
    end

    arr = new_arr
  end

  shuf
end

filename = 'Playlist2.m3u'
all_audio = shuffle(Dir['*.mp3'])

File.open filename, 'w' do |f|
  all_audio.each do |x|
    f.write x+"\n"
  end
end

puts "finished"

# have to execute ruby file each time you want to shuffle playlist
