def shuffle arr
  recursive_shuffle arr, []
end

def recursive_shuffle unshuffled, shuffled
  if unshuffled.length <= 0
    return shuffled
  end

  still_unshuffled = []
  unshuffled.each { |object|

    if rand < 0.5
      still_unshuffled.push object

    else
      shuffled_word = object
      shuffled.push shuffled_word
    end
       }

  recursive_shuffle still_unshuffled, shuffled
end