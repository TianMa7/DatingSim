extends AudioStreamPlayer

var swipingMusics = [
	"res://assets/music/Dark Eerie - 2025-10-05, 3.22 PM.mp3",
	"res://assets/music/Ominous goose - 2025-10-05, 3.23 PM.mp3",
	"res://assets/music/Sleepy Slurred - 2025-10-05, 3.24 PM.mp3",
	"res://assets/music/Confusion - 2025-10-05, 3.19 PM.mp3",
	"res://assets/music/Cheerful and Skippy - 2025-10-05, 3.20 PM.mp3",
	"res://assets/music/Calm Cafe - 2025-10-05, 3.18 PM.mp3",
	"res://assets/music/Background Eerie - 2025-10-05, 3.17 PM.mp3",
	
]
var songStr:String

func _ready():
	switchSong()

func switchSong():
	songStr = swipingMusics.pick_random()
	set_autoplay(true)
	set_stream(load(songStr))
	play()
func setGoose():
	songStr = "res://assets/music/Amok Goose - 2025-10-05, 3.15 PM.mp3"
	set_autoplay(true)
	set_stream(load(songStr))
	play()
