usr_array = []
current=4
puts "Entrez un à un les nombre et terminez par '.' . Le programme affichera le plus petit."
while current != '.' do
	current = gets.chomp
	if current == '.'
		break
	end
	usr_array << current.to_i
end
smallest=usr_array[0]
i=0
while i <= (usr_array.length-2) do
	if smallest>usr_array[(i+1)]
		smallest = usr_array[(i+1)]
	end
	i += 1
end
puts "\n #{smallest}"
