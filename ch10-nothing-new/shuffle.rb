
def shuffle array
  rec_shuff array, []
end

def rec_shuff unshuffled, shuffled
  return shuffled if unshuffled.length <=0

  rand_index = rand(0..unshuffled.length-1)
  shuffled << unshuffled.fetch(rand_index)
  still_unshuffled = []
  unshuffled.delete_at(rand_index)
  still_unshuffled = unshuffled

  rec_shuff still_unshuffled, shuffled

end

puts shuffle ["a", "b", "c", "d", "e", "f", "g", "h"]
