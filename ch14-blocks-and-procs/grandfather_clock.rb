def grandfather_clock &block
  hour = Time.new.hour
  if hour >= 13
  	hour = hour - 12
  end
  hour.times {
  	block.call
  }
end

log "dong" do
	puts "DONG!"
end