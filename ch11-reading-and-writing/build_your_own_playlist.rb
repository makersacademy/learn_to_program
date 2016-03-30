def shuffle(arr)
  shuf = []

  while arr.length > 0
    rand_index = rand(arr.length)

    curr_index = 0
    array = []

    arr.each do |item|
      if curr_index == rand_index
        shuf.push item
      else
        array.push item
      end
      curr_index = curr_index + 1
    end

   arr = array
  end

  shuf
end



Dir.chdir ('/home/ubuntu/workspace/messing_about/fake_music')

music_files = Dir['**/*.mp3']
shuffled_files = shuffle(music_files)

puts "What would you like to call your playlist"

playlist = gets.chomp

File.open("#{playlist}.m3u", 'w') do |f|
    shuffled_files.each { |file| f.write file + "\n"}
end

puts "Your new playlist is complete!"