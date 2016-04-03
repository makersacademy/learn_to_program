$indent = 0
def log desc, &block
tab =  " " * $indent

puts tab + 'Beginning "' + desc + '"...'
  $indent = $indent +=1
  result = block.call
  $indent = $indent +=1
puts tab + '..."' + desc + '" finished, returning: ' + result.to_s
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