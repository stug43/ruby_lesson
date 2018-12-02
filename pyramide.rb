puts "Salut, et bienvenue dans 'ma super pyramide v2' ! Combien d'étages voulez vous ?"
print ">"
nb_etages = gets.chomp.to_i
i = 1
while i <= nb_etages do
	k = 0
	while nb_etages-i>k do
		print " "
		k += 1
	end
	z=0
	while z < i do
		print"#"
		z += 1
	end
	print"\n"
	i += 1
end

