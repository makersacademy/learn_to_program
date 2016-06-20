
$logger_depth = 0

def log desc, &block
   # your code here
  prefix = ' '*$logger_depth
  puts prefix + 'Beginning "' + desc + '"...' 
  $logger_depth = $logger_depth + 1
  result = block.call
  $logger_depth = $logger_depth - 1

  puts prefix + '..."' + desc + '" finished, returning: ' + result.to_s 
end

log 'outer block' do
  log 'inner block' do
    log 'inner inner block' do 
      'DONE HERE...'.downcase
    end
    7*3*2
  end
  log 'yet another block' do 
    "now I really am done (ish) with 'learn to program' ".upcase
end

'0' == "0" 
end