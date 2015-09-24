require './../ch10-nothing-new/shuffle.rb'

file_names = shuffle Dir["/**/*.mp3"]

File.open "playlist.m3u", 'w' do |f|
  file_names.each { |file_name| f.write file_name + "\n" }
end

