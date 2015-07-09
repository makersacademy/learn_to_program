$log_count = 0

def log desc, &block 
  $log_count += 1
  indent = " " * ($log_count -1) 
  puts "#{indent}Beginning \"#{desc}\"..."
  puts "#{indent}...\"#{desc}\" finished, returning: #{block.call}"
end

#=begin
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
#=end

