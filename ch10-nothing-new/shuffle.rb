def shuffle arr
  shuffled = []

  while arr.length > 0 do
    shuffled.push(arr.delete_at(rand(arr.length)))
  end

  shuffled

end

puts shuffle [1,2,3,4,5,6,7,8,9,10]