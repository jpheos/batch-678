require 'awesome_print'

# def acronymize(str)
#   letters = []
#   words = str.split
#   for word in words
#   letters << word[0]
#   end
#   letters.join.upcase
# end

def acronymize(str)
  letters = ""
  words = str.split
  for word in words
  letters << word[0].upcase
  end
  letters
end

#   choper la première lettre d un mot


# "WHAT THE FUCK"
# letters = []
# words = ["WHAT", "THE" ,"FUCK"]

# boucle sur le tableau
#   word
#   on choppe la premiere lettre
#   on ajoute la lettre au tableau letters


# ["W", "T", "F"]
#   on join le tableau
# "WTF"


# ap acronymize("WHAT THE FUCK")
# puts "\n\n\n------------------------------\n\n\n"
# ap acronymize("AWAY FROM KEYBOARD")
