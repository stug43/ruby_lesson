puts "Quelle année es-tu né ?"
print ">"
birthyear = gets.chomp.to_i
i=birthyear
while i <= 2017 do
	puts "#{i} : #{i - birthyear} années"
	i+=1
end
