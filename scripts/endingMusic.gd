extends AudioStreamPlayer

var songStr:String

func _ready():
	switchSong()

func switchSong():
	print(demon.isDemon)
	if demon.isDemon:
		songStr = "res://assets/music/Doomed Whisper - 2025-10-05, 3.23 PM.mp3"
	else:
		songStr = "res://assets/music/careless_whisper.mp3"
	set_autoplay(true)
	set_stream(load(songStr))
	play()
