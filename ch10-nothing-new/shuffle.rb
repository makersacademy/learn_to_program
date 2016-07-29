def shuffle array
  rec_shuffle array, []
end

def rec_shuffle unshuffled, shuffled
  while unshuffled.length != shuffled.length
    random_item = unshuffled.sample
    unless shuffled.include?(random_item) then shuffled << random_item end
    rec_shuffle unshuffled, shuffled
  end
  shuffled
end
