require_relative "person_class"

def query_check
	query = gets.chomp
	while query != "yes" && query != "no"
		puts "Sorry, that is not a valid response.  Please enter 'yes' or 'no'"
		query = gets.chomp
		query
	end
end

def allergy_entry
	loop do
		allergy = gets.chomp
		puts "You told me you had an allergy, I won't take silence for an answer!"
	break if gets.chomp != nil
	allergy
	end
end

def food_entry
	loop do

	end
end

puts "Hello person, what is your name?"
name = gets.chomp

person = Person.new(name)

puts "Greetings #{person.name}, I have a few questions for you..."
puts "First of all, do you have any food allergies? (yes, no)"

if query_check == "yes"
	puts "Wonderful, could you please type in one of your allergies?"
	loop do 
		person.add_allergy(allergy_entry)
		puts "Thank you.  Do you have any additional allergies?"
		puts "Your current food allergies: #{person.allergies.join(", ")}"
		break if query_check == "no"
	end
end

puts "Thank you for your cooperation.  It is appreciated."
puts "Now, would you like to eat something?"
if query_check == "no"
		puts "That is not possible, you must be lying.  I don't tolaerate liars.  Please leave."
else
	puts "Great!  What would you like to eat?"
	food = gets.chomp
end
