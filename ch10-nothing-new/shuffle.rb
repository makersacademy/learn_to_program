def shuffle arr
  prng = Random.new
  recursive_shuffle arr, [], prng
end


def recursive_shuffle arr, shuffled, prng
  num = arr.length
  pos = prng.rand(num)

  shuffled << arr[pos]
  arr.delete_at(pos)

  arr == [] ? shuffled : recursive_shuffle(arr, shuffled, prng)
end

p shuffle [1,4,2,8,5,7]