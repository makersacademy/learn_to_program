
def shuffle arr

  shuffled = arr.dup #There's also clone

  i = shuffled.length-1
  while i > 0
    j = rand(i -= 1)
    i = i - 1
    shuffled[j], shuffled[i] = shuffled[i], shuffled[j]
  end

  shuffled

end
