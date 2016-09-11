# long way
def shuffle(arr)
  shuff = []
  while arr.length > 0
    rand_index = rand(arr.length)  # Randomly pick an element
    curr_index = 0
    new_arr = []
    arr.each do |item|
      if curr_index == rand_index
        shuff.push item
      else
        new_arr.push item
      end
      curr_index += 1
    end
    arr = new_arr
  end
  shuff
end

# short way
=begin
def shuffle(arr)
  arr.sort_by{rand}
end
=end
animals = ["zebra", "donkey", "monkey", "tarsier", "platypus", "anteater", "koala"]
puts shuffle(animals)
