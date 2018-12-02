puts "Bonjour, quel âge avez vous ?"
user_age = gets.chomp.to_i
puts "En 2017, vous aviez #{user_age-(Time.new.year - 2017)} ans."
