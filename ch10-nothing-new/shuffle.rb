def shuffle arr
  random = Random.new.rand(1..3)
  operand = arr.pop
  c = 100
  while c > 0
    if random > 2
      operand.prepend arr
    else
      operand << arr
    end
    c = c - 1
  end
  return arr
end

shuffle(['hi', 'bye', 'yes', 'no'])
