def t_khanify(word)
  stretch_index = word.rindex /[aeiou]/ 
  stretch_index = word.size - 1 if stretch_index == nil
  repeated_letter = word[stretch_index]
  7.times { word.insert(stretch_index, repeated_letter) }
  word
end
