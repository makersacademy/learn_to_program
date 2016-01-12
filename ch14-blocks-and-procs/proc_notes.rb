toast = Proc.new do
  puts "Cheers!"
end

# toast.call
# toast.call
# toast.call

# Proc is effectively an object that acts like a method. Can be stored or passed around

do_you_like = Proc.new do |good_stuff|
  puts "I *really* like #{good_stuff}"
end

#Can input parameters into a Proc
# do_you_like.call 'chocolate'
# do_you_like.call 'Ruby'



# Procs passing into methods
def do_self_importantly some_proc
  puts "Everybody just HOLD ON! I'm doing something..."
  some_proc.call
  puts "OK everyone, I'm done. As you were."
end

say_hello = Proc.new do
  puts "hello"
end

say_goodbye = Proc.new do
  puts "goodbye"
end

# do_self_importantly say_hello
# do_self_importantly say_goodbye


# methods can be used to determine how many times or whether to call a proc.

def maybe_do some_proc
  if rand(2) == 0
    some_proc.call
  end
end

# above will only sometimes call it

def twice_do some_proc
  some_proc.call
  some_proc.call
end

#  above will call proc twice_do

wink = Proc.new { puts '<wink>'}
glance = Proc.new { puts '<glance>' }

# maybe_do wink
# maybe_do wink
# maybe_do glance
# maybe_do glance
# twice_do wink
# twice_do glance





#what if procs are very very different? Method takes an object and proc calling proc on object, if the proc returns false quits, otherwise calls the proc with the returned object. This will keep happening until proc returns false.

def do_until_false first_input, some_proc
  input = first_input
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
    # Take off the last number ...
    array.pop
    # and replace it with its square
    array.push last_number ** 2
    # followed by the next smaller number
    array.push last_number-1
  end
end

always_false = Proc.new {|just_ignore_me| false}

# puts do_until_false([5], build_array_of_squares).inspect

yum = 'lemonade with a hint of orrange blossom water'
# puts do_until_false(yum, always_false)





# You can also return procs that are created in a method! This seems crazy.

def compose proc1, proc2
  Proc.new {|x| proc2.call(proc1.call(x))} # this writes a proc which calls proc2 on whatever proc1 was!
end

square_it = Proc.new {|x| x ** 2}

double_it = Proc.new {|x| x * 2}

double_then_square = compose double_it, square_it
square_then_double = compose square_it, double_it

# puts double_then_square.call(5)
# puts square_then_double.call(5)


# passing just a block into a method

class Array

  def each_even(&was_a_block__now_a_proc)
    # start with true as array starts with 0 (even)
    is_even = true

    self.each do |object|
      if is_even
        was_a_block__now_a_proc.call object
      end

      # Toggle from even to odd, or odd to even..
      is_even = !is_even
    end
  end

end

fruits = ['apple', 'bad apple', 'cherry', 'durian']
fruits.each_even do |fruit|
  puts "Yum!  I just love #{fruit} pies, don't you?"
end

# pulling even numbered elements from array
[1, 2, 3, 4, 5].each_even do |odd_ball|
  puts "#{odd_ball} is NOT an even number!"
end
