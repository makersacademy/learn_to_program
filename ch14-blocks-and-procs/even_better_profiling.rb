def profile block_description, &block

  profile_active = false

  if profile_active
    starttime = Time.new
      block.call
    endtime = Time.new
    puts "Takes #{endtime - starttime} seconds to run"
  else
    block.call
  end

end
