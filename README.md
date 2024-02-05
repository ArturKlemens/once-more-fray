# once-more-fray
 Prototype platformer

For this one I want to work on the following:
- main menu
- several scenes, with transitions between each
- programmatical graphic manipulation
- procedural voice generation
- git version control

The concept is this: the main menu says "Into the Fray". You play as not-Mario in a not-Mario game clone. 
It starts off cheery and as a platformer, and then you need to hit one of those ? blocks. 
The twist: you hurt your head, and an ambulance takes you to the hospital.

Your very big family is there, to support & cheer you. You get out of the hospital. 
You do it again, but you are slower. The mood isn't as cheery. Environmental effects? 
You hurt your head again.

Less people are in the hospital. You get out, again. Even slower. Not cheery at all.
No people in the hospital.

You get out. Maybe a scene in your apartment? You do it again.

Here, I want to take the player model as it dies, and blow out the pixels. They will turn into some 
pattern - skulls, flesh. Something like in that MGMT video. It transitions back to the main menu.

It says: "Once More, Into the Fray"

Key platformer concepts:

Coyote time - able to jump soon after leaving a platform
Lift momentum storage - jumping off a fast moving platform adds the platform's momentum to your jump
Pop up unto platforms if you hit right under a corner
Halved gravity jump peak - if you hold the jump button, the top of the jump has half gravity applied 
Jump corner correction - if you jump up and hit a corner, the game will move you to the side around it
Jump buffering - press and hold the jump button a short time before landing will make you jump on the same frame as when you land

Overall design: the game tries to help you all the time

---

Ok, I need to focus a bit on the scope of the game. What I need:
	- snappy character controller: move, jump + coyote time, halved gravity jump peak
		- done: all
	- camera controller: static
		- done: camera, static
	- one level (A) with: one type of static platforms, one trap, one "power-up" that triggers the "cutscenes", collectibles
		- done:
	- one hospital level (B0) with family NPCs
		- done:
	- main menu
		- done:
	- transitions between levels: A -> B0 -> A -> B1 -> A -> B2 -> main menu
		- done:
	- art for: character, platform, level A background, level B0, family, letter, trap, power-up, main menu
		- done:

Synopsis:
	A bus arrives at some junkyard type location. The backdrop is a city skyline. You have a short dialogue with a guard
	"You again? What the hell are you even doing in there? You know what, I don't even wanna know."
	You enter the level. You have a clear goal in right side of the level - the powerup. You traverse the level, collecting X stars. 
	Some are difficult to get. You hit the powerup by jumping into it, cutscene. An ambulance comes, takes you to the hospital.
	There is a cutscene - your family & friends all surround you. You have a dialogue with them.
	"I want you to remember, we all care and love you! Just rest now, see you tomorrow"
	Tomorrow. Again in the junkyard. This time you're slower. Perhaps you can't collect all the stars anymore. Perhaps 
	you have trouble when landing on the ground. Again, the same deal. Back in the hospital. Less people there. Your wife & kids.
	"Why do you keep doing this to yourself? We don't understand"
	Depending on how many stars you collected, you say:
	"But baby, I collected X stars in the last level!"
	"We don't care about the stars, don't you get it?! I'm sorry, but we cannot keep 
	watching you do this to yourself. I hope you will get better one day. I love you."
	They leave. Back in the junkyard, for the last time. Super slow this time. There is one goal only. You can't reach the powerup.
	You jump to your death. Back to the main menu.
