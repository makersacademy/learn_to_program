=begin
$nest_depth = 0

def log(desc, &block)
    $nest_depth += 1
    puts (("  " * $nest_depth) + "Starting #{desc}")
    return_val = block.call
    puts (("  " * $nest_depth) + "#{desc.capitalize} has ended returning #{return_val}")
    $nest_depth -= 1
end



log("outer block") do 
    log("inner block") do 
        log("block inside inner block")do
            "yezzir"
        end
        5
    end 

    log("2nd inner block") do
       "I like thai food"
    end
    
    false
end
=end
$logger_depth = 0

def better_log desc, &block
  prefix = ' '*$logger_depth

  puts prefix + 'Beginning "' + desc + '"...'

  $logger_depth = $logger_depth + 1
  
  result = block.call

  $logger_depth = $logger_depth - 1
  puts prefix + '..."' + desc + '" finished, returning: ' + result.to_s
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
