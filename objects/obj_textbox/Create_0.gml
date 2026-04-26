text = ["Hello\n world", "bye"]
textIndex = 0
visText = ""
textspeed = 0.8
message_char = 0

message_done = false

if(room == C0){
	text = ["Heya, human... (Press the right arrow to progress through dialogue) ->",
			"This is dangerous territory, ya sure ya wanna be here? ->",
			"... ->",
			"Oh, I see... you're that cat's owner... ->",
			"You're here to rescue him from those dogs, I assume? ->",
			"Well, then let me and my boys help you out... ->",
			"Hold on, first, seems like we've got company... ->"]
}

if( room == B1Tutorial){
	text = ["Welcome to your first battle... ->",
		"Battle consists of your turn, then your enemies turn. ->",
		"Your turn ends when you are out of energy, or out of playable cards. ->",
		"You can play any number of cards, as long as you have the energy for them. ->",
		"You play cards by left clicking them. ->",
		"Your health, energy, and status effects are displayed in the left corner. ->",
		"Your enemies health and status are displayed near the center. ->",
		"Normally, each turn, you draw five cards. ->",
		"You will always draw your Punch and Guard cards. ->",
		"Your other three cards will be drawn from a special deck. ->",
		"You currently have no cards in your special deck, so you do not draw any. ->",
		"You will choose between special cards after a battle. They will automatically be added to your deck. ->",
		"Once a card is in your deck, you have an unlimited number of them. ->",
		"On an enemies turn, they will do one or two actions. ->",
		"The enemy will always attack, but also has a chance to perform a special action. ->",
		"Whoever reduces the other to zero health first wins. ->",
		"Go get 'em, champ! |"]
}

if(room == C1){
	text = ["I've got some ways to help you out... Left click on a card to take one. But I can only spare one. |"]
}

if(room == C2){
	text = ["Nice brawling! Boss told us to give you some help... Here's what I got for you... |"]
}

if(room == C3){
	text = ["*yawn*... hm...? Oh, yeah, take a card... |"]
}

if(room == C4){
	text = ["Looks like you're almost at the end. Just the boss is left. ->",
	"Go get your friend. Take what you want. |"]
}

