"Escape" by FIGBERT

Example Location is a room. "[if unvisited]Your eyes blink open. Your head throbs from where I hit you with my bat. I knocked you out for daring to play my game. You appear to be in an[otherwise]An[end if] empty white cube."

A wearable thing called goggles is here. "Lying in the center of the room are a pair of horrible goggles." The description of the goggles is "The ugliest swim goggles you have ever seen – like the used, worn-out kind you get from pool life guards but worse. They've probably been chewed up by little kids, rats, and me."

After wearing the goggles:
	say "You put on the goggles, and two identical deep-blue doors materialize on opposite sides of the cube, to the east and west. Taped to each door using that annoying double-sided tape are two identical Hello Kitty keys made from cheap plastic.[line break][line break]Because the only thing I am certain of is your inadequacy, I will clarify that these objects are referred to as East/West Key and East/West Door. Pick the right door and go through it to escape.";
	now East Key is not scenery;
	now West Key is not scenery;
	now East Key is portable;
	now West Key is portable;

East Door is a closed locked door, east of the Example Location. The East Door is scenery. The description of the East Door is "A door." West Door is a closed locked door, west of the Example Location. The West Door is scenery. The description of the West Door is "A door."

A thing called East Key is here. East Key is scenery. The description of East Key is "A key." A thing called West Key is here. West Key is scenery. The description of West Key is "A key."

The East Key unlocks the East Door. The West Key unlocks the West Door.

Instead of going through the East Door:
	say "You win. Not bad for a sapien such as yourself.";
	end the story saying "You Win, as much as you can in this game".
Instead of going through the West Door:
	say "tembel";
	end the story saying "You Lose".
Before going east:
	if the East Door is open or the East Door is unlocked:
		say "You win. Not bad for a sapien such as yourself.";
		end the story saying "You Win, as much as you can in this game";
	else:
		say "You can't go that way.[line break]";
		stop the action.
Before going west:
	if the West Door is open or the West Door is unlocked:
		say "tembel";
		end the story saying "You Lose";
	else:
		say "You can't go that way.[line break]";
		stop the action.