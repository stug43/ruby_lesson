puts "Quel est votre âge ?"
print ">"
user_age = gets.chomp.to_i
i = user_age
	while i > 0  do
		if (user_age - i) != i
        		puts "Il y a #{i} ans, tu avais #{user_age - i} ans."
		else 
		       puts "Il y a #{i} ans, tu avais la moitié de l'âge de tu as aujourd'hui"
		end
		i -= 1		
end
