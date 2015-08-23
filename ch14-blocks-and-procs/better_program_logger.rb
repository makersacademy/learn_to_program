#!/usr/bin/env ruby

$LOG_TIMES=0

def log desc, &block
  $LOG_TIMES=$LOG_TIMES+1
  puts (" "*($LOG_TIMES-1)) + "Beginning \"#{desc}\"..."
  value=block.call
  puts (" "*($LOG_TIMES-1)) + "...\"#{desc}\" finished, returning: #{value}"
  $LOG_TIMES=$LOG_TIMES-1
end


log 'test' do
  3
  log 'test2' do
    4
  end
end
