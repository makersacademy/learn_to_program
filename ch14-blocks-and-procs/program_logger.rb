def program_log desc, &block
  puts 'Beginning "' + desc + '"...'
  puts '..."' + desc + '" finished, returning: ' + block.call.to_s
end

program_log 'outer block' do
  program_log 'some little block' do
    1**1 + 2**2
  end
  program_log 'yet another block' do
  '!doof iahT ekil I'.reverse
  end
end


# Example:
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
