extends RichTextLabel

var nameArr = ["Asher", "Avery", "Aiden", "Aria", "Angel", "Adrian", "Atlas", "Addison", "Amari", "Archer",
"Alaia", "Aubrey", "Ashley", "Ashton", "Arya", "Alex", "Ayden", "Ariel", "Andrea", "Aspen", "Ari", "Armani",
"Aly", "Arbor", "Atlee", "Azure", "Arlyn", "Aviv", "Afton", "Aero", "Avalee", "Arvy", "Almarine", "Antalya", "Antigone"]

var aboutMeArr = ["I’m a little silly sometimes", "Looking for my next bad decision", "Do you like water? Then you already like 70% of me. :)",
"According to Newton’s law of gravitation, all masses in the universe attract. Therefore you and I are already attracted ;)",
"Times new roman in the streets, wingdings in the sheets",
"My mom says I’m really mature for my age",
"I love my dog more than I’ll ever love you. Know your place",
"Super hyped to be on tinder! Thank you to my parents who are very supportive of my endevours to meet strangers, my friends who helped me set this all up, and finally to my ex, without whom none of this could have been possible.", 
"I enjoy playing the fortinitght too", 
"Looking for someone trusting and healthy. Both kidneys MUST be intact with no previous medical conditions. Also someone with a penchant for exploring dark alleyways and remote mountaintops.",
"Minimum requirement: Must be able to get rid of spiders",
"Never gonna give you up, never gonna let you down. No. Seriously. I won’t"
]

var zodiacArr = ["Aries", "Taurus", "Gemini", "Cancer", "Leo", "Virgo", "Libra", "Scorpio", "Sagittarius", "Capricorn",
"Aquarius", "Pisces", "Rat", "Bull", "Tiger", "Rabbit", "Dragon", "Dog", "Pig", "Snake", "Sheep", "Roster", "Monkey",
"Horse", "Cat", "ENFP","ENFJ", "ENTP", "ENTJ", "ESFP", "ESTP", "ESFJ", "ESTJ", "INFP", "INFJ", "INTP","INTJ", "ISFP",
"ISTP", "ISFJ", "ISTJ"]

var interestsArr = ["Hockey", "dogs", "cats", "soccer", "gaming", "music", "farm animals",
"shopping", "jobs", "feeding on the flesh of the tainted", "cooking", "baking", "eating cheese", "tv shows",
"movies", "anime", "books", "manga", "knitting", "crochet", "wood working", "AutoCAD", "quack", "sleeping", "synthesizing potions",
"chasing squirrels", "waiting in traffic", "driving car", "eating food", "helping people", "napping", "crying", "hiking", "swimming", "going to museums", 
"drawing", "painting", "lying", "yum yum flesh", "like my loan interest?", "not being single anymore", "not being broke anymore", "money",
"basketball", "sports", "baseball", "playing piano", "playing guitar", "playing ukulele", "drums", "saxophone",
"doomscrolling", "bedrotting", "reading wikipedia articles", "crying to sleep", "writing short stories", "writing", "arguing online",
"hamsters", "rabbits", "pets", "squids", "fishing", "bowling", "paintball", "food critiquing", "3D printing", "singing", "dancing",
"martial arts", "sculpting", "cleaning", "K-pop", "J-pop", "C-pop", "pop music", "rap", "country music", "indie music", "cars", "racing", "F1"]

var interests_dict = {
	"Hockey": false,
	"dogs": false,
	"cats": false,
	"soccer": false,
	"gaming": false,
	"music": false,
	"farm animals": false,
	"shopping": false,
	"jobs": false,
	"feeding on the flesh of the tainted": true,
	"cooking": false,
	"baking": false,
	"eating cheese": false,
	"tv shows": false,
	"movies": false,
	"anime": false,
	"books": false,
	"manga": false,
	"knitting": false,
	"crochet": false,
	"wood working": false,
	"AutoCAD": false,
	"quack": false,
	"sleeping": false,
	"watching people explode": true,
	"chasing squirrels": true,
	"waiting in traffic": true,
	"driving car through traffic": false,
	"eating food": false,
	"helping people": false,
	"napping": false,
	"crying": false,
	"hiking": false,
	"swimming": false,
	"going to museums": false,
	"drawing": false,
	"painting": false,
	"lying": false,
	"yum yum flesh": true,
	"like my loan interest?": false,
	"not being single anymore": false,
	"not being broke anymore": false,
	"yum yum fleshie":true,
	"money": false,
	"basketball": false,
	"sports": false,
	"baseball": false,
	"playing piano": false,
	"playing guitar": false,
	"playing ukulele": false,
	"drums": false,
	"saxophone": false,
	"doomscrolling": false,
	"bedrotting": false,
	"reading wikipedia articles": false,
	"crying to sleep": false,
	"writing short stories": false,
	"writing": false,
	"arguing online": false,
	"hamsters": false,
	"rabbits": false,
	"pets": false,
	"squids": false,
	"fishing": false,
	"bowling": false,
	"paintball": false,
	"food critiquing": false,
	"3D printing": false,
	"singing": false,
	"dancing": false,
	"martial arts": false,
	"sculpting": false,
	"cleaning": false,
	"K-pop": false,
	"J-pop": false,
	"C-pop": false,
	"pop music": false,
	"rap": false,
	"country music": false,
	"indie music": false,
	"cars": false,
	"racing": false,
	"F1": false
}

var isDemon:bool
var interests = [];
var randNameInt = randi_range(0, len(nameArr)-1)
var randAboutMeInt = randi_range(0, len(aboutMeArr)-1)
var randZodiacInt = randi_range(0, len(zodiacArr)-1)
var numOfInterests = randi_range(0, len(interestsArr)-60)



func _ready():
	isDemon = false
	push_font_size(15)
	append_name_line("Name", nameArr[randNameInt])
	append_text("[color=black]%s[/color]\n" % [aboutMeArr[randAboutMeInt]])
	append_profile_line("Zodiac", zodiacArr[randZodiacInt])
	append_interests()
	append_profile_line("Status", isDemon)

func getInterests():
	for i in range(0, numOfInterests):
		interests.append(interestsArr[randi_range(0, len(interestsArr)-1)])
		if interests_dict.get(interests[-1]):
			isDemon = true


func listToString(lst):
	var string = ""
	for i in range(len(lst)):
		string+=lst[i]
		string+=", "
	return string
	

# Appends the user's message as-is, without escaping. This is dangerous!
func append_name_line(username, message):
	append_text("[b][color=black]%s: %s[/color][/b]\n" % [username, message])
	
func append_profile_line(username, message):
	append_text("[color=black]%s: %s[/color]\n" % [username, message])
	
func append_interests():
	getInterests()
	interests = listToString(interests)
	append_text("[color=black]Interests: %s[/color]\n" % [interests])
