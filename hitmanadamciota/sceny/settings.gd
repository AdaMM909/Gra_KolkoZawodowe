extends CanvasLayer

func _ready() -> void:
	# Keep this UI running even when the game is frozen/paused
	process_mode = Node.PROCESS_MODE_ALWAYS
	hide() # Start hidden when the game launches

func _unhandled_input(event: InputEvent) -> void:
	if event is InputEventKey and event.pressed and event.keycode == KEY_ESCAPE:
		if visible:
			hide()
			get_tree().paused = false # Unfreeze gameplay progress
		else:
			show()
			get_tree().paused = true # Freeze gameplay progress

		get_viewport().set_input_as_handled()
