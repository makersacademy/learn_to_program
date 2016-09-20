$how_deep = 0

#upgrade = Proc.new do
#  $how_deep += 1
#end

#downgrade = Proc.new do
#  $how_deep -= 1
#end

def log desc, &block
  spacing = ' '*$how_deep
  puts spacing + "Beginning \"#{desc}\"..."
  $how_deep += 1
  output = block.call
  $how_deep -= 1
  puts  spacing + "...\"#{desc}\" finished, returning: #{output}"
  #puts  ' '*$how_deep + output.to_s
end

log 'outer block' do
  #upgrade.call
  log 'some little block' do
    #upgrade.call
    log 'teeny-tiny block' do
      'lots of love'
    end
    #downgrade.call
    42
  end

  log 'yet another block' do
    'I love Indian food!'
  end

  #downgrade.call

  true
end
