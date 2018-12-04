puts "Entrez le nombre à tester"
print ">"
number_tst = gets.chomp.to_i
if (number_tst%2)==0
	puts "Ce nombre est pair."
else
	puts"Ce nombre est impair."
end

