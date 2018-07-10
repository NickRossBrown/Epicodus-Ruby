load 'findandreplace.rb'

File.open("text.txt").each do |line|
  puts Words.new(line).replace()
end
