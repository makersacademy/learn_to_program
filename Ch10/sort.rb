
def sort (arr)

  num = arr.length

  loop do

    sorted = false

    (num-1).times do |i|
      if arr[i] > arr [i +1]
        arr[i], arr[i +1] = arr[i+1], arr[1]
        sorted = true
      end
    end

    break if not sorted
  end
