def grandfather_clock &block
  hour = Time.new.hour
  case
    when hour >= 13
    hour = hour - 12
    when hour == 0
    hour = 12
  end
end
  hour.times do
    block.call
  end

  grandfather_clock do
    puts 'DONG!'
  end
