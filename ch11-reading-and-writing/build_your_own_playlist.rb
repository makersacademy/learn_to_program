def shuffle arr
  shuf = []

  while arr.length > 0
    # Randomly pick one element of the array.
    rand_index = rand(arr.length)

    # Now go through each item in the array,
    # putting them all into new_arr except for the
    # randomly chosen one, which goes into shuf.
    curr_index = 0
    new_arr = []

    arr.each do |item|
      if curr_index == rand_index
        shuf.push item
      else
        new_arr.push item
      end

      curr_index = curr_index + 1
    end

    # Replace the original array with the new,
    # smaller array.
    arr = new_arr
  end

  shuf
end

playlist = 'playlist.txt'
songs = shuffle(Dir['**/*.mp3'])

puts songs

=begin
File.open playlist, 'w' do |f|
  songs.each do |song|
    f.write song + "\n"
  end
end

puts "done"
=end
