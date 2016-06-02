#EX.45 
#Here are your requirements:

# Make a different game from the one I made.
# Use more than one file, and use require to use them. Make sure you know what that is. DONE
# Use one class per room and give the classes names that fit their purpose (like GoldRoom, KoiPondRoom). DONE
# Your runner will need to know about these rooms, so make a class that runs them and knows about them. DONE
# There's plenty of ways to do this, but consider having each room return what room is next or setting a variable of what room is next.
require "./room.rb"
system "cls"
print "\t\t\t\t\n\nThe Math Hall\n"
puts "\tYou are locked in a hall with 4 doors leading to 4 different rooms and one exit,\n\tBaldor's ghost is here to help you, but if you are not smart he will kill you \n\t:) Enjoy!\n"
items = []
$pasillo = Hall.new()
rooms = [Noobs.new("Begins","Math", true), InitR.new("Continues","Alien", false), Horror.new("Almost finish","Teen", false), Boss.new("The end","Devilish", false), ExitH("Freedom","Nothing", false)]

#esto no va asi
#items << $pasillo.play()


#if a 0 is the last element of the items array it means the player is dead if player has "Key to open the exit door"He can open the exit door and win
while true 
#This unless was just me practicing the use of this conditional function
	unless items.last == 0
		c = $pasillo.play()
		c = c.to_i
		#aqui validar si la room tiene llave o no
		if c == 1 
			items << rooms[c-1].play()
			if items.last != 0
				rooms[c].open 
			end
		else
			if rooms[c-1].instance_variable_get(:@door)
				items << rooms[c-1].play(items)
			else
				puts "You dont have the keys to this room, to open it defeat the previous room"
			end
			
			if items.last != 0
				rooms[c].open
			end
		end

	end
	print "\nYou are in the hall again"
end

#poner opcion de que quiere hacer, si ver sus itemes avaible o elegir una puerta
