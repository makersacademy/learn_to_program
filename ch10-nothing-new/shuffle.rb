def shuffle arr

  newarr = arr.sort_by {rand}

  if (newarr <=> arr) != 0
    newarr
  else
    shuffle arr
  end

end

song_names = Dir['**/*.{mp3}'].to_a

song_names


