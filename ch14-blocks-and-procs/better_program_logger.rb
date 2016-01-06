
$depth = 0

def better_log desc, &block
  spacing = ' '*$depth
  puts spacing + 'Beginning "' + desc + '"...'
    $depth = $depth + 1
    result = block.call
    $depth = $depth - 1
  puts spacing + '..."' + desc + '" finished, returning: ' + result.to_s
end

better_log 'The long winter' do
  better_log 'Days til Christmas' do
    better_log 'Christmas Elf' do
      "<|:)"
    end
    y = Time.new.year
    (((Time.new(y,12,25) - Time.new))/60/60/24).to_i
  end
  better_log 'Excitement Level' do
    y = Time.new.year
    dtc = (((Time.new(y,12,25) - Time.new))/60/60/24).to_i
    "#{100 - dtc}%"
  end
  ":("
end
