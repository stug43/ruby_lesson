class Personne
  attr_accessor :nom, :points_de_vie, :en_vie

  def initialize(nom)
    @nom = nom
    @points_de_vie = 100
    @en_vie = true
  end

  def info
    # A faire:
    # - Renvoie le nom et les points de vie si la personne est en vie
    # - Renvoie le nom et "vaincu" si la personne a été vaincue
	if en_vie == true
		print "\n\n#{nom} possède #{points_de_vie} points de vie.\n"
	else
		print "\n\n#{nom} a été vaincu.\n"
	end
  end

  def attaque(personne)
    # A faire:
    # - Fait subir des dégats à la personne passée en paramètre
    # - Affiche ce qu'il s'est passé
	  puts "\n#{self.nom} attaque #{personne.nom}."
	personne.subit_attaque(degats)
	@degats_bonus = 0
  end

  def subit_attaque(degats_recus)
    # A faire:
    # - Réduit les points de vie en fonction des dégats reçus
    # - Affiche ce qu'il s'est passé
    # - Détermine si la personne est toujours en_vie ou non
	self.points_de_vie -= degats_recus
	puts "\n#{self.nom} perd #{degats_recus} points de vie suite à cette attaque."
	if self.points_de_vie <= 0
		self.en_vie = false
		puts "#{self.nom} succombe à ses blessures."
	end
  end
end

class Joueur < Personne
  attr_accessor :degats_bonus

  def initialize(nom)
    # Par défaut le joueur n'a pas de dégats bonus
    @degats_bonus = 0

    # Appelle le "initialize" de la classe mère (Personne)
    super(nom)
  end

  def degats
    # A faire:
    # - Calculer les dégats
    # - Affiche ce qu'il s'est passé
	degats = 45 + degats_bonus
	puts "\nLa force de frappe de #{nom} est de #{degats}."
	return degats
  end

  def soin
    # A faire:
    # - Gagner de la vie
    # - Affiche ce qu'il s'est passé
	if points_de_vie > 75
		adjusted_heal = 100-self.points_de_vie
		self.points_de_vie += (100 - self.points_de_vie)
		puts "\n#{self.nom} gagne #{adjusted_heal} points de vie."
	else
		self.points_de_vie += 25
		puts "\n#{self.nom} gagne 25 points de vie."
	end
  end

  def ameliorer_degats
    # A faire:
    # - Augmenter les dégats bonus
    # - Affiche ce qu'il s'est passé
	self.degats_bonus += 20
	puts "\n#{self.nom} améliore ses dégats de 20."
  end
end

class Ennemi < Personne
  def degats
    # A faire:
    # - Calculer les dégats
	degats = 10
  end
end

class Jeu
  def self.actions_possibles(monde)
    puts "ACTIONS POSSIBLES :"

    puts "0 - Se soigner"
    puts "1 - Améliorer son attaque"

    # On commence à 2 car 0 et 1 sont réservés pour les actions
    # de soin et d'amélioration d'attaque
    i = 2
    monde.ennemis.each do |ennemi|
      puts "#{i} - Attaquer #{ennemi.info}"
      i = i + 1
    end
    puts "99 - Quitter"
  end

  def self.est_fini(joueur, monde)
    # A faire:
    # - Déterminer la condition de fin du jeu 
	if (monde.ennemis_en_vie == [])||(joueur.en_vie == false)
		return true
	end
  end
end

class Monde
  attr_accessor :ennemis

  def ennemis_en_vie
    # A faire:
    # - Ne retourner que les ennemis en vie
	ennemis.each do |ennemi|
		if ennemi.en_vie == false
			ennemis.delete(ennemi)
		end
	end
	return ennemis
  end
end

##############

# Initialisation du monde
monde = Monde.new

# Ajout des ennemis
monde.ennemis = [
  Ennemi.new("Balrog"),
  Ennemi.new("Goblin"),
  Ennemi.new("Squelette")
]

# Initialisation du joueur
joueur = Joueur.new("Jean-Michel Paladin")

# Message d'introduction. \n signifie "retour à la ligne"
puts "\n\nAinsi débutent les aventures de #{joueur.nom}\n\n"

# Boucle de jeu principale

k = 0

100.times do |tour|
  puts "\n------------------ Tour numéro #{tour} ------------------"

  # Affiche les différentes actions possibles
  Jeu.actions_possibles(monde)

  puts "\nEtat du héro: #{joueur.info}"

  puts "\nQUELLE ACTION FAIRE ?"
  # On range dans la variable "choix" ce que l'utilisateur renseigne
  choix = -1
  while ((choix.to_i<=0)&&(choix!='0'))||((choix.to_i>monde.ennemis_en_vie.size+1)&&(choix.to_i != 99))
  	choix = gets.chomp
	if ((choix.to_i<=0)&&(choix!='0'))||((choix.to_i>monde.ennemis_en_vie.size+1)&&(choix.to_i != 99))
		puts "\nChoisissez, S'IL VOUS PLAIT, une action possible."
	end
  end

  # En fonction du choix on appelle différentes méthodes sur le joueur
  if choix.to_i == 0
    joueur.soin
  elsif choix.to_i == 1
    joueur.ameliorer_degats
  elsif choix.to_i == 99
    # On quitte la boucle de jeu si on a choisi
    # 99 qui veut dire "quitter"
    break
  else
    # Choix - 2 car nous avons commencé à compter à partir de 2
    # car les choix 0 et 1 étaient réservés pour le soin et
    # l'amélioration d'attaque
    ennemi_a_attaquer = monde.ennemis[choix.to_i - 2]
    joueur.attaque(ennemi_a_attaquer)
  end
  puts "\nLES ENNEMIS RIPOSTENT !"
  # Pour tous les ennemis en vie ...
  monde.ennemis_en_vie.each do |ennemi|
    # ... le héro subit une attaque.
    ennemi.attaque(joueur)
  end

  puts "\nEtat du héro: #{joueur.info}"

  # Si le jeu est fini, on interompt la boucle
  break if Jeu.est_fini(joueur, monde)
  k += 1
end

puts "\nGame Over!\n"

# A faire:
# - Afficher le résultat de la partie
puts "\nPartie terminée en #{k} tours"


if joueur.en_vie
  puts "Vous avez gagné !"
else
  puts "Vous avez perdu !"
end




