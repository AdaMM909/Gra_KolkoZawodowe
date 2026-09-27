extends CanvasLayer

func _ready() -> void:
	# This line forces the menu to stay alive and active when the game freezes!
	process_mode = Node.PROCESS_MODE_ALWAYS
	hide()

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_cancel"):
		toggle_settings()

func toggle_settings() -> void:
	if visible:
		get_tree().paused = false
		hide()
	else:
		get_tree().paused = true
		show()

func _on_resume_button_pressed() -> void:
	toggle_settings()
