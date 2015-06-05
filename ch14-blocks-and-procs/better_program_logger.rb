$logger_depth = 0
def log description, &block
    prefix = '  '*$logger_depth
    puts prefix + "Beginning #{description.inspect}..."
    $logger_depth += 1
    result = block.call
    $logger_depth -= 1
    puts prefix + "...#{description.inspect} finished, returning:  #{result}"
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