class Array
  def shuffle
    shuffled_arr = []
    length_of_array = self.length
    while length_of_array > 0
    length_of_array = self.length
    shuffle_entry = rand(length_of_array)
    entry_to_push = self[shuffle_entry]
    shuffled_arr.push(entry_to_push)
    self.delete_at(shuffle_entry)
  end
  while shuffled_arr.length > 0
    self.push(shuffled_arr.pop)
  end
    puts self
  end
end

array_to_shuffle = ["Harry", "Meg", "Lucy", "John"]
array_to_shuffle.shuffle
