# Doing without the use of .shuffle

def shuffle arr
	result = []
	while arr.size > 0
		result << arr.delete_at(rand(arr.length))
	end
	result
end