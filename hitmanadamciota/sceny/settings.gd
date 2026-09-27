extends CanvasLayer

func _ready() -> void:
	process_mode = Node.PROCESS_MODE_ALWAYS
	hide() # Start hidden when the game launches

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("escape"):
		if visible:
			hide()
			get_tree().paused = false
		else:
			show()
			get_tree().paused = true
		get_viewport().set_input_as_handled()
