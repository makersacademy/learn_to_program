def grandfather_clock &block
  ((Time.new.hour - 1) % 12 + 1).times do block.call end
end

grandfather_clock do puts 'DONG!' end
