def shuffle arr
  arr.shuffle!
  half = arr.length / 2
  arr = arr.slice(0, half).shuffle + arr.slice(half, arr.length).shuffle
end