def log desc, &block
  # your code here
end

# def maybe_do b
#   if rand(2) == 0
#     b.call
#   end
# end
#
# def twice_do a
#   a.call
#   a.call
# end
#
# wink = Proc.new do
#    puts "wink"
#  end
#
#  glance = Proc.new do
#    puts 'glance'
#  end

#  def do_until_false first_input, some_proc
#    input = first_input
#    output = first_input
#
#    while output
#      input = output
#      output = some_proc.call input
#    end
#    input
#  end
#
#  build_array_of_squares = Proc.new do |array|
#    last_number = array.last
#    if last_number <= 0
#      false
#    else
#      array.pop
#      array.push last_number * last_number
#      array.push last_number - 1
#    end
#  end
#
# always_false = Proc.new do |just_ignore_me|
#   false
# end
