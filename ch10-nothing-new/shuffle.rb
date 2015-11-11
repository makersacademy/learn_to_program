def shuffle arr
  arr.each_with_index do |item, index|
    arr.insert(rand(arr.length), arr.delete_at(index))
  end
end
