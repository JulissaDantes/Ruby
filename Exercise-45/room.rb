
class Room

	def initialize(name, enemy, open)
		@name = name
		@enemy = enemy
		@door = open 
	end

end

class Hall
	def play
	
		puts "\n \n\tChoose a number between 1 and 4 for the doors and 5 only if you have the key to the exit"
		print "> "
		write = $stdin.gets.chomp
		return write
	end
end
#Ready 
class Noobs < Room
	def play
	system "cls"
		puts "Welcome to the Noobs Room"
		puts "Here you just have to prove you know some basic math."		
		while true
		print "Are you ready? Y/N \n"
		print ">"
		ready = $stdin.gets.chomp
			if ready == "Y" || ready == "y"
				puts "Woohoo you must be very brave...or very dumb"
				puts "Choose the letter with the correct answer"
				puts "Which one is the answer to (a-b)²\na)a²-2ab²\tb)a²-2ab+b²\nc)2a²b+b²\td)a²-b²)"
				while true
					print ">"
					answer = $stdin.gets.chomp
					if answer == "b"
					puts "Correct."
					puts "Congratulations, Mr.Baldor is holding three items for you to use, choose one writing the number of the item: \n1.Flamethrower\n2.Machete\n3.The morning after pill"
					print ">"
					resp = $stdin.gets.chomp
					if resp.to_i == 1
						return "Flamethrower"
					elsif resp.to_i == 2
						return "Machete"
					elsif resp.to_i == 3
						return "The morning after pill"
					else 
						puts "You cant even do that right, you are gooing to regret that"
						return resp, "Key 2"
					end
					break
					elsif answer == "c" || answer == "a" || answer == "d" 
					puts "WRONG ANSWER!!!!!!!!!!!!\nThis is the only room where a wrong answer wont kill you so be carefull and try again"
					else
					puts "please check your answer"
					end
				end
			break
			elsif ready == "N" || ready == "n"
				puts "Please be brave and say yes"
			else
				puts "Please type Y or N"
			end 
		end
	end
	
end
#WIP
class InitR < Room
	def play(item)
	@items = item
	system "cls"
		puts "Welcome to the Init Room"
		puts "Here you have to prove you know math, and defeat an enemy."
		win = true
		while true
		print "Are you ready? Y/N "
		ready = $stdin.gets.chomp
			if ready == "Y" || ready == "y"
				puts "Choose the letter with the correct answer"
				puts "Which one is the answer to this problem: If Kimmy is one year older than Tommy 3 years ago, Tommy is one quater of Alice age , and Alice is 40, How old is Kimmy\na.)4\tb.)F*ck the police\nc.)42\td.)8"
				while true
					print ">"
					answer = $stdin.gets.chomp
					if answer == "d"
					puts "Correct."
					puts "Now you  get to face an enemy, if you choose the wrong number....I know you are confused, because your face looks like\n a rat kissed it."
					puts "Let me tell you how it works, write a number between 1 and 5, only one number awakes the hidden alien, you heard right, Baldor hid an alien and put it to sleep here."
					while true
						print "\n\nWrite the number: > "
						answer = $stdin.gets.chomp
						answer = answer.to_i
						if answer == 4
						puts "You have found the alien and he is mad AF, mad enough to kill you"
						puts "Here is the list of your items. Choose what to use againts this psycho"
						c = 1 
						@items.each do |i|
							puts ""
							print c 
							print ". " 
							print i
							c += 1
						end
						print "\nWrite the number of the desired item"
						resp = $stdin.gets.chomp
						resp = resp.to_i
						while true
							print "\nWrite the number of the desired item: > "
							c = $stdin.gets.chomp
							c = c.to_i
							c -= 1
							if @items[c] == "Flamethrower" || @items[c] == "Machete"
								puts "\nGood"
								puts "Congratulations, Mr.Baldor is holding three items for you to use, choose one writing the number of the item: \n1.Harry Potter Book\n2.Bird\n3.Super glue"
								print "\nWrite the number: > "
								resp = $stdin.gets.chomp
								resp = resp.to_i
								if resp.to_i == 1
									return "Harry Potter Book"
								elsif resp.to_i == 2
									return "Bird"
								elsif resp.to_i == 3
									return "Super glue"
								else
									return resp
								end
							elsif c > @items.length
								puts "You are an idiot,  write a valid number"
							else
								puts "Congratulations!!!!You are dead"
								return 0
							end 
						end
						break
						puts "YOU ARE DEAD!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
						return 0
						elsif answer > 5
							puts "You are an idiot,  write a valid number"
						else
							puts "Congratulations!!!!There was only dust in here"
							puts "Congratulations, Mr.Baldor is holding three items for you to use, choose one writing the number of the item: \n1.Hunger Games Book\n2.Pencil\n3.Teddy Bear"
								print "\nWrite the number: > "
								resp = $stdin.gets.chomp
								if resp.to_i == 1
									return "Hunger Games Book"
								elsif resp.to_i == 2
									return "Pencil"
								elsif resp.to_i == 3
									return "Teddy Bear"
								else
									return resp
								end
						end 
					end
					break
					elsif answer == "c" || answer == "a" || answer == "b" 
					puts "WRONG ANSWER!!!!!!!!!!!!\nThe ghost of Baldor killed you"
					return 0
					else
					puts "please check your answer"
					end
				end
			break
			elsif ready == "N" || ready == "n"
				puts "Please be brave and say yes"
			else
				puts "Please type Y or N"
			end 
		end
	end
	def open
	@door = true
