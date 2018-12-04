def repeatStr(nbr,theString)
	newString = ""
	nbr.times do 
		newString =+ theString
	print newString
	end
	return newString
end
puts"Entrez la chaîne de caractères à répéter."
user_str = gets.chomp
puts "Entrez le nombre de fois que vous voulez voir cette chaîne se répéter."
user_nbr = gets.chomp.to_i
repeatStr(user_nbr,user_str)
