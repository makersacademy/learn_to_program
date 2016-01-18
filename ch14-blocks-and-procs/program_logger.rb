$nest = 0
def program_log(description, &block)
  $nest += 1
  print "  "* ($nest - 1)
  puts 'Beginning "%s"...' % description
  retVal = block.call
  print "  "* ($nest - 1)
  puts'..."%s" finished, returning: ' % description + retVal.to_s
  $nest -= 1
end
