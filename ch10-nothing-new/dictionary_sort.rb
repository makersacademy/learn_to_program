def dictionary_sort arr
  recursive_sort arr, []
end

def recursive_sort unsorted, sorted

  # Take the end item of an array to start testing
  word_to_test = unsorted.pop

  # Placeholder array
  still_unsorted = []

  # Loop through the unsorted words
  unsorted.each do |unsorted_word|

    # Sort either 'word_to_test' or 'unsorted_word' into the still_unsorted array
    if unsorted_word.downcase < word_to_test.downcase
      # If the word_to_test is NOT first, pop it to one side
      still_unsorted.push word_to_test

      # ..and update word_to_test with the unsorted_word that IS first and continue
      # to compare it to the rest of the words in the array
      word_to_test = unsorted_word
    else
      # If the word_to_test IS first, pop the unsorted_word to one side instead
      still_unsorted.push unsorted_word
    end
  end

  # After the looping, the word_to_test *should* be the one that comes first, and
  # can be added to the sorted array
  sorted.push word_to_test

  # There's still a bunch of words that have been neglected. Sort these again as
  # long as there are words to sort
  recursive_sort still_unsorted, sorted if unsorted.length > 0

  # Returrrrrrn
  sorted
end

# p dictionary_sort ['jelly','apples','apple','Apple','wagonwheel','pizza','Pizza','doughnut','234','mushroom','gumdrop']
