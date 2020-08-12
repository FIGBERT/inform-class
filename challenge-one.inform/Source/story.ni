"A Treehouse Beneath The Cliff" by FIGBERT

[Rooms and items]
The Plateau is a room. "[if unvisited]You awake to find youself prone on the ground. You look around to see a grassy field that seems to stretch on forever in all directions, ending abruptly half a meter south of you. You scramble quickly away from the edge. You look around and see an [otherwise]An [end if]endless landscape of grass, flat for kilometers in all directions except south, where it ends in an sudden dropoff."

The cliff is an open unopenable door, south of the plateau and above the Desert. The cliff is scenery. The description of the cliff is "Peering over the cliff, you see a sandy expanse perhaps 5 meters below you. Maybe it's a soft landing?"

Desert is a room. "[if unvisited]You leap out from the grassy plateau and fall downwards through the air, hitting the sand with a resounding thump. You find yourself in a [otherwise]A [end if]sandy expanse stretching out southward, ending abruptly to the north in a smooth cliff-face."

South of the Desert is a room called the Tree in the Desert. The description of the Tree in the Desert is "An ancient, gnarled tree stands alone in the sands bleached white by the heat of the sun. Hanging from the one of the highest branches is a ladder dangling just above you."

The ladder is an open unopenable door, above the Tree in the Desert and below the Treehouse. The ladder is scenery. The description of ladder is "A rope ladder connected by sturdy white branches, apparently from the tree itself. It hangs from high up in the tree, and ends 2 meters above the ground."

Treehouse is a room. "[if unvisited]You straighten yourself up, and look around the platform.[end if]The treehouse is less of a house and more of a platform, built of warped branches washed as white as the rest of the tree. On the far side of the platform is a leather pouch."

Inside the treehouse is a closed openable container called a leather pouch. The pouch is scenery. The description of the leather pouch is "A small pouch of leather, oiled on the outside to resist the weather.[if closed] The pouch is tied closed with a string.[end if]"

Inside the leather pouch is a thing called a brass lamp. The description of the brass lamp is "A beat up worthless piece of junk. Written on it is some small text, but it's hard to make out what it says..."

[Movement controls]
Instead of facing in the Plateau:
	if not facing south and not facing down:
		say "The green grass field stretches on past the horizon.";
	else:
		say "Peering over the cliff, you see a sandy expanse perhaps 5 meters below you. Maybe it's a soft landing?";

Instead of going down in the Plateau:
	Move the player to the Desert.

Instead of going up in the Desert:
	say "Jumping down into the sand is one thing: climbing this is another. You reach for a handhold, but wind and sand have worn the cliff face smooth to the touch."
Instead of going north in the Desert:
	say "Jumping down into the sand is one thing: climbing this is another. You reach for a handhold, but wind and sand have worn the cliff face smooth to the touch."

Instead of facing in the Desert:
	if facing north or facing up:
		say "You look back and find yourself confronted by the cliff you just jumped from. Does it seem taller than it did when you were on top?";
	else if not facing south:
		say "The sandy expanse stretches on past the horizon.";
	else:
		say "Looking south, you see a giant tree bleached white by the sun. Hanging from its branches is a ladder, and at the top is a platform.";

Instead of facing in the Tree in the Desert:
	if facing north:
		say "You look back and find yourself confronted by the cliff you just jumped from. Does it seem taller than it did when you were on top?";
	else if not facing up:
		say "The sandy expanse stretches on past the horizon.";
	else:
		say "You see a rope ladder connected by sturdy white branches, apparently from the tree itself. It hangs from high up in the tree, and ends 2 meters above the ground.";

Instead of going up in the Tree in the Desert:
	say "The ladder is high above the ground, but if you jump maybe you can grab it."

Instead of climbing the ladder in the Tree in the Desert:
	say "The ladder is high above the ground, but if you jump maybe you can grab it."

Instead of jumping in the Tree in the Desert:
	if a random chance of 1 in 4 succeeds:
		say "You flex your legs and jump with all your might, and you manage to catch the final rung of the latter. You pull yourself up the rungs one-by-one, and collapse on the platform.";
		now the player is in the Treehouse;
	else:
		say "[one of]You start your jump up towards the ladder, but the pressure you put on your foot before jumping causes the sand to shift as you begin your jump and you miss the ladder.[or]You jump and stretch out your arm, grasping at the rung, but miss by inches[or]You jump... and fall on your butt. At least nobody saw, given that you're alone in a baren desert and all.[or]You jump and grab the rung, but the tug of your weight one shoulder sends you falling back down to the sand and nearly wrenches your arm from its socket.[at random]";

Instead of going in the Treehouse:
	say "The platform doesn't seem too stable... It's probably best to stay still."

[Look system: adapted from Byron]
Understand "look toward [any adjacent room]" as looking toward. Understand "examine [any adjacent room]" as looking toward. Understand "look at [any adjacent room]" as looking toward.

Understand "look [any direction]" as facing. Understand "look [direction]" as facing.

Facing is an action applying to one visible thing. Looking toward is an action applying to one visible thing.

Carry out facing:
	let the viewed item be the room noun from the location;
	if the viewed item is not a room, say "You can't see anything promising that way." instead;
	try looking toward the viewed item.

Carry out looking toward:
	say "[the description of noun]"

[Lamp system]
Summoning is an action applying to one thing. Understand "rub [any thing]" as summoning.

Carry out summoning a brass lamp:
	if player does not have a brass lamp:
		say "What?";
	else:
		say "[line break]You rub the brass lamp, and your vision flashes a bright white.[line break]...[line break]...[line break][line break][bold type]TEN THOUSAND YEARS WILL GIVE YOU SUCH A CRICK IN THE NECK[roman type]";
		end the story