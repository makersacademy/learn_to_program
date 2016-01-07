def program_log desc, &block
  puts 'Beginning "' + desc + '"...'
    result = block.call
  puts '..."' + desc + '" finished, returning: ' + result.to_s
end

program_log 'The long winter' do
  program_log 'Days til Christmas' do
    y = Time.new.year
    (((Time.new(y,12,25) - Time.new))/60/60/24).to_i
  end
  program_log 'Excitement Level' do
    y = Time.new.year
    dtc = (((Time.new(y,12,25) - Time.new))/60/60/24).to_i
    "#{100 - dtc}%"
  end
  ":("
end
