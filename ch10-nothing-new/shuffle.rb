def shuffle(an_array)
  main_shuffle an_array, []
end

def main_shuffle(unshuffled_array, shuffled_array)
  if unshuffled_array.length != 0
    unshuffled_array[rand((unshuffled_array.length + 1))].push shuffled_array
  end
  main_shuffle unshuffled_array
  return shuffled_array
end