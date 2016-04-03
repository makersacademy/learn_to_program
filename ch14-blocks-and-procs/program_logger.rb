def log desc, &block
  # your code here



puts 'Beginning "' + desc + '"...'
  result = block.call
  puts '..."' + desc + '" finished, returning: ' + result.to_s





end
log 'outer block' do
  (15*19).to_s + "hello"
  log 'some little block' do
    1**1 + 2**2
  end
  (15*19).to_s + "hello" #need to put outer block to return here
  end