# One billion seconds! Find out the exact second you were born 
# (if you can). Figure out when you will turn (or perhaps when 
# you did turn) one billion seconds old. Then go mark your calendar.

puts(Time.gm(1989, 9, 3) + 10**9)

# year, month, day, hour, minute, second

# I have no idea when exactly I was born apart from day... 

# For my own Chris Pine entertainment:
# In all fairness, Ruby did (and still does) provide other 
# classes, such as Date and DateTime, for handling just about 
# any point in history. But these are such a pain to use compared 
# to Time that I don’t feel like figuring them out myself, much 
# less teaching them to you. What’s the difference between civil 
# time and commercial time? I have no idea. Julian calendar vs. 
# Gregorian calendar? Italian vs. English reform dates? I’m sure 
# there’s a Perfectly Good Reason for all that complexity. (In 
# case you weren’t sitting across from me as I typed that, I was 
# rolling my eyes.) But anyway, that’s fixed in newer versions
# of Ruby (1.9 and up).