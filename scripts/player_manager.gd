class_name player_manager
extends VBoxContainer

@export var chatContainer : VBoxContainer
@export var buttonContainer : VBoxContainer

@export var chipperCharRes : Resource
@export var chipperPlayRes : Resource
@export var d_chipperCharRes : Resource
@export var d_chipperPlayRes : Resource

@export var badeCharRes : Resource
@export var badePlayRes : Resource
@export var d_badeCharRes : Resource
@export var d_badePlayRes : Resource

@export var gooseCharRes : Resource
@export var goosePlayRes : Resource
@export var d_gooseCharRes : Resource
@export var d_goosePlayRes : Resource

@export var awkyCharRes : Resource
@export var awkyPlayRes : Resource
@export var d_awkyCharRes : Resource
@export var d_awkyPlayRes : Resource

var charRes : Resource
var playerRes : Resource

var buttonLinkID = [-1, -1, -1]

signal on_response(responseID : int)
signal on_init(responses : Resource)

func _ready() -> void:
	findProfile(SelectedProfileSingleton.profile)
	
	on_init.emit(charRes)
	buttonContainer.visible = true

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

func findProfile(profile : String):
	if profile == "chipper":
		charRes = chipperCharRes
		playerRes = chipperPlayRes
	elif profile == "d_chipper":
		charRes = d_chipperCharRes
		playerRes = d_chipperPlayRes
	elif profile == "bade":
		charRes = badeCharRes
		playerRes = badePlayRes
	elif profile == "d_bade":
		charRes = d_badeCharRes
		playerRes = d_badePlayRes
	elif profile == "goose":
		charRes = gooseCharRes
		playerRes = goosePlayRes
	elif profile == "d_goose":
		charRes = d_gooseCharRes
		playerRes = d_goosePlayRes
	elif profile == "awky":
		charRes = awkyCharRes
		playerRes = awkyPlayRes
	else:
		charRes = d_awkyCharRes
		playerRes = d_awkyPlayRes
