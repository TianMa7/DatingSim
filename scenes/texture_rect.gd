extends TextureRect

func _ready() -> void:
	var timer := Timer.new()
	add_child(timer)
	if demon.isDemon:
		timer.wait_time = 15
		timer.one_shot = true
		timer.start()
		timer.timeout.connect(_on_timer_timeout)
	set_texture(load("res://assets/survived.png"))

func _on_timer_timeout() -> void:
	set_texture(load("res://assets/died.png"))
