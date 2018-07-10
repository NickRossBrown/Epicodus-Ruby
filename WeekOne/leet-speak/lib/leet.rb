# class String
#   def leet
#     self.tr('e, I, o, s','3, 1, 0, z')
#   end
# end
# def leet
#   new_array = []
#   string.split(" "). each do |word|
#     word_array = []
#     counter = 0
#     word.split("").each do |word_letter|
#       if (word_letter == "e")
#         word_array.push("3")
#       elsif (word_letter == "o")
#         word_array.push("0")
#       elsif (word_letter === "I")
#         word_array.push("1")
#       elsif (word_letter === "s") & !(counter === 0)
#         word_array.push("z")
#       else
#         word_array.push(word_letter)
#       end
#       counter += 1
#     end
#     word_array.join("")
#     new_array.push(word_array)
#   end
#   new_array.join("")
# end
def leetspeak(string)
  string.tr('e, I, o, s','3, 1, 0, z')
end
