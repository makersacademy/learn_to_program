def shuffle arr

  mixed = []

  return mixed if arr.length < 1

  while arr.length > 0

    random = rand(arr.length)
    intro = 0
    rest_arr = []

    arr.each do |object|
      if intro == random
        mixed.push object
      else
        rest_arr.push object
      end

      intro += 1
    end

    arr = rest_arr
  end

  mixed
end

puts(shuffle([1,2,3,4,5,6]))