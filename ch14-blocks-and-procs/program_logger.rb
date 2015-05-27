# /usr/bin/env ruby

def log description, &block
	puts "Starting " + description + " ..."
	returning = block.call
	puts '..."' + description + '" finished, returning: ' + returning.to_s
end

log "outer block" do
  log "some little block" do
    (40 + 80) / 15
  end

  log "yet another block" do
    "I like Thai food!".upcase
  end
  "This is the end"
end
