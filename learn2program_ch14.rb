=begin
#14.0: Blocks and Procs
toast = Proc.new do
    puts "Cheers!"
end
toast.call
toast.call
toast.call
=end

=begin
#14.0: Blocks and Procs
do_you_like = Proc.new do |good_stuff|
    puts "I *really* like #{good_stuff}!"
end

do_you_like.call("Chocolate")
do_you_like.call("Ruby")
=end

#=begin
#14.1: Method That Takes Procs
def do_self_importantly(some_proc)
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

do_self_importantly(say_hello)
do_self_importantly(say_goodbye)