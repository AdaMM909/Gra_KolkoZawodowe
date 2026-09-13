extends Button
@export var gdzie = ("")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	custom_minimum_size = Vector2(100, 40)


# Called every frame. 'delta' is the elapsed time since the previous frame.

func _on_pressed() -> void:
	get_tree().change_scene_to_file("res://sceny/" + gdzie + ".tscn")


func _on_mouse_entered() -> void:
	custom_minimum_size = Vector2(150, 60)


func _on_mouse_exited() -> void:
	custom_minimum_size = Vector2(100, 40)
