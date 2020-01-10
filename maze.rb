#Learn Ruby thee hard way EX.37
$maze = [" "," "," "," "," "," \n"," "," "," "," "," "," \n"," "," "," "," "," "," \n"," "," "," "," "," "," \n"," "," "," "," "," "," \n"," "," "," "," "," "," \n"," "," "," "," "]
mapac = ["∎","∎","∎","∎","∎"," \n","∎"," ","∎","∎","∎","∎\n","∎","∎","∎","∎","∎","∎\n","∎","∎","∎"," "," "," \n","∎","∎","∎","∎"," "," \n","∎","∎","∎","∎"," "," \n","∎","∎","∎","∎"]
         
# mapac.each do |number|
# print "#{number}"
# end 

def cg_p(i)

#change the maze array character to print with ∎ 
##debe tener un if si es de los que llevan \n
if i == 11 || i == 17
	$maze[i]= "∎\n"
else
	$maze[i]= "∎"
end

end
def pr_maze 
#prints the current map
puts " "
puts "MAP:"
$maze.each do |number|
print "#{number}"
end 
puts " "

end
def start
  puts " "
  puts "You are in a dark maze. Warning!!!! There are 3 bears, 4 masters, and a bunch of other surprises."
  puts "There is a door to your right, left and front."
  puts "Which one do you take?"
  cg_p(38)
  
  while true
  print ">"
  choice = $stdin.gets.chomp
	  if choice == "left" || choice == "l" 
		r2
	  elsif choice == "right" || choice == "r" 
		rr1
	  elsif choice == "up" || choice == "u" || choice == "front" || choice == "f" 
		r3
	  else
	   puts "You stumble around the room until you starve. Choose something else"
	  end
  end

end
def golden_room
 map = """
|_|M|_|_|G|-
|B---B|_|_|R|
|_|_|_|_|M|_| 
|B|R|_|-----
|_|_|B|_|---
|M|R|_|_|---
|_|_|S|R|---
G-Gold Room
B-A bear is hidden here
M-A master is here
R-A room with a fact
S-Start
 """
	system "cls"
	cg_p(4)
	puts "You just find the golden room, congratulations that means you are rich, try hiding from the goverment now"
	puts "This is the map you just faced: #{map}"
	
end
def r1
  puts "You are in a boring room."
  cg_p(36)
  pr_maze
  puts "There is a door in the front, and to the left."
  puts "Which one do you take?"
  
  
  while true
  print ">"
  choice = $stdin.gets.chomp
  if choice == "right" || choice == "r" 
	r2
  elsif choice == "up" || choice == "u" || choice == "front" || choice == "f" 
	mr1
  else
   puts "You stumble around the room until you starve. Choose something else"
  end
 end
end
def r2
 puts "You are in a another boring room."
   cg_p(37)
  pr_maze
  puts "There is a door in the front, and one door in both sides."
  puts "Which one do you take?"

  
  while true
  choice = $stdin.gets.chomp
  if choice == "left" || choice == "l" 
	r1
  elsif choice == "right" || choice == "r" 
	start
  elsif choice == "up" || choice == "u" || choice == "front" || choice == "f" 
	rr2
  else
   puts "You stumble around the room until you starve. Choose something else"
  end
  print ">"
 end
end
def r3
 puts "You are in a boring room."
  cg_p(32)
  pr_maze
 puts  "But there is a trick, if you don´t answer the next question correctly the master will steal your life"
 while true
	puts "Why are there rings on Saturn? Write the letter of the answer\n\ta)God's will\n\tb)Saturn is not a single lady\n\tc)Space dust"
	print ">"
	answer = $stdin.gets.chomp
	if answer == "a"
	puts "Nice try, but no, that answer won't take you to heaven"
	die_p
	elsif answer == "b"
	puts "Correct"
	break
	elsif answer == "c"
	puts "Silly"
	die_p
	else
	 puts "You are an idiot, type something that makes sense"
	end
	
 end
 puts ""
  puts "There is a door to every cardinal point"
  puts "Which one do you take? n, s, w, or e"

  while true
   print ">"
   choice = $stdin.gets.chomp
  
  if choice == "n" || choice == "front" || choice == "f"  
	br1
  elsif choice == "s" || choice == "b" 
	start
  elsif choice == "w" 
	rr2
  elsif choice == "e" || choice == "r" 
	r4
  else
   puts "You stumble around the room until you starve. Choose something else"
  end
 end
