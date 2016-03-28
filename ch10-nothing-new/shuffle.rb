def shuffle arr
  new_array = []
  while true
    random = arr.sample
    new_array << random
    arr.slice!(arr.index(random))
    break if arr.empty?
  end
  new_array
end