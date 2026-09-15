extends Node2D


var x = "adam nie badz smutny"
@onready var dialogi: Label = $Label
@onready var zdjdial: Sprite2D = $Sprite2D
const ANIMEKOBITA = preload("uid://vhsnvmlrdmeh")

"res://sceny/animekobita.jpg"



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Global.dialog_text.text = x
	Global.dialog_text.add_theme_font_size_override("font_size", 100)
	Global.dialog_text.hide()
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_pressed("startdial"):
		Global.dialog_text.text = "cipka"
		