end
def r4
 puts "You are in a boring room."
   cg_p(33)
  pr_maze
  puts "There is a door to in the front, back, and to the left."
  puts "Which one do you take? l, b, or f"

  while true
  print ">"
  choice = $stdin.gets.chomp
  
  if choice == "left" || choice == "l" 
	r3
  elsif choice == "up" || choice == "u" ||  choice == "front" || choice == "f" 
	r7
  elsif choice == "down" || choice == "d" ||  choice == "back" || choice == "b" 
	rr1
  else
   puts "You stumble around the room until you starve. Choose something else"
  end
 end
end
def r5
 puts "You are in a boring room."
  cg_p(33)
  pr_maze
 puts "But there is a trick, if you don´t answer the next question correctly the master will steal your life"
 puts "What ended on 1865? Write the letter of the answer\n\ta)1864\n\tb)Yo mama\n\tc)The colony time on DR"
 while true 
	print ">"
	answer = $stdin.gets.chomp
	if answer == "a"
	puts "Correct"
	break
	elsif answer == "b"
	puts "Silly"
	die_p
	elsif answer == "c"
	puts "Silly"
	die_p
	else
	 puts "You are an idiot, type something that makes sense"
	end
 end

  puts "There is a door to in the front, back, and to the right."
  puts "Which one do you take?f, b, or r"
  
  print ">"
  choice = $stdin.gets.chomp
  
  if choice == "right" || choice == "r" 
	r6
  elsif choice == "up" || choice == "u" ||  choice == "front" || choice == "f" 
	br2
  elsif choice == "down" || choice == "d" ||  choice == "back" || choice == "b" 
	mr1
  else
   puts "You stumble around the room until you starve. Choose something else"
  end
end
def r6
 puts "You are in a boring room."
 cg_p(25)
 pr_maze
  puts "There is a door to every cardinal point"
 puts "Which one do you take? n, s, w, or e"
 
 while true 
 print ">"
  choice = $stdin.gets.chomp
  
  if choice == "n" || choice == "front" || choice == "f"  
	rr3
  elsif choice == "s" || choice == "b" 
	rr2
  elsif choice == "w" 
	r5
  elsif choice == "e" || choice == "r" 
	br1
  else
   puts "You stumble around the room until you starve. Choose something else"
  end
 end
end
def r7
 puts "You are in a boring room."
 cg_p(27)
 pr_maze
  puts "There is a door to the left and behind you."
  puts "Which one do you take? left or back"
  
  while true 
 print ">"
  choice = $stdin.gets.chomp
  
  if choice == "left" 
	br1
  elsif choice == "back" 
	r4
  else
   puts "You stumble around the room until you starve because you clearly don´t know how to write"
  end
  end
end
def r8
 puts "You are in a boring room. But there is a trick, if you don´t answer the next question correctly the master will steal your life"
 puts "The first cell was? Write the letter of the answer\n\ta)Prokaryotic\n\tb)Eukaryotic\n\tc)Lonely"
 while true 
	print ">"
	answer = $stdin.gets.chomp
	if answer == "a"
	puts "Silly"
	die_p
	elsif answer == "b"
	puts "Silly"
	die_p
	elsif answer == "c"
	puts "Correct"
	break
	else
	 puts "You are an idiot, type something that makes sense"
	end
 end
  cg_p(20)
  pr_maze
  puts "There is a door to the left, in the front and behind you."
  puts "Which one do you take?l, f, or b"
  
  while true 
 print ">"
  choice = $stdin.gets.chomp
  
  if choice == "l" 
	rr3
  elsif choice == "f" 
	r11
  elsif choice == "b" 
	br1
  else
   puts "You stumble around the room until you starve. Choose something else"
  end
  end
