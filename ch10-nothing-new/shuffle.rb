def shuffle arr
	arr.sort_by{rand}
end

puts (shuffle ([4, 10, 9, 8, 400, 252]))