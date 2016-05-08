def grandfather_clock (&block)
    (Time.new.hour) < 13 ? (hour = Time.new.hour) : (hour = Time.new.hour - 12)
    hour.times(&block)
end


