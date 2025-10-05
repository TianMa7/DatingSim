extends AudioStreamPlayer

var songStr:String
var isDemon: bool
func _ready():
	switchSong()

func switchSong():
	if isDemon:
		songStr = "res://assets/music/Doomed Whisper - 2025-10-05, 3.23 PM.mp3"
	else:
		songStr = "res://assets/music/careless_whisper.mp3"
	set_autoplay(true)
	set_stream(load(songStr))
	play()

func setDemon(demon):
	isDemon = demon
