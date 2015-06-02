def compose proc1, proc2
  Proc.new do |x|
    proc2.call(proc1.call(x))
  end
end
# This method takes 2 procs and returns a new proc which, when called, 
# calls the first proc and passes its result into the second one.

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
# ==> 100
# ==> 50