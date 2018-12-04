def rps()
	a=b=0
	while (a != 'scissors'&& a != 'Scissors' && a != 'rock' && a != 'Rock' && a != 'paper' && a != 'Paper')
		print "Player 1 >"
		a = gets.chomp
	end
        while (b != 'scissors'&& b != 'Scissors' && b != 'rock' && b != 'Rock' && b != 'paper' && b != 'Paper')
        	print "Player 2 >"
		b = gets.chomp
	end
	if (a=='scissors'&&b=='paper')||(a=='rock'&&b=='scissors')||(a=='paper'&&b=='rock')
		puts 'Joueur 1 gagne'
	elsif a==b
		puts "C'est un match nul"
	else
		puts "Joueur 2 gagne"
	end
end

puts "ROCK PAPER SCISSORS GAME. Rules are simple: rock beats scissors, paper
beats rock, and scissors beats paper. Let's play!"

rps()
