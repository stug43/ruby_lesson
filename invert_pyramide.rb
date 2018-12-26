puts "Salut, et bienvenue dans 'ma super pyramide complète' ! Combien d'étages voulez vous ?"
print ">"
nb_etages = gets.chomp.to_i
i = nb_etages
while i >= 0 do
        k = 0
        while k <= (nb_etages*2-1) do
                if k<=(nb_etages-i)||k>=(nb_etages+i)
                        print " "
                else
                        print "#"
                end
                k += 1
        end
        print "\n"
        i -= 1
end
