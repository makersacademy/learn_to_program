#better program logger
$logger_depth = 0 #global variable 

def log desc, &block
  prefix = ' '*$logger_depth

  puts prefix + 'Beginning "' + desc + '"...'

  $logger_depth = $logger_depth + 1
  
  result = block.call

  $logger_depth = $logger_depth - 1  #by using the formation similar to coding formation we can see in the output how deep we are. The deeper we are the more is the text being pushed to the center
  puts prefix + '..."' + desc + '" finished, returning: ' + result.to_s
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
