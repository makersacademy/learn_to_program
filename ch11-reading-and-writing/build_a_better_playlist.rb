
def music_shuffle filenames
  random_store = []
  2.times do
    for i in 0..(filenames.length-1)
      position = rand(filenames.length)
      random_store.push(filenames[position])
      filenames[position] = nil
      filenames.compact!
    end
    filenames = random_store
    p random_store
  end
  
  random_cut = []
  cut = rand(filenames.length)
  for i in cut..(filenames.length-1)
    random_cut.push(random_store[i])
  end
  for i in 0..(cut-1)
    random_cut.push(random_store[i])
  end
  p cut
  random_cut
end

p music_shuffle ['a','b','c','d','e','f','g','h']