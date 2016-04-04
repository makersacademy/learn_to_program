def music_shuffle filenames
  filenames.sort!
  total = filenames.length
  
  2.times do
    left = 0
    right = filenames.length/2
    array = []
    
    while array.length < total
      if array.length.even?
        array << filenames[right]
        right += 1
      else
        array << filenames[left]
        left += 1
      end
    end
    
    filenames = array
  end
  
  cut = rand(filenames.length)
  first = filenames.first(cut)
  second = filenames.drop(cut)
  second.concat first
end

# It would be better if he said "make a shuffle method that shuffles the playlist like a deck of cards twice,
# then cuts the deck" instead of "make a method that mixes up your playlist rather than just shuffles it", 