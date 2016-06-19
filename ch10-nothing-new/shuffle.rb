
def shuffle unshuffled
    shuffled = unshuffled.sort_by{rand}
end

#or
=begin
def shuffle unshuffled
    shuffled = unshuffled.shuffle
end
=end