end
def r9
 puts "You are in a boring room."
 cg_p(12)
 pr_maze
  puts "There is a door to in the front, behind, and to the right."
  puts "Which one do you take? front, back, or right"
  while true 
 print ">"
  choice = $stdin.gets.chomp
  
  if choice == "front" 
	br3
  elsif choice == "back" 
	br2
  elsif choice == "right" 
	r10
  else
   puts "You stumble around the room until you starve. Choose something else"
  end
  end
end
def r10
  puts "You are in a boring room."
    cg_p(13)
  pr_maze
 puts "But there is a trick, if you don´t answer the next question correctly the master will steal your life"
 puts "Where is the kinky hair on most women? Write the letter of the answer\n\ta)Armpits\n\tb)On their heaven gates\n\tc)Africa"
 while true 
	print ">"
	answer = $stdin.gets.chomp
	if answer == "a"
	puts "Silly"
	die_p
	elsif answer == "b"
	puts "Silly"
	die_p
	elsif answer == "c"
	puts "Correct"
	break
	else
	 puts "You are an idiot, type something that makes sense"
	end
 end

  puts "There is a door to in the behind, and in both sides."
  puts "Which one do you take? left, right, or back"
  
  while true 
 print ">"
  choice = $stdin.gets.chomp
  
  if choice == "left" 
	r9
  elsif choice == "right" 
	r11
  elsif choice == "back" 
	rr3
  else
   puts "You stumble around the room until you starve. Choose something else"
  end
 end
end
def r11
 puts "You are in a boring room."
 cg_p(14)
 pr_maze
  puts "There is a door to every cardinal point"
  puts "Which one do you take? n, s, w, or e"
  while true 
 print ">"
  choice = $stdin.gets.chomp
  
  if choice == "n" || choice == "front" || choice == "f"  
	br4
  elsif choice == "s" || choice == "b" 
	r8
  elsif choice == "w" 
	r10
  elsif choice == "e" || choice == "r" 
	r12
  else
   puts "You stumble around the room until you starve. Choose something else"
  end
  end
end
def r12
 puts "You are in a boring room."
 cg_p(15)
 pr_maze 
 puts "But there is a trick, if you don´t answer the next question correctly the master will steal your life"
 puts "A is the father of B. But B is not the son of A. How’s that possible? Write the letter of the answer\n\ta)B is female\n\tb)B is a unicorn\n\tc)I am your father"
 while true 
	print ">"
	answer = $stdin.gets.chomp
	if answer == "a"
	puts "Correct"
	break
	elsif answer == "b"
	puts "Silly"
	die_p
	elsif answer == "c"
	puts "Silly, I know my father, who do you think I am? Anakin Skywalker?"
	die_p
	else
	 puts "You are an idiot, type something that makes sense"
	end
 end

  puts "There is a door to in the front, and to both sides."
  puts "Which one do you take? l, r, or f"
  while true 
 print ">"
  choice = $stdin.gets.chomp
  
  if choice == "l" 
	r11
  elsif choice == "r" 
	mr2
  elsif choice == "f" 
	r14
  else
   puts "You stumble around the room until you starve. Choose something else"
  end
  end
end
def r13
 puts "You are in a boring room."
  cg_p(17)
  pr_maze

  puts "There is a door to in the front, and to the left."
  puts "Which one do you take? f or l"
  while true 
 print ">"
  choice = $stdin.gets.chomp
  
  if choice == "f" 
	rr4
  elsif choice == "l" 
	mr2

  else
   puts "You stumble around the room until you starve. Choose something else"
  end
  end
