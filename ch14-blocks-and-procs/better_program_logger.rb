$INDENT = 0

def better_log desc, &block
    indent = " "*$INDENT
    puts "#{indent}Beginning \"#{desc}\"..."
    $INDENT += 1
    result = yield
    $INDENT -= 1
    puts "#{indent}...\"#{desc}\" finished, returning: #{result}"
  end

  a_proc = Proc.new {
      #$INDENT +=1
      better_log "some little block" do
        #$INDENT += 1
        better_log "teeny-tiny block" do
          "lots of love"
        end
        #$INDENT -= 1
      42
      end
      #$INDENT += 1
      better_log "yet another block" do
        #$INDENT += 1
        "I love Indian food!"
      end
      #$INDENT = 0
      false
  }

better_log "outer block", &a_proc
