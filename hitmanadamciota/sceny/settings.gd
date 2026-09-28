extends CanvasLayer

func _ready() -> void:
	process_mode = Node.PROCESS_MODE_ALWAYS
	visible = Global.pokazsetingsy

func _unhandled_input(event: InputEvent) -> void:
	if event is InputEventKey and event.pressed and event.keycode == KEY_ESCAPE:
		visible = !visible
		get_tree().paused = visible
		Global.pokazsetingsy = visible
		#kuba to sfelik
		get_viewport().set_input_as_handled()
