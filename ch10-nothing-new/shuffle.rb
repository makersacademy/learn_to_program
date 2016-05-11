def shuffle arr
  return [] if arr.length == 0
  pivot = arr.shift
  less, more = arr.partition {|e| e <=> pivot }
  shuffle(less) + [pivot] + shuffle(more)
end