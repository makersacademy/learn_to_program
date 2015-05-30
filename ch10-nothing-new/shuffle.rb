def shuffle arr

  shuf = []

  x = ""

  while arr.length > 0

    x = arr.sample
    arr.delete(x)
    shuf.push(x)

  end

  shuf

end

# N.B. The above method will permanently alter the caller!!!
