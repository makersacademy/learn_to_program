require_relative "learn_to_program/ch10-nothing-new/shuffle"
music_files = Dir["Random/*.mp3"]

filename = 'playlist-shuffle.m3u'
shuffle = shuffle(music_files)

File.open filename, "w" do |f|
  shuffle.each do |song|
    f.write song + "\n"
  end
end