end
def r14
 puts "You are in a boring room." 
  cg_p(9)
 pr_maze
 puts "But there is a trick, if you don´t answer the next question correctly the master will steal your life"
 puts "How can a man go eight days without sleep? Write the letter of the answer\n\ta)He sleeps at night\n\tb)A man has no name\n\tc)Being dead"
 while true 
	print ">"
	answer = $stdin.gets.chomp
	if answer == "a"
	puts "Correct"
	break
	elsif answer == "b"
	puts "Silly"
	die_p
	elsif answer == "c"
	puts "Silly"
	die_p
	else
	 puts "You are an idiot, type something that makes sense"
	end
 end

 puts "There is a door to every cardinal point"
 puts "Which one do you take? n, s, w, or e"
 while true 
 print ">"
  choice = $stdin.gets.chomp
  
  if choice == "n" || choice == "front" || choice == "f"  
	r18
  elsif choice == "s" || choice == "b" 
	r12
  elsif choice == "w" 
	br4
  elsif choice == "e" || choice == "r" 
	r15
  else
   puts "You stumble around the room until you starve. Choose something else"
  end
  end
end
def r15
 puts "You are in a boring room."
 cg_p(10)
 pr_maze
 puts "There is a door to every cardinal point"
 puts "Which one do you take? n, s, w, or e"
while true 
 print ">"
  choice = $stdin.gets.chomp
  
  if choice == "n" || choice == "front" || choice == "f"  
	golden_room
  elsif choice == "s" || choice == "b" 
	mr2
  elsif choice == "w" 
	r14
  elsif choice == "e" || choice == "r" 
	rr4
  else
   puts "You stumble around the room until you starve. Choose something else"
  end
  end
end
def r16
 puts "You are in a boring room." 
  cg_p(0)
 pr_maze
 puts "But there is a trick, if you don´t answer the next question correctly the master will steal your life"
 puts "What can you never eat for breakfast? Write the letter of the answer\n\ta)Dinner\n\tb)Veggies\n\tc)Yogurt"
 while true 
	print ">"
	answer = $stdin.gets.chomp
	if answer == "a"
	puts "Correct"
	break
	elsif answer == "b"
	puts "Silly"
	die_p
	elsif answer == "c"
	puts "Silly"
	die_p
	else
	 puts "You are an idiot, type something that makes sense"
	end
 end

 puts "There is a door to in the back, and to the right."
 puts "Which one do you take?b or r"
  while true 
 print ">"
  choice = $stdin.gets.chomp
  
  if choice == "b" 
	br3
  elsif choice == "r" 
	mr3
 
  else
   puts "You stumble around the room until you starve. Choose something else"
  end
  end
end
def r17
 puts "You are in a boring room."
 cg_p(2)
 pr_maze
 puts "There is a door to in the back, and to both sides."
 puts "Which one do you take?b, l or r"
  while true 
 print ">"
  choice = $stdin.gets.chomp
  
  if choice == "b" 
	br4
  elsif choice == "r" 
	r18
  elsif choice == "l" 
	mr3
  else
   puts "You stumble around the room until you starve. Choose something else"
  end
  end
end
def r18
 puts "You are in a boring room." 
  cg_p(3)
 pr_maze
 puts "But there is a trick, if you don´t answer the next question correctly the master will steal your life"
 puts "How many times can you subtract 10 from 100?  Write the letter of the answer\n\ta)2\n\tb)1\n\tc)Many"
 while true 
	print ">"
	answer = $stdin.gets.chomp
	if answer == "a"
	puts "Silly"
	die_p
	elsif answer == "b"
	puts "Correct"
	break
	elsif answer == "c"
	puts "Silly"
	die_p
	else
	 puts "You are an idiot, type something that makes sense"
	end
 end

 puts "There is a door to in the back, and to both sides."
 puts "Which one do you take?b, l or r"
  while true 
 print ">"
  choice = $stdin.gets.chomp
  
  if choice == "b" 
	r14
  elsif choice == "l" 
	r17
  elsif choice == "r" 
	golden_room
  else
   puts "You stumble around the room until you starve. Choose something else"
  end
  end
end
def rr1
system "cls"
cg_p(39)
pr_maze
 puts "You are in a stupid room. Since you must be very dumb I will tell you something: Penguings have knees"
 puts "There is a door to in the front, and to the left."
 puts "Which one do you take?f or l"
  
  while true 
 print ">"
  choice = $stdin.gets.chomp
  
  if choice == "f" 
	r4
  elsif choice == "l" 
	start
  else
   puts "You stumble around the room until you starve. Choose something else"
  end
  end
