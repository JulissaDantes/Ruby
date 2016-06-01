class Room
@door = Door.new(false)
	def initialize(name, enemy, open)
		@name = name
		@enemy = enemy
		@door.open = open 
	end

end

class Hall
	def play
		puts "     There are 4 doors and one exit. \n\tChoose a number between 1 and 4 for the doors and 5 only if you have the key to the exit"
		print ">"
		write = $stdin.gets.chomp
		return write
	end
end
#Ready 
class Noobs < Room
	def play
		puts "Welcome to the Noobs Room"
		puts "Here you just have to prove you know some basic math."		
		while true
		print "Are you ready? Y/N "
		ready = $stdin.gets.chomp
			if ready == "Y" || ready == "y"
				puts "Woohoo you must be very brave...or very dumb"
				puts "Choose the letter with the correct answer"
				puts "Which one is the answer to (a-b)²\na.)a²-2ab²\tb.)a²-2ab+b²\nc.)2a²b+b²\t.d.a²-b²)"
				while true
					print ">"
					answer = $stdin.gets.chomp
					if answer == "b"
					puts "Correct."
					puts "Congratulations, Mr.Baldor is holding three items for you to use, choose one writing the number of the item: \n1.Flamethrower\n2.Machete\3.The morning after pill"
					resp = $stdin.gets.chomp
					if resp == 1
						return "Flamethrower"
					elsif resp == 2
						return "Machete"
					elsif resp == 3
						return "The morning after pill"
					else 
						puts "You cant even do that right, you are gooing to regret that"
						return resp, "Key 2"
					end
					break
					elsif answer == "c" || answer == "a" || answer == "d" 
					puts "WRONG ANSWER!!!!!!!!!!!!\nThis is the only room where a wrong answer wont kill you so be carefull and try again"
					else
					puts "plase check your answer"
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
#Here check object usage
class InitR < Room
	def play
		puts "Welcome to the Init Room"
		puts "Here you have to prove you know math, and defeat an enemy."
		win = true
		while true
		print "Are you ready? Y/N "
		ready = $stdin.gets.chomp
			if ready == "Y" || ready == "y"
				puts "Choose the letter with the correct answer"
				puts "Which one is the answer to this problem: If Kimmy is one year older than Tommy 3 years ago, Tommy is one quater of Alice age , and Alice is 40, How old is Kimmy\na.)4\tb.)F*ck the police\nc.)42\t.d.8"
				while true
					print ">"
					answer = $stdin.gets.chomp
					if answer == "d"
					puts "Correct."
					puts "Now you  get to face an enemy, if you choose the wrong number....I know you are confused, because your face looks like a rat kissed it."
					puts "Let me tell you how it works, write a number between 1 and 5, only one number awakes the hidden alien, you heard right, Baldor hide an alien and put it to sleep here."
					while true
						print "Write the number: >"
						answer = $stdin.gets.chomp
						if answer == 4
						puts "You have found the alien and he is mad AF, mad enough to kill you"
						puts "YOU ARE DEAD!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
						return 0
						elsif answer > 5
							puts "You are an idiot,  write a valid number"
						else
							puts "Congratulations!!!!There was only dust in here"
							puts "Congratulations, Mr.Baldor is holding three items for you to use, choose one writing the number of the item: \n1.Hunger Games Book\n2.Pencil\3.Teddy Bear"
								resp = $stdin.gets.chomp
								if resp == 1
									retun "Hunger Games Book"
								elsif resp == 2
									retun "Pencil"
								elsif resp == 3
									retun "Teddy Bear"
								else
									return resp
								end
						end 
					end
					break
					elsif answer == "c" || answer == "a" || answer == "b" 
					puts "WRONG ANSWER!!!!!!!!!!!!\nThe ghost of Baldor killed you"
					win = false
					else
					puts "plase check your answer"
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
#Ready 
class Horror < Room
	def play (item_list)
	@items = item_list
		puts "Welcome to the Horror Room"
		puts "Here you have to prove you know some basic math. And defeat a enemy"
		while true
		print "Are you ready? Y/N "
		ready = $stdin.gets.chomp
			if ready == "Y" || ready == "y"
				puts "Choose the letter with the correct answer"
				puts "Which one is the answer to this problem: (x+a)*(b+x) \na.)xab+2xa+2bx\tb.)xb+ax\nc.)x^2+xb+ax+ab\t.d.2x+abx"
				while true
					print ">"
					answer = $stdin.gets.chomp
					if answer == "c"
						puts "Correct."
						puts "Now you  get to face an enemy. Your enemy here is a teenager that just had sex, and forgot to use protection"
						puts "She is concern her parent might kill her, so she will kill you  to eat your balls as a DIY contraception method"
						puts "Here is the list of your items. Choose what to use againts this 	psycho"
						c = 1 #What we are going to use to locate the item on the array
						@items.each do |i|
							print c + i
							c += 1
						end
						while true
							print "Write the number of tthe desired item: >"
							c = $stdin.gets.chomp
							c = c.to_i
							c -= 1
							if @item_list[c] == "The morning after pill" || @item_list[c] == "Flamethrower" || @item_list[c] == "Machete"
								puts "Good brain use technique"
								puts "Congratulations, Mr.Baldor is holding three items for you to use, choose one writing the number of the item: \n1.Harry Potter Book\n2.Bird\3.Super glue"
								resp = $stdin.gets.chomp
								if resp == 1
									retun "Harry Potter Book"
								elsif resp == 2
									retun "Bird"
								elsif resp == 3
									retun "Super glue"
								else
									return resp
								end
							elsif c > @item_list.length
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
						puts "plase check your answer"
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

