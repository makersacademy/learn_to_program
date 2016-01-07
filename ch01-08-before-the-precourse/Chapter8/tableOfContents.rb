table_data = [['Chapter 1', 'Getting Started', 'Page 1'],['Chapter 2', 'Numbers', 'Page 3'],['Chapter 3', 'Letters', 'Page 5']]

line_width = 80

puts 'table of contents'.capitalize.center(line_width)
puts
table_data.each do |chap|
  chapter = chap[0]
  name = chap[1]
  page = chap[2]

  beginning = chapter.to_s + '     ' + name.to_s
  ending = page.to_s

  puts beginning.ljust(line_width/2) + ending.rjust(line_width/2)
end
puts
