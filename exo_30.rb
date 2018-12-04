puts "Entrez des nombres un à un et terminez par '.' .
Ce programme reverra une liste de deux élements; le premier
sera la somme des nombres positifs et le second la somme des nombres négatifs."
usr_array  = []
current = 'k'
while current != '.'
	current = gets.chomp
	if current != '.'
		usr_array<<current.to_i
	end
end
i=0
pos_sum=0
neg_sum=0
while i<usr_array.length
	if usr_array[i]<0
		neg_sum += usr_array[i]
	else if usr_array[i]>0
		pos_sum += usr_array[i]
	end
	end
	i += 1
end

print usr_array
print "\n"
final_array=[pos_sum,neg_sum]
print final_array

