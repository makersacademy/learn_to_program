# This programme will output "Dong" once for
# each hour that has passed today

def grandfather_clock &block
  # first calculate how many hours have passed by now
  hours_passed = Time.new.hour

  # convert hours_passed to ordinary clock-face numbers
  if hours_passed > 12
    hours_passed -= 12
  end

  hours_passed.times(&block)
end

grandfather_clock {puts 'Dong'}
