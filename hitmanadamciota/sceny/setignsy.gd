extends Button
#var button = self
#@export var gdzie = ""
## Called when the node enters the scene tree for the first time.
#func _ready() -> void:
	#pivot_offset = size * Vector2(0.5,1.0)
#
#
## Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
	#pass
#
#
func _on_pressed() -> void:
	get_tree().change_scene_to_file("res://sceny/settings_w_menu.tscn")
	
