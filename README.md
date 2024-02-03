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
No people in the hospital. A letter from your wife: "I'm sorry, but we cannot keep 
watching you do this to yourself. I hope you will get better one day. I love you."

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
		- done: move, jump
	- camera controller: static vs follow the player? Since I need to script its movement, perhaps it's better
	if it always follows the player
	- one level (A) with: one type of static platforms, one trap, one "power-up" that triggers the "cutscenes"
		- done:
	- one hospital level (B0) with family NPCs
		- done:
	- main menu
		- done:
	- transitions between levels: A -> B0 -> A -> B1 -> A -> B2 -> main menu
		- done:
	- art for: character, platform, level A background, level B0, family, letter, trap, power-up, main menu
		- done:
