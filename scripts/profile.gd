extends RichTextLabel

var nameArr = ["Asher", "Avery", "Aiden", "Aria", "Angel", "Adrian", "Atlas", "Addison", "Amari", "Archer",
"Alaia", "Aubrey", "Ashley", "Ashton", "Arya", "Alex", "Ayden", "Ariel", "Andrea", "Aspen", "Ari", "Armani",
"Aly", "Arbor", "Atlee", "Azure", "Arlyn", "Aviv", "Afton", "Aero", "Avalee", "Arvy", "Almarine", "Antalya", "Antigone"]

var aboutMeArr = ["I'm a little silly", "6’7",
	"Rich submissive guy looking for a queen to serve, I’ll kiss your feet, worship you, I’ll do anything you tell me to. In return I want you to treat me badly. I’ll be loyal like a dog. You are fully in charge.",
	"Looking for a new emergency contact",
	"Call the chiropractor, I’m back",
	"I’m batman",
	"Looking for my next bad decision",
	"Hi I’m ___, currently seeking a co-op. I am proficient in C++, Java, and Python. I have 3 years of experience working with AutoCAD, Blender,  and Solidworks. My excellent communication and collaboration skills developed through group projects and assignments will be a valuable asset to any team. Please message me if you are interested.",
	"Software Developer with 5 years of experience building modular, high-performance enterprise applications. Skilled using agentic frameworks to design robust AI solutions, with a focus on backend development, performance optimization",
	"I’m town hall 12 in clash of clans",
	"I’m scared of women",
	"I’m scared of men",
	"Cucumber.",
	"I’m a really nice guy, trust me, just don’t push my buttons or you will see my dark side. rawr",
	"Call me inertia the way I am in a constant state of motion",
	"Do you like water? Then you already like 70% of me. :)",
	"According to Newton’s law of gravitation, all masses in the universe attract. Therefore you and I are already attracted ;)",
	"Times new roman in the streets, wingdings in the sheets",
	"Looking for a friend to perform sacrificial goat rituals with.",
	"My mom says I’m really mature for my age",
	"I love my dog more than I’ll ever love you. Know your place",
	"Super hyped to be on tinder! Thank you to my parents who are very supportive of my endevours to meet strangers, my friends who helped me set this all up, and finally to my ex, without whom none of this could have been possible.",
	"I enjoy playing the fortinitght too",
	"is this how use I the tinder?",
	"plsplsplsplsplsplsplsplsplspls just give me a chance",
	"Looking for someone trusting and healthy. Both kidneys MUST be intact with no previous medical conditions. Also someone with a penchant for exploring dark alleyways and remote mountaintops.",
	"Minimum requirement: Must be able to get rid of spiders",
	"Never gonna give you up, never gonna let you down. No. Seriously. I won’t",
	"I can make really good hamburger steak and grilled salmon.",
	"If I’m trash, will you take me out?",
	"I love coffee, matcha, and books.",
	"I can steal your tie without you noticing.",
	"Need someone to share brain cells with me. I’m running out :(",
	"Looking for new music recs!",
	"but whoever blasphemes against the Holy Spirit never has forgiveness, but is guilty of an eternal sin\"(3:29)",
	"“Imperfection is beauty, madness is genius and it's better to be absolutely ridiculous than absolutely boring.”― Marilyn Monroe",
	"“We are all in the gutter, but some of us are looking at the stars.”― Oscar Wilde",
    "“Yesterday is history, tomorrow is a mystery, today is a gift of God, which is why we call it the present.”― Bill Keane"
]


var zodiacArr = ["Aries", "Taurus", "Gemini", "Cancer", "Leo", "Virgo", "Libra", "Scorpio", "Sagittarius", "Capricorn",
"Aquarius", "Pisces", "Rat", "Bull", "Tiger", "Rabbit", "Dragon", "Dog", "Pig", "Snake", "Sheep", "Roster", "Monkey",
"Horse", "Cat", "ENFP","ENFJ", "ENTP", "ENTJ", "ESFP", "ESTP", "ESFJ", "ESTJ", "INFP", "INFJ", "INTP","INTJ", "ISFP",
"ISTP", "ISFJ", "ISTJ"]

var interestsArr = ["Hockey", "dogs", "cats", "soccer", "gaming", "music", "farm animals",
"shopping", "jobs", "feeding on the flesh of the tainted", "cooking", "baking", "eating cheese", "tv shows",
"movies", "anime", "books", "manga", "knitting", "crochet", "wood working", "AutoCAD", "quack", "sleeping", "watching people explode",
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
var interestsStr = ""
var randNameInt:int
var randAboutMeInt:int
var randZodiacInt:int
var numOfInterests:int



func _ready():
	generateNewProfile()
	
func generateNewProfile():
	isDemon = false
	interests = [];
	interestsStr = ""
	randNameInt = randi_range(0, len(nameArr)-1)
	randAboutMeInt = randi_range(0, len(aboutMeArr)-1)
	randZodiacInt = randi_range(0, len(zodiacArr)-1)
	numOfInterests = randi_range(0, len(interestsArr)-60)
	clear()
	push_font_size(20)
	append_name_line("Name", nameArr[randNameInt])
	push_font_size(15)
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
	

func append_name_line(username, message):
	append_text("[b][color=black]%s: %s[/color][/b]\n" % [username, message])
	
func append_profile_line(username, message):
	append_text("[color=black][b]%s[/b]: %s[/color]\n" % [username, message])
	
func append_interests():
	getInterests()
	interestsStr = listToString(interests)
	append_text("[color=black][b]Interests[/b]: %s[/color]\n" % [interestsStr])
