number_of_hours_worked_per_day = 10
number_of_days_worked_per_week = 5
number_of_weeks_in_THP = 11

puts "Travail : #{number_of_hours_worked_per_day * number_of_days_worked_per_week * number_of_weeks_in_THP}"

puts "Et en minutes ça fait : #{number_of_minutes_in_an_hour * number_of_hours_worked_per_day * number_of_days_worked_per_week * number_of_weeks_in_THP}"

#la variable number_of_minutes_in_an_hour n'est pas définie
#et ne peut par conséquent pas être utilisée car la machine ne sait
#pas à quelle adresse chercher sa valeur
#Le programme n'est donc pas executé et renvoie un message d'erreur
#(undefined local variable or method for main:Object)
