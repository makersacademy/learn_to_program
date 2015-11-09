def shuffle(array)
  shuffled_array = []

  while array.length > 0
    random_index = rand(0..array.length)
    current_index = 0
    new_array = []
    array.each do |item|
      if current_index == random_index
        shuffled_array.push(item)
      else
        new_array.push(item)
      end
      current_index += 1
    end
  array = new_array
end
shuffled_array
end
