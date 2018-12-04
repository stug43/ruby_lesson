def summation(k)
	i=1
	sum=0
	while i<=k
		sum += i
		i += 1
	end
	puts sum
end

puts "Entrez un entier naturel.
Cette fonction renverra la somme de tous les entiers naturels jusqu'au votre."
f = gets.chomp.to_i
summation(f)

