def shuffle arr
  recursive arr, []
end

def recursive unshuffled, shuffled
  while unshuffled.length > shuffled.length
    temp = unshuffled.sample
    unless shuffled.include? temp
        shuffled << temp
    end
  end
  shuffled
end
