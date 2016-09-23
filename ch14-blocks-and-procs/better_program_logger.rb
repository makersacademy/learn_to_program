=begin
Beginning "outer block"... 
    Beginning "some little block"... 
        Beginning "teeny-tiny block"... 
        ..."teeny-tiny block" finished, returning: 
        lots of love 
    ..."some little block" finished, returning: 
    42 
    Beginning "yet another block"... 
    ..."yet another block" finished, returning: 
    I love Indian food! 
..."outer block" finished, returning: 
true

=end
$nesting_depth = 0
def log desc, &block
  $nesting_depth.times {print "  "}
  puts "Beginning \"#{desc}\"..."
  $nesting_depth += 1
  called = block.call
  $nesting_depth -= 1
  $nesting_depth.times {print "  "}
  puts "...\"#{desc}\" finished, returning: "
  $nesting_depth.times {print "  "}
  puts called
  false
end

log "outer block" do
    log "some little block" do
        log "block a 3rd level down" do
            str = ""
            if rand(2) == 1
                str +=  "This is a great day!!! " 
            end 
            if rand(3) == 1
                str += "Correction: not such a great day afterall!!!" if str != ""
            end
            if str == "" 
                str = "No comment on the day!!!"
            end
            str
        end
        time = Time.now
        "The time 5 hours ago was #{time - (5*60*60)}"
    end
    
    log "yet another block" do
        "Thai food is my favourite!!!"
    end
    false
end      