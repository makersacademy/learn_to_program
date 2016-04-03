def log desc, &block
  puts 'Beginning ' + desc + '...' #"something"
call = block.call

  puts '...' + desc + ' finished, returning: ' + call.to_s

end

log 'outer block' do
  log 'some little block' do
    2 + 2 + 1
  end

log 'yet another block' do
  puts 'I like Thai food!'
end

'0' == 0
end


#some other block do - puts - end


