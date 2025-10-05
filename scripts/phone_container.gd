extends VBoxContainer

@export var chatContainer : VBoxContainer
@export var buttonContainer : HBoxContainer

signal on_response(responseID : int)

var responding : bool = false

func _process(_delta : float) -> void:
	buttonContainer.visible = responding

func _on_message_1_down() -> void:
	add_chat("Message 1", 1)

func _on_message_2_down() -> void:
	add_chat("Message 2", 2)

func _on_message_3_down() -> void:
	add_chat("Message 3", 3)

func add_chat(message : String, id : int) -> void:
	var chat = Label.new()
	
	chat.text = message
	chatContainer.add_child(chat)
	
	responding = false
	on_response.emit(id)
