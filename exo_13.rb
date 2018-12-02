puts "Entrez votre année de naissance."
print ">"
user_birthyear = gets.chomp.to_i
i = user_birthyear
while i <= 2018 do
  puts i
  i += 1
end
