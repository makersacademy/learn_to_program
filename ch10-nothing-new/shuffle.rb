def shuffle(arr)
  rec_shuf(arr, [])
end

def rec_shuf(arr, out)
  return out << arr[0] if arr.length == 1
  pos = rand(arr.length)
  out << arr[pos]
  arr.delete_at(pos)
  rec_shuf(arr, out)
end

=begin
arr = [1,2,3,4,5,6,7,8,9,1,2,3,4,5,6,7,8,9]
p shuffle(arr)
=end
