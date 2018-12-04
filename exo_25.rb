def tronk(baba)
	puts baba[1..((baba.length)-2)]
	return baba
end
puts"Entrez une chaîne de caractères à laquelle sera déduite le premier caractère ainsi que le dernier"
usr_str = gets.chomp
tronk(usr_str)
