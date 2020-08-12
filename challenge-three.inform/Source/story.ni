"Challenge Three" by FIGBERT

A person can be sad or happy, the default is sad.

Example Location is a room. "A white cube, expaning on to the north, south, east, and west."

A man called Jonny is here. Jonny can be attached or free.

East of Example Location is a room called Example Location – East. The description of Example Location East is "More blank cube."

A button is in Example Location – East. "A pristine blue button is attached to the floor here." The description of the button is "A dark blue button with the text 'END SIMULATION' printed on it in thick, white letters."

Instead of pushing the button in Example Location – East:
	say "[bold type]Beginning shutdown process...[roman type][line break]Defragging...[line break]Clearing out temporary directories...[line break]Cleaning user cache...[line break]Spinning down...";
	end the story.

[Holding hands section adapted from Byron]
Holding hands is an action applying to one visible thing. Understand "hold [someone]'s hand" and "hold hands with [someone]" and "hold hands" as holding hands.

Check holding hands:
	if the noun is not a person, say "The [noun] does not have hands to hold!"

Carry out holding hands:
	say "You take their hand in yours.";
	now the noun is attached.

Letting go is an action applying to one visible thing. Understand "let [someone]'s hand go" and "let go of [someone]" and "let go" and "stop holding hands with [someone]" as letting go.

Check letting go:
	if the noun is not a person, try dropping the noun;
	if the noun is free:
		say "You're not holding their hand!";
		stop the action.

Carry out letting go:
	say "You loosen your grip, and slide your hand out from theirs.";
	now the noun is free.

Every turn:
	if Jonny is attached:
		if the location of Jonny is not the location of the player:
			let the way be the best route from the location of Jonny to the location of the player, using doors;
			try Jonny going the way;
		now Jonny is happy;
	otherwise:
		now Jonny is sad;
	[Happiness section]
	If Jonny is happy:
		say "Jonny has a nice smile on his face, and he's bopping his head up and down to music that you can't hear.";
	otherwise:
		If the location of Jonny is the location of the player:
			say "Jonny's has a confusing look on his face, almost as if he's trying not to cry.";
		Otherwise:
			say "You can hear Jonny humming a morose tune the room over."