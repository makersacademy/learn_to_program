=begin
def do_self_importantly some_proc
puts "Everybody just HOLD ON! I'm doing something..."
some_proc.call
puts "OK everyone, I'm done. As you were."
end
=end

def program_log desc, &block
  # your code here 
  puts 'Beginning "' + desc + '"...'
  result = block.call
  puts '..."' + desc + '" finished, returning: ' + result.to_s
end


