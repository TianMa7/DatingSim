extends ScrollContainer

@export var chatContainer : VBoxContainer
var charRes : DAwkyMessages

signal responseFinish(messageGroupID : int)

func _on_response(responseID: int) -> void:
	#print(charRes.messages)
	if (responseID > -1):
		var response = charRes.messages.get(responseID)

		if chatContainer and response:
			var chat = Label.new()
			chat.text = response[1]
			
			chat.autowrap_mode = TextServer.AUTOWRAP_WORD_SMART
			
			chatContainer.add_child(chat)
			responseFinish.emit(response[0])

func _on_messages_init(responses: DAwkyMessages) -> void:
	charRes = responses
	_on_response(0)
