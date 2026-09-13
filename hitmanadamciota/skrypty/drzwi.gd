extends ColorRect
@onready var selff: ColorRect = $"."
@export var gdzie = ("")
"res://sceny/dwor.tscn"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
		pass
		

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
		if Global.drzwi and Global.copatrzy.get_parent() == self:
			print(gdzie)
			Global.drzwi = false
			get_tree().change_scene_to_file("res://sceny/" + gdzie + ".tscn")
			
