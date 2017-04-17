line_width = 80

puts 'table of contents'.capitalize.center(line_width)
puts 'Chapter 1:   Getting Started'.ljust(line_width) + 'page 1'.rjust(line_width)
puts 'Chapter 2:   Numbers'.ljust(line_width) + 'page 3'.rjust(line_width)
puts 'Chapter 3:   Letters'.ljust(line_width) + 'page 5'.rjust(line_width)



puts table_data[0,0].ljust(line_width) + table_data[0,1].center(line_width) + table_data[0,2].rjust(line_width)
puts table_data[1,0].ljust(line_width) + table_data[1,1].center(line_width) + table_data[1,2].rjust(line_width)
puts table_data[2,0].ljust(line_width) + table_data[2,1].center(line_width) + table_data[2,2].rjust(line_width)
