$margin = 0

def better_log desc, &block
  indent = " "*$margin
  puts indent+'Beginning "'+desc+'"...'
  $margin+=1
  result = block.call
  $margin-=1
  puts indent+'..."'+desc+'" finished, returning: ' +result.to_s
end

better_log 'outer block' do
  better_log 'some little block' do
    10 / 2
  end

  better_log 'yet another block' do
    'I like Thai food!'
  end
  false
end
