$depth = 0

def better_log desc, &block
  depth = ' '*$depth
  puts depth + "Beginning \"#{desc}\"..."
  $depth += 1
  result = block[]
  $depth -= 1
  puts depth + "...\"#{desc}\" finished, returning: #{result}"
end

better_log 'outer block' do
  better_log 'some little block' do
    better_log 'teeny-tiny block' do
      'lOtS oF lOVe'.downcase
    end
    7 * 3 * 2
  end

  better_log 'yet another block' do
    '!doof naidnI evol I'.reverse
  end
  '0' == "0"
end






# def do_self_importantly some_proc
#   puts "Everybody just HOLD ON! I'm doing something..."
#   some_proc.call
#   puts "OK everyone, I'm done. As you were."
# end
#
# say_hello = Proc.new do
#   puts 'hello'
# end
#
# say_goodbye = Proc.new do
#   puts 'goodbye'
# end
#
# do_self_importantly say_hello
# do_self_importantly say_goodbye

# Output:
# Everybody just HOLD ON! I'm doing something...
# hello
# OK everyone, I'm done. As you were.
# Everybody just HOLD ON! I'm doing something...
# goodbye
# OK everyone, I'm done. As you were.
