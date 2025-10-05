extends HBoxContainer

var startPos: Vector2
var currPos: Vector2
const tolerance = 20
var swiping = false
var swipeRight = false

func _process(delta: float) -> void:
	if Input.is_action_just_pressed("press"):
		swiping = true
		startPos = get_global_mouse_position()
	elif Input.is_action_just_released("press"):
		if swiping:
			currPos = get_global_mouse_position()
			if startPos.distance_to(currPos)>=tolerance:
				if (currPos.x-startPos.x)>0:
					swipeRight = true
					get_tree().change_scene_to_file("res://scenes/base.tscn")
				else:
					swipeRight = false
					$phoneTex/phoneContainer/phoneContainer2/ProfileTextLabel.generateNewProfile()
					$phoneTex/phoneContainer/phoneContainer2/ProfilePhotoTex.generateProfilePic()
				swiping = false
	
		
