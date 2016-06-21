toast = Proc.new do
  puts 'Cheers!'
end

toast.call
toast.call
toast.call

puts

do_you_like = Proc.new do |good_stuff|
  puts "I *really* like #{good_stuff}!"
end

do_you_like.call 'chocolate'
do_you_like.call 'Ruby'
puts

def do_self_importantly some_proc
  puts "Everybody just HOLD ON! I'm doing something..."
  some_proc.call
  puts "OK everyone, I'm done. As you were."
end

say_hello = Proc.new do
  puts 'hello'
end

say_goodbye = Proc.new do
  puts 'goodbye'
end

do_self_importantly say_hello
do_self_importantly say_goodbye
puts

def maybe_do some_proc
  if rand(2) == 0
    some_proc.call
  end
end

def twice_do some_proc
  some_proc.call
  some_proc.call
end

wink = Proc.new do
  puts '<wink>'
end

glance = Proc.new do
  puts '<glance>'
end

maybe_do wink
maybe_do wink
maybe_do glance
maybe_do glance
twice_do wink
twice_do glance
puts

def do_until_false first_input, some_proc
  input  = first_input
  output = first_input

  while output
    input = output
    output = some_proc.call input
  end

  input
end

build_array_of_squares = Proc.new do |array|
  last_number = array.last
  if last_number <= 0
    false
  else
    # Take off the last number
    array.pop
    # and replace it with its square
    array.push last_number*last_number
    # followed by the next smaller number.
    array.push last_number-1
  end
end

always_false = Proc.new do |just_ignore_me|
  false
end

puts do_until_false([5], build_array_of_squares).inspect

yum = 'Lemonad with a hint of orange blossom water'
puts do_until_false(yum, always_false)
puts

def compose proc1, proc2
  Proc.new do |x|
    proc2.call(proc1.call(x))
  end
end

square_it = Proc.new do |x|
  x * x
end

double_it = Proc.new do |x|
  x + x
end

double_then_square = compose double_it, square_it
square_then_double = compose square_it, double_it

puts double_then_square.call(5)
puts square_then_double.call(5)

puts

class Array

  def each_even(&was_a_block__now_a_proc)
    # We start with "true" because
    # arrays start with 0, which is even
    is_even = true

    self.each do |object|
      if is_even
        was_a_block__now_a_proc.call object
      end

      # Toggle from even to odd, or odd to even

      is_even = !is_even
    end
  end

end

fruits = ['apple','bad apple','cherry','durian']
fruits.each_even do |fruit|
  puts "Yum! I just love #{fruit} pies, don't you?"
end

[1,2,3,4,5].each_even do |odd_ball|
  puts "#{odd_ball} is NOT an even number!"
end
