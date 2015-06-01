def shuffle stuff
	stuff.sort_by{rand}
end

puts(shuffle(['a', 'long', 'time', 'ago', ',', 'in', 'a', 'tomato']))