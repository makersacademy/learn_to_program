def shuffle array
  shuffle_array = []
  while array.length > 0
    picked = array[rand array.length]
    array.delete(picked)
    shuffle_array << picked
  end
  shuffle_array
end
