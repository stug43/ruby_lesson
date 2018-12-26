puts "Ce programme donne le jour de la semaine d'une date entrée par l'utilisateur."
print "année >"
year = gets.chomp.to_i

month = 0
day = 0

while (month<1)||(month>12)
	print "mois >"
	month = gets.chomp.to_i
end

case month
when 1, 3, 5, 7, 8, 10, 12
	while (day<1)||(day>31)
		print "jour >"
		day = gets.chomp.to_i
	end
when 4, 6, 9, 11
	while (day<1)||(day>30)
		print "jour >"
		day = gets.chomp.to_i
	end
else
	if (year%100!=0&&year%4==0)||(year%400==0)
		while (day<1)||(day>29)
			print "jour >"
			day = gets.chomp.to_i
		end
	else
		while (day<1)||(day>28)
			print "jour >"
			day = gets.chomp.to_i
		end
	end
end

daylist = ["lundi", "mardi", "mercredi", "jeudi", "vendredi", "samedi", "dimanche"]

daynumber = 0

compteur = 0

while compteur < year
	if (compteur%100!=0&&compteur%4==0)||(compteur%400==0)
		daynumber += 366
	else
		daynumber += 365
	end
	compteur += 1
end

compteur = 0

while compteur < month
	case compteur
	when 1, 3, 5, 7, 8, 10, 12
		daynumber += 31
	when 4, 6, 9, 11
		daynumber += 30
	else
		if (compteur%100!=0&&compteur%4==0)||(compteur%400==0)
			daynumber += 29
		else
			daynumber += 28
		end
	end
	compteur += 1
end

daynumber += day

puts "Le #{if day < 10; "0" end}#{day}/#{if month <10; "0" end}#{month}/#{year} était un #{daylist[(daynumber+3)%7]} !"
