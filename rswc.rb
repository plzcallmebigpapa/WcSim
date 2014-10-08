# In this game I am making a simulator of cutting trees in runescape up to lvl 99
# Will try to make exact to tree standard count somethinsgs

puts "Welcome to my Wood Cutting Game! "
puts "What is your name? "
print "> "
name = $stdin.gets.chomp

puts "OKAY! Here is your Bronze Axe #{name}, lets get started. "
puts "Obtained Bronze axe! "

lvl = 1
xp = 0

def cutting_trees
	max_log = 10
	profit = rand(1..max_log)
	(1..profit).each do
		puts "Chop "
		sleep rand(1..5) 
	end	
	return profit	
end

def bank
	puts "Oh Dear! We are full of logs ;( "
	puts "Lets walk back to the bank and deposit"
	(0..40).each do |i|
		if i == 20
			puts "Depositing"
			sleep 3
		elsif i > 20
			puts "Walking back"
			sleep 1
		else 
			puts "Walking "
			sleep 1
		end
	end
end

def lvl1(lvl)
	puts "Ok lets walk to Draynor VIllage and cut some trees!!! :) "
	(0..30).each do |i|
		if i  == 15
			puts "Halfway there! "
			sleep 1
			puts "Walking"
		else
			sleep 1
			puts "Walking"
		end
	end
	total_log = 0
	current_log = 0
	while total_log < 97	
	puts "Are you ready to cut trees? (Y/N) "
	print = "> "
	ready = $stdin.gets.chomp
		if ready == "Y" || ready == "y"
			puts "Walking.."
			sleep 1
			puts "Walking.."
			sleep 1
			
			add_log = cutting_trees				
			total_log += add_log
			current_log += add_log
			puts "You have #{current_log} logs"
			puts "And #{total_log} in da bank"
			
			if current_log >= 27
				bank
				current_log = 0
			end
		elsif ready == "N" || ready == "n"
			wait_time = 5
			(0..5).each do
				puts "wait..."
				sleep 1
			end
		else
			puts "Y / N PLS"
		end
	end
	puts "You are now lvl 15"
end





lvl1(lvl)




lvl99 = 13,034,431

tree = 10



