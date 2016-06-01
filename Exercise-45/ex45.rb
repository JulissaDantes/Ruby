#EX.45 
#Here are your requirements:

# Make a different game from the one I made.
# Use more than one file, and use require to use them. Make sure you know what that is. DONE
# Use one class per room and give the classes names that fit their purpose (like GoldRoom, KoiPondRoom). DONE
# Your runner will need to know about these rooms, so make a class that runs them and knows about them. DONE
# There's plenty of ways to do this, but consider having each room return what room is next or setting a variable of what room is next.
require "./room.rb"

print "\t\t\t\t\n\n                   The Math Hall\n"
puts "\tYou are locked in a hall with 4 doors leading to 4 different rooms and one exit,\n\tBaldor's ghost is here to help you, but if you are not smart he will kill you \n\t:) Enjoy!\n"
items = []
$pasillo = Hall.new()
rooms = [Noobs.new("Begins","Math", true), InitR.new("Continues","Alien", false), Horror.new("Almost finish","Teen", false), Boss.new("The end","Devilish", false)]

#esto no va asi
#items << $pasillo.play()


#if a 0 is the last element of the items array it means the player is dead if player has "Key to open the exit door"He can open the exit door and win
unless items.last == 0
	c = $pasillo.play()
	c = c.to_i
	#aqui validar si la room tiene llave o no
	room[c-1].play(items)

end
