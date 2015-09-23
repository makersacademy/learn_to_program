
def shuffle arr
  rec_shuffle arr, []
end

def rec_shuffle unshuffled, shuffled
  seed = rand(unshuffled.length)
  puts 'SEED: ' + seed.to_s
  if (seed.is_a? Integer) == false
    return
  else
    selected = 'nothing_selected'
    unshuffled.each do |x|
      unshuffled.index(x) == seed ? selected = unshuffled[seed] : selected = selected
      end
    shuffled << selected
    unshuffled = (unshuffled - [selected])
    rec_shuffle unshuffled, shuffled
  end
  return shuffled
end