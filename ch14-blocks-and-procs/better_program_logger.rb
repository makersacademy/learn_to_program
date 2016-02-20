


$nesting_depth = 0
def better_log desc, &block
  space = ' '*$nesting_depth
  start_message = 'Beginning "' + desc + '"...'
  end_message = '..."'+ desc + '" finished, returning: '
  puts space+start_message
  $nesting_depth += 1
  result= block.call
  $nesting_depth -= 1
  puts space+end_message+result.to_s
end

better_log "Testlog1" do    
    better_log "testlog2" do
     "Yes!"
    end
    "Finally testlog1"
  end



=begin
$nesting_depth = 0
def better_log desc, &block
  start_message = "Beginning #{desc}"
  end_message = "#{desc} finished, returning:"
  puts start_message.rjust($nesting_depth+(start_message.length))
  $nesting_depth += 1
  result= block.call
  $nesting_depth -= 1
  puts end_message.rjust($nesting_depth+(end_message.length))
  puts result.rjust(result.to_s.length+$nesting_depth)
end

better_log "Testlog1" do    
    better_log "testlog2" do
     "Yes!"
    end
    "Finally testlog1"
  end
=end