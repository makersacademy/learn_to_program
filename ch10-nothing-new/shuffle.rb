def shuffle arr
  shuffled = []
  until arr.length == 0
      input = arr.sample
      shuffled.push input
      arr.delete(input)
    end
    shuffled
  end

puts (shuffle([1,2,3,4,5,6,7,8,9]))
