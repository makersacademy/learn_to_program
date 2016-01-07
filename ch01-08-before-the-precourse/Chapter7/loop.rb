#Input doesn't equal anything.
input = ''
#WHILE input doesn't equal 'bye', output the variable input then request a new input.
while input != 'bye'
  puts input
  input = gets.chomp
#END when that requested input equals 'bye' and output 'Come again soon!'.
end
puts 'Come again soon!'
