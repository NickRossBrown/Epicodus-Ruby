class Palindrome
 def initialize (phrase)
   @phrase = phrase
 end
 def palindrome? ()
   if @phrase == @phrase.reverse()
     true
   else
     false
   end
 end
end
