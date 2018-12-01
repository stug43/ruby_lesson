puts "Donne moi ton prénom!"
print ">"
user_firstname = gets.chomp
puts "Ton nom maintenant!"
print ">"
user_name = gets.chomp
puts "Bonjour, #{user_firstname + " " + user_name}!"
