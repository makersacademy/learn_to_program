def shuffle arr
  recursive_shuffle arr, []
end

def recursive_shuffle not_shuffled, shuffled
  return shuffled if not_shuffled.size == 0
  prng = Random.new
  i = prng.rand(0...not_shuffled.size)
  shuffled << not_shuffled[i]
  not_shuffled.delete_at(i)
  recursive_shuffle not_shuffled, shuffled
end
