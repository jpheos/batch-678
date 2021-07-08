def acronymize_old(str)
  letters = ""
  words = str.split
  for word in words
  letters << word[0].upcase
  end
  letters
end

# "WHAT THE FUCK" => "WTF"

def acronymize(str)
  str.split.map { |word| word[0].upcase }.join
end

# "WHAT THE FUCK"
# words = ["WHAT", "THE" ,"FUCK"]

# boucle sur le tableau
#   word
#   on choppe la premiere lettre
#   on ajoute la lettre au tableau letters


# ["W", "T", "F"]
#   on join le tableau
# "WTF"
