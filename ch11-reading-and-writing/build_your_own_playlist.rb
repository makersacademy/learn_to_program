#!/usr/bin/env ruby

def shuffle arr
  shuff = []
  new_arr = Array.new(arr)

  while new_arr.length > 0
    index = rand(new_arr.length)
    random_element = new_arr[index]
    shuff << random_element
    new_arr.delete_at(index)
  end

shuff
end


Dir.chdir '/Users/sara/Documents/SaraMusic'
music_files = shuffle(Dir['**/*.ogg'])
File.open 'playlist.m3u', 'w' do |f|
  music_files.each do |music_file|
f.write music_file + "\n" end
end
puts 'Done!'
