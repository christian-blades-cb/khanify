def c_khanify(word)
  lastvowelplace = word[0..-1].rindex /[aeiou]/ || word.size - 1
  morevowel = word[lastvowelplace] * 7
  word.insert(lastvowelplace, morevowel)
end
