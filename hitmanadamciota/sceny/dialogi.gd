extends Label
var dialogi = Label.new()
@onready var label: Label = $Label
var x = "adam nie badz smutny"




# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var canvas = CanvasLayer.new()
	add_child(canvas)
	canvas.add_child(dialogi)
	dialogi.text = x
	dialogi.add_theme_font_size_override("font_size", 48)
	dialogi.position = Vector2(200, 400)
	dialogi.hide()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_pressed("startdial"):
		dialogi.show()
