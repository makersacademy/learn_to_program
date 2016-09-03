#I'm not going to pretend that I didn't utilise Google for this!....

def sort(array)

  num = array.length

  loop do
    changes = false

    (num-1).times do |i|
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
        changes = true
      end
    end

    break if not changes #I need to revisit this wording
  end

  array
end
