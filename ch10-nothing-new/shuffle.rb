def shuffle arr
  shuffled_array = []
  while arr.length > 0
    random_index = rand(arr.length)
    current_index = 0
    new_array = []

    arr.each do |item|
      if current_index == random_index
        shuffled_array.push item
      else
        new_array.push item
    end

    current_index = current_index + 1
  end
  arr = new_array
end
shuffled_array
end
