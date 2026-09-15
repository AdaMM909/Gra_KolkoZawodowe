extends Label


var x = "adam nie badz smutny"
@onready var dialogi: Label = $Label
@onready var zdjdial: Sprite2D = $Sprite2D
const ANIMEKOBITA = preload("uid://vhsnvmlrdmeh")

"res://sceny/animekobita.jpg"



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var canvas = CanvasLayer.new()
	add_child(canvas)
	canvas.add_child(self)
	self.text = x
	self.add_theme_font_size_override("font_size", 48)
	self.hide()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_pressed("startdial"):
		zdjdial.texture = load("res://sceny/animekobita.jpg")
		self.show()
