array = []

while true
	build = gets.chomp
	if build == ''
		break
	end

array.push build
end

puts array.sort