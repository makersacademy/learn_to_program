$logger_depth = 0

def better_log(desc, &block) #defining the method that accepts a string description and a block
  prefix = ' '*$logger_depth #adding some spaces for better viewing
  puts prefix + "Beginning \"" + desc + "\"..." #method body
  $logger_depth += 1 #add one dose of space before entering the block
  x = block.call # calling the passed in block from here we're in the block
  $logger_depth -= 1 #remove one dose of space after leaving the block
  puts prefix + "...\"" + desc + "\" finished, returning: " + x.to_s #block finished continue with method body
end

better_log "outer block" do #a block passed into a method and that passed into a method, well..okay
    better_log "some little block" do
        better_log "teeny-tiny block" do
            "lOtS oF lOVe".downcase
        end
    7 * 3 * 2
    end
    
    better_log "yet another block" do
    "!doof naidnI ekil I".reverse
    end
    
    "0" == 0
end