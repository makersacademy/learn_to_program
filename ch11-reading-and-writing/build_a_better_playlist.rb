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
        r_idx = r_idx + 1
      else
        shuf.push(filenames[l_idx])
        l_idx = l_idx + 1
      end
    end
    filenames = shuf
  end

  arr = []
  cut = rand(len)
  idx = 0

  while idx < len
    arr.push(filenames[(idx+cut)%len])
    idx = idx + 1
  end

  arr
end


# def music_shuffle filenames
#   my_shuffler filenames, 3
# end

# def my_shuffler filenames, count
#   if count == 0
#     return filenames
#   end

#   songs = filenames
#   count = count
#   pile_one = []
#   pile_two = []

#   while songs.length >= 1
#     pile_one << songs.pop
#     if songs.length > 0
#       pile_two << songs.shift
#     end
#   end

#   shuffled_pile = []
#   while pile_one.length >= 1
#     index = rand(pile_one.size)
#     shuffled_pile << pile_one[index]
#     pile_one.delete_at(index)
#     if pile_two.length > 0
#       index = rand(pile_two.size)
#       shuffled_pile << pile_two[index]
#       pile_two.delete_at(index)
#     end
#   end
#   count -= 1
#   my_shuffler(shuffled_pile, count)
# end
