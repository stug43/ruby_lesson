puts "Compte le nombre de valeurs présentes dans une liste.
Pour rentrer les valeurs dans la liste entrez les une à une et terminez par '.'"
print ">"
usr_array =[]
current='k'
while current != '.'
	current=gets.chomp
	if current!='.'
		if current == ""
			usr_array<<nil
		else
			usr_array<<current
		end
	end
end
k = 0
i = 0
while i < usr_array.length
	if !!usr_array[i] != false
		k += 1
	end
	i += 1
end
puts k
