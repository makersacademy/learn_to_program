def music_shuffle filenames
    filenames.collect!{ |file| file.split("/") }
    shuffled_arr = []
    while filenames.length > 0
      rand_num = rand(filenames.length)
      shuffled_arr << filenames[rand_num]
      i = filenames.index(filenames[rand_num])
      filenames.delete_at(i)
    end
    (0..shuffled_arr.length - 2).each do |n|
    if shuffled_arr[n][-2] == shuffled_arr[n + 1][-2]
      track = shuffled_arr.delete_at(n)
      shuffled_arr.insert(rand(shuffled_arr.length - 1), track)
    end
  end
  shuffled_arr.collect!{ |file| file.join("/") }
  puts shuffled_arr
  end

