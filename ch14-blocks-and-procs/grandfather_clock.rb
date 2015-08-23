#!/usr/bin/env ruby

def grandfather_clock &block
  hour=Time.new.hour%12
  hour.times do
    block.call
  end
end
