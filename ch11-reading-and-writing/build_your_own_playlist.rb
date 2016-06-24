puts "Where are the files located that you want to add to your playlist?"

directory = gets.chomp

def change_dir dir

  if File.exist?(dir)
    Dir.chdir "#{dir}"
    puts Dir.pwd
  else
    puts "Invalid Directory. Please input a valid directory"
    change_dir gets.chomp
  end

end

change_dir directory

def shuffle arr

rec_shuf arr, []

end

def rec_shuf unshuf, shuf

shuf.insert(rand(10), shuf.pop) until unshuf = []

shuf.compact

end

playlist = shuffle(Dir["#{Dir.pwd}/**/*.{MP3,mp3}"])

puts "Where would you like to put your playlist?"
change_dir gets.chomp

File.open 'playlist.m3u', 'w' do |f|
  platlist.each do |msc|
    f.write msc + "\n"
  end
end
