def program_log desc, &block
  puts "Beginning \"#{desc}\"..."
  result = block[]
  puts "...\"#{desc}\" finished, returning: #{result}"
end

log "outer block" do
	log "some little block" do
		((100/4)**0.5).to_i
	end

	log "yet another block" do
		"...I.. ........l...i.k.e. .T.h.a.i. ..f.oo..d.!....".gsub(".", "")
	end

	true && false
end