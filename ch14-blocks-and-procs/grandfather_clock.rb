def grandfather_clock(block)
   (Time.new.hour % 12).times { block.call }
end

action = Proc.new { puts 'DONG!' }

grandfather_clock(action)

