# Goal: returning the first letters of words in a sentence string.

# PSEUDOCODE:
#  example: Very high frequency => VHF

def acronymize(sentence)
  # 1. Separate the sentence(string) into an array of words (use .split)
  words = sentence.split
  # 2. (create an empty array called acronym  to store letters)
  acronym = []
  # 3. Find the first letter of each word
  words.each do |word|
    # 1. Capitalize the word.
    capitalized_first_leter = word.capitalize[0]
    # 2. push into acronym
    acronym << capitalized_first_leter
  end
  # 6. Use join to return the letters as string.
  return acronym.join
end

# TDD
puts acronymize('Very high frequency')
puts acronymize('Very high frequency') == 'VHF'