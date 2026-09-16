extends Button
var button = self
@export var gdzie = ""
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pivot_offset = size * Vector2(0.5,1.0)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_pressed() -> void:
	var tween = create_tween()
	tween.tween_property(button,"scale",Vector2(0.9,1.3),0.2)
	tween.tween_property(button,"scale",Vector2(1.3,0.9),0.2)
	await tween.finished
	get_tree().change_scene_to_file("res://sceny/" + gdzie + ".tscn")
