extends VBoxContainer

@export var chatContainer : VBoxContainer

func _on_message_1_down() -> void:
	add_chat("Message 1")


func _on_message_2_down() -> void:
	add_chat("Message 2")


func _on_message_3_down() -> void:
	add_chat("Message 3")


func add_chat(message : String) -> void:
	var chat = Label.new()
	
	chat.text = message
	chatContainer.add_child(chat)