end
def rr2
 system "cls"
 cg_p(31)
 pr_maze
 puts "You are in a stupid room. Since you must be very dumb I will tell you something: Female kangaroos have three vaginas"
  puts "There is a door to every cardinal point."
  puts "Which one do you take?n, s, w, or e"
  while true 
 print ">"
  choice = $stdin.gets.chomp
  
  if choice == "n" || choice == "front" || choice == "f"  
	r6
  elsif choice == "s" || choice == "b" 
	r2
  elsif choice == "w" 
	mr1
  elsif choice == "e" || choice == "r" 
	r3
  else
   puts "You stumble around the room until you starve. Choose something else"
  end
  end
end
def rr3
 system "cls"
 cg_p(19)
 pr_maze
 puts "You are in a stupid room. Since you must be very dumb I will tell you something: Everyone has a unique tongue print"
 puts "There is a door to every cardinal point."
 puts "Which one do you take?n, s, w, or e"
  while true 
 print ">"
  choice = $stdin.gets.chomp
  
  if choice == "n" || choice == "front" || choice == "f"  
	r10
  elsif choice == "s" || choice == "b" 
	r6
  elsif choice == "w" 
	br2
  elsif choice == "e" || choice == "r" 
	r8
  else
   puts "You stumble around the room until you starve. Choose something else"
  end
  end
end
def rr4
 system "cls"
 cg_p(11)
 pr_maze
 puts "You are in a stupid room. Since you must be very dumb I will tell you something:  The largest snowflake ever recorded reportedly measured 15 inches across."
 puts "There is a door to in the back, and to the left."
 puts "Which one do you take?b or l"
  while true 
 print ">"
  choice = $stdin.gets.chomp
  
  if choice == "b" 
	r13
  elsif choice == "l" 
	r15
  else
   puts "You stumble around the room until you starve. Choose something else"
  end
  end
end
def br1
 system "cls"
 cg_p(26)
 pr_maze
 puts "You are in a Bear room. What can you grab to kill it?"
 puts "Knife, spoon, broom"
 while true 
 print ">"
  c1 = $stdin.gets.chomp
  if c1 == "Knife" || c1 == "knife"
	puts "You took the knife just to realize the bear is dead. You should have check that first"
	break
  elsif c1 == "spoon" || c1 == "Spoon"
  puts "What were you thinking? The bear ripped your face appart"
  die_p
  elsif c1 == "Broom" || c1 == "broom"
  puts "What were you thinking? The bear ripped your face appart"
  die_p
  else
  
  end
 end
 puts "\nCongratulations, you are alive. There is a door to every cardinal point."
 puts "Which one do you take?n, s, w, or e"
 while true 
 print ">"
  choice = $stdin.gets.chomp
  
  if choice == "n" || choice == "front" || choice == "f"  
	r8
  elsif choice == "s" || choice == "b" 
	r3
  elsif choice == "w" 
	r6
  elsif choice == "e" || choice == "r" 
	r7
  else
   puts "You stumble around the room until you starve. Choose something else"
  end
  end
end
def br2
 system "cls"
 cg_p(18)
 pr_maze
 puts " "
 puts "You are in a Bear room. What can you grab to kill it?"
 puts "machete, cadaver, candle"
  while true 
 print ">"
  c1 = $stdin.gets.chomp
  if c1 == "Machete" || c1 == "machete"
	puts "You take the machete and stabbed that son of a bear."
	break
  elsif c1 == "cadaver" 
  puts "What were you thinking? Feeding the bear?. The bear ripped your arms appart"
  die_p
  elsif c1 == "candle"
  puts "What were you thinking? Burnig the bear down? The bear ripped your face appart"
  die_p
  else
  end
  end
 
 puts "\nCongratulations, you are alive. There is a door to the front, back, and right"
 puts "Which one do you take? f, b or r"
 while true 
 print ">"
  choice = $stdin.gets.chomp
  
  if choice == "f" 
	r9
  elsif choice == "b" 
	r5
  elsif choice == "r" 
	rr3
  else
   puts "You stumble around the room until you starve. Choose something else"
  end
 end
