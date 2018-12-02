puts "Salut, et bienvenue dans 'ma super pyramide' ! Combien d'étages voulez vous ?"
print ">"
nb_etages = gets.chomp.to_i
i = 1
while i <= nb_etages do
	k = 0
	while k < i do
		print "#"
		k += 1
	end
	print "\n"
	i += 1
end

