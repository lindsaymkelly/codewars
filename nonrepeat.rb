# Write a function named firstNonRepeatingCharacter that takes a string input, and returns the first character that is not repeated anywhere in the string.

# For example, if given the input 'stress', the function should return 't', since the letter t only occurs once in the string, and occurs first in the string.

# As an added challenge, upper- and lowercase letters are considered the same character, but the function should return the correct case for the initial letter. For example, the input 'sTreSS' should return 'T'.

# If a string contains all repeating characters, it should return the empty string ("").

def  first_non_repeating_letter(s) 
  chars = []
  s.split(//).each do |character|
    if chars.include?(character)
      chars.delete(character)
    else
      chars << character 
    end
  end
  return chars[0] 
end

p first_non_repeating_letter('stress')

# def first_non_repeated_character(string):
#   chars = []
#   repeated = []
#   for character in string:
#     if character in chars:
#       chars.remove(character)
#       repeated.append(character)
#     else:
#       if not character in repeated:
#         chars.append(character)
#   if len(chars):
#     return chars[0]
#   else:
#     return False