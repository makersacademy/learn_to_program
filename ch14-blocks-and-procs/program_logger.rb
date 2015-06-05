def log description, &block
    puts 'beginning "' + description + '"...'
    result = block.call
    puts '..."' + description + '"finished, returning: ' + result.to_s
end
log 'outer block' do
    log 'some little block' do
        1**1 + 2**2
    end
    
    log 'yet another block' do
        '!doof iahT ekil I'.reverse
    end
    '0' == 0
end