end
def br3
 system "cls"
 cg_p(6)
 pr_maze
 puts "You are in a Bear room. What can you grab to kill it?"
 puts "beer bottle, pen, underwear"
  while true 
 print ">"
  c1 = $stdin.gets.chomp
  if c1 == "beer bottle"
	puts "You took the beer bottle and stabbed that son of a bear."
	break
  elsif c1 == "pen" 
  puts "What were you thinking? The bear ripped your arms appart"
  die_p
  elsif c1 == "underwear"
  puts "What were you thinking? The bear ripped your face appart."
  die_p
  else
  
  end
 end
 puts "\nCongratulations, you are alive. There is a door in the front and back"
 puts "Which one do you take? b or f"
 while true 
 print ">"
  choice = $stdin.gets.chomp
  
  if choice == "b" 
	r9
  elsif choice == "f" 
	r16
  else
   puts "You stumble around the room until you starve. Choose something else"
  end
  end
end
def br4
 system "cls"
 cg_p(8)
 pr_maze
 puts "You are in a Bear room. What can you grab to kill it?"
 puts "CD, mouse, honey"
 while true 
 print ">"
  c1 = $stdin.gets.chomp
  if c1 == "CD" || c1 == "cd"
	puts "You took the CD, break it and stab that son of a bear."
	break
  elsif c1 == "mouse" 
  puts "What were you thinking? The bear looked at you with anger and trow you in the air"
  die_p
  elsif c1 == "honey"
  puts "You trow the honey to the bear and the bear goes blind"
  die_p
  else
  end
  end
 puts "\n Congratulations, you are alive. You can go up, down or right"
 puts "Which one do you take?d, u, r"
 while true 
 print ">"
  choice = $stdin.gets.chomp
  
  if choice == "u" 
	r17
  elsif choice == "d" 
	r11
  elsif choice == "r" 
	r14
  else
   puts "You stumble around the room until you starve. Choose something else"
  end
  end
end
def mr1
 system "cls"
 cg_p(30)
 pr_maze
 puts "You are in a Master room."
 puts "The master says you should go up"

 puts "There is a door to in the back, front, and to the right."
 puts "Which one do you take?b, f or r"
 while true 
 print ">"
  choice = $stdin.gets.chomp
  
  if choice == "b" 
	r1
  elsif choice == "f" 
	r5
  elsif choice == "r" 
	rr2
  else
   puts "You stumble around the room until you starve. Choose something else"
  end
 end
end
def mr2
 system "cls"
 cg_p(16)
 pr_maze
 puts "You are in a Master room."
 puts "The master says you should go up"
 puts "There is a door in the front, and to booth sides."
 puts "Which one do you take?l, f or r"
 
 while true 
 print ">"
  choice = $stdin.gets.chomp
  
  if choice == "l" 
	r12
  elsif choice == "r" 
	r13
  elsif choice == "f" 
	r15
  else
   puts "You stumble around the room until you starve. Choose something else"
  end
  end
end
def mr3
 system "cls"
 cg_p(1)
 pr_maze
 puts "You are in a Master room."
 puts "The master says you should go right"
 puts "There is a door to the left and to the right."
 puts "Which one do you take?l or r"
 while true 
 print ">"
  choice = $stdin.gets.chomp
  
	if choice == "l"  || choice == "left"
	r16
  elsif choice == "r" || choice == "right"
	r17
  else
   puts "You stumble around the room until you starve. Choose something else"
  end
  end
end
def die_p
	puts "You got yourself killed"
	puts "The hidden master had mercy on you, you can start over again"
	puts "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++\n" * 3
	$maze = [" "," "," "," "," "," \n"," "," "," "," "," "," \n"," "," "," "," "," "," \n"," "," "," "," "," "," "," "," "," "," "," "," \n"," "," "," "," "," "," \n"," "," "," "," "]
	
	start
end

start