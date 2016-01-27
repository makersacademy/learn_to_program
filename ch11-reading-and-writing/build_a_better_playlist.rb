def music_shuffle filenames
  filenames = filenames.sort
  len = filenames.length

  2.times do
    l_idx = 0
    r_idx = len/2
    shuf = []

    while shuf.length < len
      if shuf.length%2 == 0
        shuf.push(filenames[r_idx])
        r_idx += 1
      else
        shuf.push(filenames[l_idx])
        l_idx += 1
      end
    end

    filenames = shuf
  end

  arr = []
  cut = rand(len)
  idx = 0

  while idx < len
    arr.push(filenames[(idx+cut)%len])
    idx += 1
  end

  arr
end

songs = ['aa/bbb', 'aa/ccc', 'aa/ddd', 'AAA/xxxx', 'AAA/yyyy', 'AAA/zzzz', 'foo/bar']
p music_shuffle(songs)

=begin
This is my original solution, which doesn't pass the rspec test.
def music_shuffle filenames
song_array = []
big_array = []
output_array = []

# Take the incoming list of filenames and split to create
# an array for each song containing all sections of filepath.
# Store the array for each song in a new array.
filenames.each do |song|
  split_song = song.split('/')
  song_array << split_song
end

# Create a further level of array which groups all song path arrays by
# the second to last element, which I'm assuming will be the artist name.
# Using the second to last element will allow the program to work on file's
# with a pathlength of any size.
while song_array.length != 0
  first = song_array[0][-2]
  big_array << song_array.select{|song| song[-2] == first}
  song_array.delete_if{|song| song[-2] == first}
end

# Shuffle the array of artists to prevent playlists always starting with
# the first artist in the original list.
big_array.shuffle!

# Check if there are any songs left to add to the playlist and continue if
# there are.
# Chooses a random song from each artist group within the array, joins it,
# and outputs to the output array.
while big_array.flatten.length != 0
  (big_array.length-1).downto(0) do |i|
    artist_array = big_array[i]
      if artist_array == []  # Removes an empty artist array to prevent nil.
        big_array.delete_at(i)
        next
      end
    next_up = artist_array.delete_at(rand(artist_array.length))
    big_array[i] = artist_array
    output_array << next_up.join('/')
  end
end

# Names and writes the playlist.
#puts "What would you like to call your playlist?"
#pl_name = gets.chomp + '.m3u'
pl_name = 'playlist'
File.open pl_name, 'w' do |f|
  output_array.each{|song|f.write song + "\n"}
end

#puts "Playlist #{pl_name}.m3u created!"

end


#songs = ['aa/bbb', 'aa/ccc', 'aa/ddd', 'AAA/xxxx', 'AAA/yyyy', 'AAA/zzzz', 'foo/bar']
#p music_shuffle(songs)

=end
