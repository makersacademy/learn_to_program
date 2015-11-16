
def grandfather_clock &block
  hour = Time.new.strftime("%I")
  hour = hour.to_i

  hour.times(&block)
end

grandfather_clock { puts 'DONG!' }
