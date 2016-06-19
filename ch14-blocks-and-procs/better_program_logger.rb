$logger_indent = 0

def log(desc, &block)
  indent = ' ' * $logger_indent

  puts "#{indent} Beginning #{desc.inspect}..."
  $logger_indent += 1
  result = block.call
  $logger_indent -= 1
  puts "#{indent} ...#{desc.inspect} finished, returning: #{result}"
end

log 'outer block' do
  log 'some little block' do
    log 'teeny-tiny block' do
      'lOtS oF lOVe'.downcase
    end

    7 * 3 * 2
  end

  log 'yet another block' do
    '!doof naidnI evol I'.reverse
  end

  '0' == "0"
end
