def shuffle arr
  recursive_shuffle arr, []
end

def recursive_shuffle unshuffled, shuffled
  return shuffled if unshuffled.empty?
  move = unshuffled.delete_at(rand(unshuffled.length))
  shuffled << move
  recursive_shuffle unshuffled, shuffled
end
