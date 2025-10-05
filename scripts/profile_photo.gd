extends TextureRect

var profilePicsDic = {
	"res://assets/badgoose.png": false,
	"res://assets/badidk.png": false,
	"res://assets/creepiernormalperson.png": false,
	"res://assets/goodgoose.png":false,
	"res://assets/goodidk.png":false,
	"res://assets/greg.png":false,
	"res://assets/me-dude.png":false,
	"res://assets/normalperson.png":false,
	"res://assets/sadjawline.png": false,
	"res://assets/weirdjawline.png":false,
}
var profilePic:String

func _ready():
	generateProfilePic()
	
func pick_random(dictionary: Dictionary) -> Variant:
	var random_key = dictionary.keys().pick_random()
	return random_key

func generateProfilePic():
	profilePic = pick_random(profilePicsDic)
	set_texture(load(profilePic))
