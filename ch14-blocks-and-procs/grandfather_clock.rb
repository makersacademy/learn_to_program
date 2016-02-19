def grandfather_clock &block
  hours = if Time.new.hour > 12
              Time.new.hour - 12
            else
              Time.new.hour
            end
  hours.times{
    yield
  }
end

dong = Proc.new {
  puts "DONG!"
}

grandfather_clock &dong
