$logger_depth = 0
def better_log desc, &block
  start = " "*$logger_depth
  puts "#{start}Beginning \"#{desc}\""
  $logger_depth += 1
  result = block[]
  $logger_depth -= 1
  puts "#{start}...\"#{desc}\" finished returning: #{result}"
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