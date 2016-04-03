
  #find all music files in a directory and put into a shuffled array
  music = Dir['/Users/Fluff/music/itunes/iTunes Media/music/**/*.mp3']
  music_array = music.shuffle

  #define filename
  filename = "playlist.m3u"

  #do it
  File.open filename, 'w' do |f|
    music_array.each do |musicfile|
      f.write musicfile+"\n"
    end
  end


  puts 'Done!'
