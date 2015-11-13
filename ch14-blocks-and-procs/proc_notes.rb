toast = Proc.new do
  puts "Cheers!"
end

toast.call
toast.call
toast.call

# Proc is effectively an object that acts like a method. Can be stored or passed around

do_you_like = Proc.new do |good_stuff|
  puts "I *really* like #{good_stuff}"
end

#Can input parameters into a Proc
do_you_like.call 'chocolate'
do_you_like.call 'Ruby'
