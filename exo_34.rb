def number_to_string(k)
	puts "#{k.to_s}, de type #{k.to_s.class}"
end

puts "Entrez un nombre, il sera converti en chaîne de caractères."
print ">"
usr_number = gets.chomp.to_f
number_to_string(usr_number)
