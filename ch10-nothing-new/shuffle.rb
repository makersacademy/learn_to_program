def shuffle array
  shuffled = []

  while array.length > 0

    random_index = rand(array.length)

    current_index = 0
    new_array = []

    array.each do |index|
      if current_index == random_index
        shuffled.push index
      else
        new_array.push index
      end
      current_index = current_index + 1
    end

    array = new_array
  end
  shuffled
end

puts(shuffle(["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]))
