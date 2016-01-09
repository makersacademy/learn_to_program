def music_shuffle filenames

  filenames.sort!

  shuffled = filenames.select.each_with_index { |x, i| i.odd? } + filenames.select.each_with_index { |x, i| i.even? }
  shuffled.rotate(2)

end

