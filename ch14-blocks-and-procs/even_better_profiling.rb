def profile(block_description, &block)
        run_me = true # bey default profile test will not run unless set to true

        if run_me == true
                start_time = Time.new # sets the time now
                block.call # call the block you will write after 'do' in the process to be tested
                duration = Time.new - start_time #gives the time from start to finish
                puts "#{block_description}: #{duration} seconds" # returns the name you gave the block in 'block description' - the first argument
        else
                block.call
        end
end