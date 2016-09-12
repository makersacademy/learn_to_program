def shuffle arr
  shuf = []

  while arr.length > 0
    random_index = rand(arr.length)
    current_index = 0
    new_arr = []

    arr.each do |i|
      if current_index == random_index
        shuf.push i
      else
        new_arr.push i
      end
      current_index = current_index + 1
    end
    arr = new_arr
  end
  shuf
end
