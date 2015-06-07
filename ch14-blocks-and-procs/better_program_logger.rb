$logger_depth =0
def log desc, &block
  indent = ' '*$logger_depth
  puts indent + 'Beginning "' + desc + '"...'
  $logger_depth+=1
  result = block.call
  puts indent + '..."' + desc + '" finished, returning: ' + "\n" + indent + result.to_s
end

log 'outer block' do
  log 'some little block' do
    log 'teeny-tiny block' do
      "LOTS OF LOVE".downcase
    end
    6*7
  end

  log 'yet another block' do
    'I love Indian food!'
  end

  5 == 5
end



