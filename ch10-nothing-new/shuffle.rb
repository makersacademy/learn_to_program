def shuffle (array)
  shuffled = []
  if array.length == 0
    return array
  else
    while array.length > 0
      n = rand(array.length - 1)
      shuffled << array[n]
      array.delete_at(n)
    end
  end
    shuffled
end