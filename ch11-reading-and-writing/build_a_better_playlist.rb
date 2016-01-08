def music_shuffle filenames
  filenames = filenames.sort
  len = filenames.length

  2.times do
    shuffled = []
    lindex = 0
    rindex = len/2

    while shuffled.length < len
      if shuffled.length.even?
        shuffled << filenames[rindex]
        rindex += 1
      else
        shuffled << filenames[lindex]
        lindex += 1
      end
    end
    filenames = shuffled
  end

  cut_point = rand(len)
  count = 0
  final = []

  while count < len
    final << filenames[(count+cut_point)%len]
    count += 1
  end

  p final

end

filenames = [1,2,3,4,5,6,7]

music_shuffle filenames
