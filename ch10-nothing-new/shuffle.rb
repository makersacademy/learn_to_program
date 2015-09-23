def shuffle arr
  shuf = []

  while arr.length > 0
    rand_index = rand(arr.length)

    curr_index = 0
    new_arr = []

    arr.each do |item|
      if curr_index == rand_index
        shuf.push item
      else
        new_arr.push item
      end

      curr_index = curr_index + 1
    end

    arr = new_arr
  end

  shuf
end

puts(shuffle([1,2,3,4,5]))


# def shuffle arr
# 	shuf_arr = []
# 	# new_arr = []
# 	sum = 0

# 	while sum <= arr.length
# 		rand_arr = rand(arr.length)
# 		item = arr[rand_arr]
# 		shuf_arr.push item

# 		sum = sum + 1
# 	end
# 	shuf_arr
# end

# puts(shuffle([1,2,3,4,5,6]))