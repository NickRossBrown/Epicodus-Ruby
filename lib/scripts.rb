load 'palindrome.rb'

File.open('text.txt').each do |line|
  puts Palindrome.new(line.chomp()).palindrome?()
end
