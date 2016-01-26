
  def shuffle arr
    new_arr = []

    while (arr.any?) do
      new_arr << arr.delete_at(rand(arr.length))
    end

    new_arr
  end
