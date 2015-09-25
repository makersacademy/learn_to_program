def shuffle arr
  # your code here
  shuf = []

	while arr.length > 0
		rand_index = rand(arr.length) #genera index a cazzo

		index = 0
		new_arr = []

		arr.each do |x|
			if index == rand_index # quando l'index a cazzo combacia con l'index valutato lo aggiunge al shuffle[]
				shuf << x
			else
				new_arr << x
			end

			index += 1
		end
			arr = new_arr
	end
	shuf
end