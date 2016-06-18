def music_shuffle array_of_filenames
  arr = []
  while arr.length < array_of_filenames.length
    new = rand(array_of_filenames.length)
    arr << array_of_filenames[new] unless arr.include? array_of_filenames[new]
  end
  arr
end