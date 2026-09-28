extends CanvasLayer

func _ready() -> void:
	# This line forces the menu to stay alive and active when the game freezes!
	process_mode = Node.PROCESS_MODE_ALWAYS
	hide()

func _process(delta: float) -> void:
	if Global.setingsy == true:
		get_tree().paused = true
		show()
		if Input.is_action_just_released("ui_down") and Global.setingsy == true:
			Global.setingsy = false
	else:
		get_tree().paused = false
		hide()
