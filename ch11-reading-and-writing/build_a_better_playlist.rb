# This is the exercise with the most confusing task description. After studying
# CP's solution, I conclude this is what he wants, using the analogy of a card
# deck:
# 1) sort the deck
# 2) shuffle them, i.e. odds + evens
# 3) cut the deck
#
# This solution passes the test. Finally.

def shuffle(filenames)
  filenames.select.with_index { | _, i| i.odd? } +
  filenames.select.with_index { | _, i| i.even? }
end

def cut(filenames)
  # doesn't need to be random, but let's be fancy in stead of boring
  # cut in half
  cutoff = rand(filenames.length)
  filenames[cutoff..-1] + filenames[0...cutoff]
end

def music_shuffle(filenames)
  cut(shuffle(filenames.sort))
end
