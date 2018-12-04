def invert(baba)
	i=0
	while i<baba.length
		baba[i] *= -1
		i+=1
	end
	print baba
end

puts "Ce programme demande de rentrer un à un des entiers dans une liste,
et passe cette liste en argument d'une fonction qui renvoie l'opposé de chaque nombre."
usr_array=[]
puts "Entrez chaque valeur et terminez par '.' ."
print">"
current='k'
while current != '.'
	current = gets.chomp
	if current != '.'
		usr_array<<current.to_i
	end
end

invert(usr_array)
