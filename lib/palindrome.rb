class Palindrome
 def initialize (phrase)
   @phrase = phrase
 end
 def palindrome? ()
   split_phrase = @phrase.split("")
   reversed_array = []
   split_phrase.each do |letter|
     reversed_array.unshift(letter)
   end
   if split_phrase == reversed_array
     true
   else
     false
   end
 end
end
