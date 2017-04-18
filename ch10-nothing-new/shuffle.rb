def shuffle arr
  randomised = []

  while arr.length > 0
    randomised << arr[rand(arr.length)]
    arr = arr - randomised
  end
   randomised
end

