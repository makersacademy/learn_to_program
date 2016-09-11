$logger_depth = 0

def program_log(desc, &block) #defining the method that accepts a string description and a block
  prefix = '  '*$logger_depth
  puts prefix + "Beginning \"" + desc + "\"..." #method body
  $logger_depth += 1
  x = block.call # calling the passed in block from here we're in the block
  $logger_depth -= 1
  puts prefix + "...\"" + desc + "\" finished, returning: " + x.to_s #block finished continue with method body
end

program_log "outer block" do #a block passed into a method and that passed into a method, well..okay
    program_log "some little block" do
        program_log "teeny-tiny block" do
            "lOtS oF lOVe".downcase
        end
    7 * 3 * 2
    end
    
    program_log "yet another block" do
    "!doof naidnI ekil I".reverse
    end
    
    "0" == 0
end