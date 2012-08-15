#!/usr/bin/env ruby

#-------------------------------
# Classe MegaGreeter
#-------------------------------
class MegaGreeter
	attr_accessor :names
	
	#Creation d'un objet
	def initialize(names="Wordl")
		@names=names
	end
	
	#Saluer tout le monde
	def say_hi
		if @names.nil?
			puts "..."
		elsif @names.respond_to?("each")
			#@names est une liste de nom
			@names.each do |name|
				puts "Hello #{name}"
			end
		else
			puts "Hello #{@names}!"
		end
	end
	
	#Dire au revoir a tout le monde
	def say_bye
		if @names.nil?
			puts "..."
		elsif @names.respond_to?("join")
			#grouper les differents nom de la liste par des virgules
			puts "Goodbye #{@names.join(", ")}. Come back soon"
		else
			puts "Goodbye #{@names}. Come back soon"
		end
	end
end

if __FILE__ == $0
	mg = MegaGreeter.new
	mg.say_hi
	mg.say_bye
	
	#Modifier le nom en Ibrahima
	mg.names="Ibrahima"
	mg.say_hi
	mg.say_bye
	
	#Changer le nom pour un tableau
	mg.names=["Modou", "Issa", "Ndiaga"]
	mg.say_hi
	mg.say_bye
	
	#Maintenant le nom n'est plus
	mg.names=nil
	mg.say_hi
	mg.say_bye
end