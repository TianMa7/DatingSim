class_name player_manager
extends VBoxContainer

@export var chatContainer : VBoxContainer
@export var buttonContainer : VBoxContainer

@export var charRes : DAwkyMessages
@export var playerRes : DAwkyResponses

var buttonLinkID = [-1, -1, -1]

signal on_response(responseID : int)
signal on_init(responses : DAwkyMessages)

func _ready() -> void:
	on_init.emit(charRes)
	buttonContainer.visible = true
	
	#if buttonContainer:
		#for button in buttonContainer.get_children():
			#button.visible = false

func _on_message_1_down() -> void:
	add_chat(buttonContainer.get_children()[0].text, buttonLinkID[0])

func _on_message_2_down() -> void:
	add_chat(buttonContainer.get_children()[1].text, buttonLinkID[1])

func _on_message_3_down() -> void:
	add_chat(buttonContainer.get_children()[2].text, buttonLinkID[2])

func add_chat(message : String, id : int) -> void:
	var chat = Label.new()
	
	chat.autowrap_mode = TextServer.AUTOWRAP_WORD_SMART
	chat.text = message
	
	chatContainer.add_child(chat)
	
	for i in range(3):
		buttonLinkID[i] = -1
	
	on_response.emit(id)

func _on_chat_response_finish(messageGroupID: int) -> void:
	var group : Array = playerRes.responses.get(messageGroupID)
	
	for button in buttonContainer.get_children():
		button.visible = false
	
	for i in range(group.size()):
		var button : Button = buttonContainer.get_children()[i]

		button.visible = true
		button.text = group[i][1]
		
		print(button.text)
		print(button.visible)
		
		buttonLinkID[i] = group[i][0]
