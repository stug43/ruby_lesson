puts "Entrez un entier naturel"
print ">"
n = gets.chomp.to_i
while n >= 0 do
  puts n
  n -= 1
end
