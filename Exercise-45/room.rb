class Room

	def initialize(name, enemy)
		@name = name
		@enemy = enemy
	end

end

class Hall
	def play
		puts "Returning a string"
		write = $stdin.gets.chomp
		return write
	end
end

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
					break
					elsif answer == "c" || answer == "a" || answer == "d" 
					puts "WRONG ANSWER!!!!!!!!!!!!\nThis is the only room where a wrong answer wont kill you so be carefull"
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
		puts "Congratulations, Mr.Baldor is holding three items for you to use, choose one writing the number of the item: \n1.Flamethrower\n2.Machete\3.The morning after pill"
		resp = $stdin.gets.chomp
		return resp
	end

end

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
			if win 
			puts "Congratulations, Mr.Baldor is holding three items for you to use, choose one writing the number of the item: \n1.Flamethrower\n2.Machete\3.The morning after pill"
			resp = $stdin.gets.chomp
			return resp
		else 
			puts "No more games for you, press ctrl+c"
			return 0 
		end
	end

end

class Horror < Room
	def play
		puts "Welcome to the Horror Room"
		puts "Here you have to prove you know some basic math."
		win = true
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
					break
					elsif answer == "d" || answer == "a" || answer == "b" 
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
		if win 
			puts "Congratulations, Mr.Baldor is holding three items for you to use, choose one writing the number of the item: \n1.Flamethrower\n2.Machete\3.The morning after pill"
			resp = $stdin.gets.chomp
			return resp
		else 
			puts "No more games for you, press ctrl+c"
			return 0 
		end
	end

end

class Boss < Room
	def play
		puts "Welcome to the Boss Room"
		puts "Here you have to kill DA BOSS, and   you know some basic math."
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
		if win 
			puts "Congratulations, Mr.Baldor is holding three items for you to use, choose one writing the number of the item: \n1.Flamethrower\n2.Machete\3.The morning after pill"
			resp = $stdin.gets.chomp
			return resp
		else 
			puts "No more games for you, press ctrl+c"
			return 0 
		end
	end

end

class Door
	def initialize(number, open, room)
		@number = number
		@open = open #si esta abierta o cerrada es booleano
		@room = room
	end
end
