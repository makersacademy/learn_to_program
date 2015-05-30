title    = 'Table of Contents'

chapters = [['Getting Started', 1],
			['Numbers',         9],
			['Letters',        13]]

puts title.center(60)
puts
chapters.each_with_index do |chap, idx|
	name, page = chap
	chap_num   = idx + 1
	beginning  = "Chapter #{chap_num}: #{name}"
	ending     = "page #{page}"

	puts beginning.ljust(40) + ending.rjust(20)
end