end
end
#Ready 
class Horror < Room
	def play (item_list)
	@items = item_list
	system "cls"
		puts "Welcome to the Horror Room"
		puts "Here you have to prove you know some basic math. And defeat a enemy"
		while true
		print "Are you ready? Y/N "
		ready = $stdin.gets.chomp
			if ready == "Y" || ready == "y"
				puts "Choose the letter with the correct answer"
				puts "Which one is the answer to this problem: (x+a)*(b+x) \na.)xab+2xa+2bx\tb.)xb+ax\nc.)x^2+xb+ax+ab\td.)2x+abx"
				while true
					print ">"
					answer = $stdin.gets.chomp
					if answer == "c"
						puts "Correct."
						puts "Now you  get to face an enemy. Your enemy here is a teenager that just had sex, and forgot to use protection"
						puts "She is concern her parent might kill her, so she will kill you  to eat your balls as a DIY contraception method"
						puts "Here is the list of your items. Choose what to use againts this 	psycho"
						c = 1 
						@items.each do |i|
							puts ""
							print c 
							print ". " 
							print i
							c += 1
						end
						while true
							print "\nWrite the number of the desired item: > "
							c = $stdin.gets.chomp
							c = c.to_i
							c -= 1
							if @items[c] == "The morning after pill" || @items[c] == "Flamethrower" || @items[c] == "Machete"
								puts "\nGood brain use technique"
								puts "Congratulations, Mr.Baldor is holding three items for you to use, choose one writing the number of the item: \n1.Harry Potter Book\n2.Bird\n3.Super glue"
								print "\nWrite the number: > "
								resp = $stdin.gets.chomp
								resp = resp.to_i
								if resp.to_i == 1
									return "Harry Potter Book"
								elsif resp.to_i == 2
									return "Bird"
								elsif resp.to_i == 3
									return "Super glue"
								else
									return resp
								end
							elsif c > @items.length
								puts "You are an idiot,  write a valid number"
							else
								puts "Congratulations!!!!You are dead"
								return 0
							end 
						end
						break
					elsif answer == "d" || answer == "a" || answer == "b" 
						puts "WRONG ANSWER!!!!!!!!!!!!\nThe ghost of Baldor killed you"
						return 0
					else
						puts "please check your answer"
					end
				end
			break
			elsif ready == "N" || ready == "n"
				puts "Please be brave and say yes"
			else
				puts "Please type Y or N"
			end 
		end
		 		
			puts "No more games for you, press ctrl+c"
			return 0 
		
	end
def open
	@door = true
end
end
#Ready 
class Boss < Room
	def play(items)
	@items = items
	system "cls"
		puts "Welcome to the Boss Room"
		puts "Here you have to kill DA BOSS, and   you know some basic math."
		while true
		print "Are you ready? Y/N "
		ready = $stdin.gets.chomp
			if ready == "Y" || ready == "y"
				puts "Choose the letter with the correct answer"
				puts "Which one is the answer to this problem: if f(x)= x^4 − 2x^2 − 3, x is equal to\na.)Impossible to solve\tb.)a number\nc.)42\td.)√3"
				while true
					print ">"
					answer = $stdin.gets.chomp
					if answer == "d"
					puts "Correct."
					puts "Now you  get to face an enemy. Your enemy here is a Math teacher, a silly one, the kind that thinks he knows everything but is always wrong"
					puts "Here is the list of your items. Choose what to use againts this dude"
					c = 1
					@items.each do |i|
						puts ""
							print c 
							print ". " 
							print i
							c += 1
					end
					while true
						print "\nWrite the number of the desired item: > "
						c = $stdin.gets.chomp
						c = c.to_i
						c -= 1
						if @items[c] == "Flamethrower" || @items[c] == "Machete"
							puts "Good brain use technique"
							puts "Congratulations, Mr.Baldor is holding three items for you to use, choose one writing the number of the item: \n1.Bird\n2.Blasteroid\n3.A Dragon"
							print "\nWrite the number: > "
							resp = $stdin.gets.chomp							
							if resp.to_i == 1
								return "Bird"
							elsif resp.to_i == 2
								return "Blasteroid"
							elsif resp.to_i == 3
								return "A Dragon"
							else
								return resp.to_i
							end
						elsif @items[c] == "Bird"
							puts "How did you know he loves birds?"
							puts "Congratulations, Mr.Baldor is holding three items for you to use, choose one writing the number of the item: \n1.Bird\n2.Blasteroid\n3.A Key to open the exit door"
							print "\nWrite the number: > "
							resp = $stdin.gets.chomp
							if resp.to_i == 1
								return "Bird"
							elsif resp.to_i == 2
								return "Blasteroid"
							elsif resp.to_i == 3
								return "Key to open the exit door"
							else
								return resp
							end
						elsif c > @items.length
							puts "You are an idiot,  write a valid number"
						else
							puts "Congratulations!!!!You are dead"
								return 0
						end 
					end
					break
					elsif answer == "c" || answer == "a" || answer == "b" 
					puts "WRONG ANSWER!!!!!!!!!!!!\nThe ghost of Baldor killed you"
					return 0
					else
					puts "please check your answer"
					end
				end
			break
			elsif ready == "N" || ready == "n"
				puts "Please be brave and say yes"
			else
				puts "Please type Y or N"
			end 
		end		
	end
def open
	@door = true
end
end

class ExitH < Room
def play
puts """
		CONGRATULATIONS
Not only did you prove you are a Math Guru
You also killed 3 monsters
			\3
"""
return 1

end
	def open(items)
		@items = items
		@door = true
end
end
