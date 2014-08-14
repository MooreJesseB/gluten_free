class Person

	attr_reader :name, :stomach, :allergies

	def initialize(name)
		@name = name
		@stomach = []
		@allergies = []
	end

	def add_allergy(allergy)
		@allergies.push(allergy)
		puts "You now have an allergy to #{allergy}"
		puts "You are now have food allergies to the following: #{@allergies.join(", ")}"
	end

	def eat_foods(foods)
		foods.each do |food|
			unless @allergies.include? food
				@stomach.push(food)
				puts "You have just ingested a moderate quantity of #{food}"
				puts "It is now in your stomach."
				puts "The contents of your stomach currently are: #{@stomach.join(", ")}"
			else
				puts "Allergy Error"
				puts "You have had a severe allergic reaction.  Your stomach is now empty and it's contents are spread out in front of you:"
				puts @stomach.join(", ")
				@stomach = []
			end
		end
	end
end