$indentation = 0

def log desc, &block
  puts "  "*$indentation + "Beginning #{$desc}..."
  $indentation += 1
  result = block.call
  $indentation -= 1
  puts " "*$indentation + "...#{$desc} finished, returning: #{result}"
end

log "outer block" do
  log 'some little block' do
    log "teeny-tiny block" do
      "lots of love"
    end
    42
  end
  log 'yet another block' do
    "I love Indian food"
  end
  true
end
