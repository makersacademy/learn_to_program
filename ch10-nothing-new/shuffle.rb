def shuffle arr

  shuffled_arry = []

  while arr.size() > 0

    random_number = rand(arr.length)
    temp = arr.fetch(random_number)
    arr.delete(temp)
    shuffled_arry.push(temp)

  end

  shuffled_arry

end
