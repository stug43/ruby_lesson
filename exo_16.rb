puts "Quel est votre âge ?"
print ">"
user_age = gets.chomp.to_i
i = user_age
until i <= 0 do
	puts "Il y a #{i} ans, tu avais #{user_age - i} ans."
	i -= 1
end
