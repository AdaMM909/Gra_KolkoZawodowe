extends CanvasLayer

var krok = 0
var dialognumer = 0
var x = "adam nie badz smutny"

@onready var dialogi: Label = $Label
@onready var zdjdial: Sprite2D = $Sprite2D

func konwersacja(ktogada: String, ikonka: String):
	if ResourceLoader.exists(ikonka):
		zdjdial.texture = load(ikonka)
	dialogi.text = ktogada

func _ready() -> void:
	Global.dialog_text = dialogi
	dialogi.text = x
	dialogi.add_theme_font_size_override("font_size", 48)
	self.hide()

func _process(delta: float) -> void:
	if Input.is_action_pressed("ui_down"):
		dialognumer = 1
	
	if dialognumer == 1:
		gadanko1()

func gadanko1():
	self.show()
	if Input.is_action_just_released("ui_accept"):
		krok += 1
		if krok == 1:
			konwersacja("ej dziala dzialog 1", "res://spirty/icon.svg")
		elif krok == 2:
			konwersacja("wow dziala dialog 2", "res://spirty/icon.svg")
		elif krok == 3:
			self.hide()
			dialognumer = 2
