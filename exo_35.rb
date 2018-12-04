def double_char(baba)
	i=0
	new_string = ""
	while i<baba.length
		new_string += baba[i] * 2
		i += 1
	end
	puts new_string
end

puts "Entrez une chaîne de caractère pour voir ce que fait ce programme !"
print ">"
usr_str = gets.chomp
double_char(usr_str)