end
#Ready 
class Boss < Room
	def play
		puts "Welcome to the Boss Room"
		puts "Here you have to kill DA BOSS, and   you know some basic math."
		while true
		print "Are you ready? Y/N "
		ready = $stdin.gets.chomp
			if ready == "Y" || ready == "y"
				puts "Choose the letter with the correct answer"
				puts "Which one is the answer to this problem: if f(x)= x^4 − 2x^2 − 3, x is equal to\na.)Impossible to solve\tb.)a number\nc.)42\t.d.√3"
				while true
					print ">"
					answer = $stdin.gets.chomp
					if answer == "d"
					puts "Correct."
					puts "Now you  get to face an enemy. Your enemy here is a Math teacher, a silly one, the kind that thinks he knows everything but is always wrong"
					puts "She is concern her parent might kill her, so she will kill you  to eat your balls as a DIY contraception method"
					puts "Here is the list of your items. Choose what to use againts this 	psycho"
					c = 1
					@items.each do |i|
						print c + i
						c += 1
					end
					while true
						print "Write the number of tthe desired item: >"
						c = $stdin.gets.chomp
						c = c.to_i
						c -= 1
						if @item_list[c] == "Flamethrower" || @item_list[c] == "Machete"
							puts "Good brain use technique"
							puts "Congratulations, Mr.Baldor is holding three items for you to use, choose one writing the number of the item: \n1.Bird\n2.Blasteroid\3.A Dragon"
							resp = $stdin.gets.chomp
							if resp == 1
								return "Bird"
							elsif resp == 2
								return "Blasteroid"
							elsif resp == 3
								return "A Dragon"
							else
								return resp
							end
						elsif @item_list[c] == "Bird"
							puts "How did you know he loves birds?"
							puts "Congratulations, Mr.Baldor is holding three items for you to use, choose one writing the number of the item: \n1.Bird\n2.Blasteroid\3.A Key to open the exit door"
							resp = $stdin.gets.chomp
							if resp == 1
								return "Bird"
							elsif resp == 2
								return "Blasteroid"
							elsif resp == 3
								return "Key to open the exit door"
							else
								return resp
							end
						elsif c > @item_list.length
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
					puts "plase check your answer"
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

class Door
	def initialize(open)
		@open = open #si esta abierta o cerrada es booleano
	end
	
	def close
		@open = false
	end
end
