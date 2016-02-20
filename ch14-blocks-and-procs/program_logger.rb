def program_log desc, &block
  puts "Beginning \"#{desc}\"..."
  result = yield
  puts "...\"#{desc}\" finished, returning: #{result}"
end

a_proc = Proc.new {
    program_log "some little block" do
      "\n5"
    end
    program_log "yet another block" do
      "I like Thai food!"
    end
    false
}

program_log "outer block", &a_proc
