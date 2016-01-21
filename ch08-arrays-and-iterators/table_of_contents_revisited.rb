info = [54, 'Table of Contents', 'Chapter 1: Getting Started', 'page 1', 'Chapter 2: Numbers', 'page 9', 'Chapter 3: Letters', 'page 13']

puts (info[1]).center(info[0])
puts
puts (info[2]).ljust((info[0]) / 2) + (info[3]).rjust((info[0]) / 2)
puts (info[4]).ljust((info[0]) / 2) + (info[5]).rjust((info[0]) / 2)
puts (info[6]).ljust((info[0]) / 2) + (info[7]).rjust((info[0]) / 2)

###################################
puts
puts
###################################

title = 'Table of Contents'
info = [['Getting Started', 1], ['Numbers', 9], ['Letters', 13]]
width = 54

puts title.center(width)
puts

info.each_with_index do |chapter, index|
  name = chapter[0]
  page = chapter[1]
  num_chap = index + 1
  left = "Chapter #{num_chap}: #{name}"
  right = "page #{page}"
  puts left.ljust(width / 2) + right.rjust(width / 2)
end