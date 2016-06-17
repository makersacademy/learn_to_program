def shuffle arr
  shuffled = []

  while !arr.empty?
    random = rand(arr.length) # picking random element using length of array
    index_no = 0
    new_arr = []

    arr.each do |element|
      if index_no == random
        shuffled.push element # if index number matches random number add to shuffled array
      else
        new_arr.push element # otherwise add to new array
      end

      index_no = index_no + 1
    end

  arr = new_arr #new array smaller, loops until arr is empty
  end

  shuffled # returns all elements in shuffled array in random order
end

mp3_files = shuffle(Dir['**/*.mp3'])
filename = 'Playlist.m3u'

File.open filename, 'w' do |f|
  mp3_files.each do |mp3|
    f.write mp3
  end
end
