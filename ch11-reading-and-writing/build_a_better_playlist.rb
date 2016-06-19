def music_shuffle filenames
  # not sure whether a string or an array will be passed.
  if filenames.is_a? String
    # Split the filenames with new-line char.
    filenames = filenames.split("\n")
  end

  filenames.shuffle
end
