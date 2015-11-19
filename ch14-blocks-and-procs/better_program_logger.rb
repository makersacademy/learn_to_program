$depth_track = 0
def better_log desc, &block
  indent = " "*$depth_track
  puts "#{indent}Beginning #{desc.inspect}..."
  $depth_track = $depth_track + 1
  output = block[]
  $depth_track = $depth_track - 1
  puts "#{indent}...#{desc.inspect} finished, returning: #{output}"
end