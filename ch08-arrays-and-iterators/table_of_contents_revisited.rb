# Table of Contents - Revisited
arr = ['Chapter 1: Getting Started', '1', 'Chapter 2: Numbers', '9', 'Chapter 3: Letters', '13']
puts arr

line_width = 30
puts (arr[0].ljust(line_width)) + (('Page ' + arr[1]).rjust(line_width))
puts (arr[2].ljust(line_width)) + (('Page ' + arr[3]).rjust(line_width))
puts (arr[4].ljust(line_width)) + (('Page ' + arr[5]).rjust(line_width))
