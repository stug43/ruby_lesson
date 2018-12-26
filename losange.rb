puts "Salut, crée des losanges avec moi ! C'est facile, il te suffit de rentrer le nombre d'etages que tu veux."
print ">"
nb_etages = gets.chomp.to_i

def losange(j)
	if j%2==1
		l = j-1
	else
		l=j
	end
	i = 1
	while i <= (l/2) do
        	k = 0
        	while k <= (l-1) do
                	if k<=(l/2-i)||k>=(l/2+i)
                        	print " "
                	else
                        	print "#"
                	end
                	k += 1
        	end
        	print "\n"
        	i += 1
	end
	
	if (j%2)==1
		j.times do
			print "#"
		end
	print "\n"
	end

	i = l/2
	while i >= 0 do
        	k = 0
        	while k <= (l-1) do
                	if k<=(l/2-i)||k>=(l/2+i)
                        	print " "
                	else
                        	print "#"
                	end
                	k += 1
        	end
        	print "\n"
        	i -= 1
	end
end

losange (nb_etages)
