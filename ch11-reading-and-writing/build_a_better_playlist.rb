def music_shuffle filenames

  filenames = filenames.sort
  length = filenames.length


  # shuffle the array twice
  2.times do

    # split the array into two
    half_1 = filenames
    half_2 = []
    count = 0
    while count < length / 2
    	half_2 << half_1.shift
    	count += 1
    end

    # "Riffle" shuffle the arrays together
    filenames = []
    while filenames.length < length
    	if filenames.length % 2 == 0
    		filenames << half_1.shift
    	else
        filenames << half_2.shift
      end
    end

  end

  # randomly split the array
  rand(length).times do
    filenames << filenames.shift
  end

  filenames

end
