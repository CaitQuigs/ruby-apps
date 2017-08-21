# A gym has hired you to solve a problem. Most of their clients are fairly new to weightlifting and don’t know what to put on the barbell for a particular weight. The weights they have made available are in 45, 35, 25, 15, 10 and 5 lbs. increments. Build them a Ruby application that will tell them, for a given weight, what plates to put on each side of the bar. Bear in mind that the bar itself weighs 45 lbs.

# For example, if they want to load 225 lbs. on the bar, they will need to put two 45 lbs. plates on each side of the bar. 45x4 = 180 lbs. Plus 45 lbs. for the barbell itself equals a total of 225 lbs. 

def main_menu
	puts "Welcome to Weightlifting Helper! Please enter the amount of weight in pounds that you want to put on your barbell.  Please make sure that the amount is higher than 45 lbs, as that is the weight of the barbell itself."
	total = gets.chomp
	if total.to_i < 45
		puts "Please enter a weight higher than 45 lbs, as that is the weight of the barbell."
		main_menu
	elsif total.to_i == 45
		puts "The weight of the barbell is 45 lbs, so you do not need to add any plates to the barbell."
		restart_menu
	elsif total.to_i > 45
		@plates = total.to_i - 45
		det_weights(@plates)
		restart_menu
	else
		puts "Invalid Entry. Please enter a valid weight in numbers higher than 45 lbs."
		main_menu
	end
end

def restart_menu
	puts "Would you like to enter another weight? (Y/n)"
	response = gets.chomp.downcase
	if response == "y"
		main_menu
	elsif response == "n"
		"Thank you for using Weightlifting Helper! Have a great day!"
	else
		"Invalid Entry. Please enter 'y' for yes or 'n' for no."
	end
end

def det_weights(plates)
	lb_45(@plates)
	lb_35(@plates)
	lb_25(@plates)
	lb_15(@plates)
	lb_10(@plates)
	lb_05(@plates)
	report(@num_45, @num_35, @num_25, @num_15, @num_10, @num_05, @plates)
end

def lb_45(weight)
	if weight >= 90
		@num_45 = weight / 90
		@plates = weight%90
	else
		@num_45 = 0
	end
end

def lb_35(weight)
	if weight >= 70
		@num_35 = weight / 70
		@plates = weight%70
	else 
		@num_35 = 0
	end
end

def lb_25(weight)
	if weight >= 50
		@num_25 = weight / 50
		@plates = weight%50
	else
		@num_25 = 0
	end
end

def lb_15(weight)
	if weight >= 30
		@num_15 = weight / 30
		@plates = weight%30
	else
		@num_15 = 0
	end
end

def lb_10(weight)
	if weight >= 20
		@num_10 = weight / 20
		@plates = weight%20
	else
		@num_10 = 0
	end
end

def lb_05(weight)
	if weight >= 10
		@num_05 = weight / 10
		@plates = weight%10
	else
		@num_05 = 0
	end
end

def report(num_45, num_35, num_25, num_15, num_10, num_05, plates)
	if num_45 > 1
		puts "You should put (#{num_45}) 45 lb plates on each side of the barbell."
	elsif num_45 == 1
		puts "You should put (#{num_45}) 45 lb plate on each side of the barbell."
	end
	
	if num_35 > 1
		puts "You should put (#{num_35}) 35 lb plates on each side of the barbell."
	elsif num_35 == 1
		puts "You should put (#{num_35}) 35 lb plate on each side of the barbell."
	end

	if num_25 > 1
		puts "You should put (#{num_25}) 25 lb plates on each side of the barbell."
	elsif num_25 == 1
		puts "You should put (#{num_25}) 25 lb plate on each side of the barbell."
	end

	if num_15 > 1
		puts "You should put (#{num_15}) 15 lb plates on each side of the barbell."
	elsif num_15 == 1
		puts "You should put (#{num_15}) 15 lb plate on each side of the barbell."
	end

	if num_10 > 1
		puts "You should put (#{num_10}) 10 lb plates on each side of the barbell."
	elsif num_10 == 1
		puts "You should put (#{num_10}) 10 lb plate on each side of the barbell."
	end

	if num_05 > 1
		puts "You should put (#{num_05}) 5 lb plates on each side of the barbell."
	elsif num_05 = 1
		puts "You should put (#{num_05}) 5 lb plate on each side of the barbell."
	end

	if plates > 0
		puts "You will still be #{plates} lbs under your goal."
	end
end

Gem.win_platform? ? (system "cls") : (system "clear")
total = 0
main_menu