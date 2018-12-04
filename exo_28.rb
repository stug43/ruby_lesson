usr_array = []
current=4
puts "Entrez un à un les nombre à additionner et terminez par '.' .\n
Le programme omettra l'addition des extrêmes."
while current != '.' do
	current = gets.chomp
	if current == '.'
		break
	end
	usr_array << current.to_i
end
sum=0
i=0
while i < usr_array.length do
	if (usr_array[i]!=usr_array.max)&&(usr_array[i]!=usr_array.min) 
		sum += usr_array[i]
	end
	i += 1
end
puts sum
