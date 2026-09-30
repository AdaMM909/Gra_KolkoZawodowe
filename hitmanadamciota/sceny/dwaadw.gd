extends CanvasLayer

var krok = 0
var x = "adam nie badz smutny"
@onready var dialogi: Label = $Label
@onready var zdjdial: Sprite2D = $Sprite2D
const ANIMEKOBITA = preload("uid://vhsnvmlrdmeh")
var dialognumer = 0

func konwersacja(ktogada: String, ikonka: String):
	zdjdial.texture = load(ikonka)
	Global.dialog_text.text = ktogada

func _ready() -> void:
	process_mode = Node.PROCESS_MODE_ALWAYS
	Global.dialog_text = dialogi
	dialogi.text = x
	dialogi.add_theme_font_size_override("font_size", 48)
	self.hide()

func _process(delta: float) -> void:
	if Input.is_action_pressed("ui_down") and dialognumer == 0:
		dialognumer = 1
		krok = 0
		self.show()
		get_tree().paused = true
		konwersacja("ej dziala dzialog 1", "res://spirty/icon.svg")

func _unhandled_input(event: InputEvent) -> void:
	if dialognumer == 1 and event.is_action_pressed("ui_accept") and not event.is_echo():
		gadanko1()

func gadanko1():
	krok += 1
	if krok == 1:
		konwersacja("wow dziala dialog 2", "res://spirty/icon.svg")
	elif krok >= 2:
		self.hide()
		get_tree().paused = false
		dialognumer = 2
		krok = 0
