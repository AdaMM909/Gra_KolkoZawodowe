extends Label

var krok = 0
var x = "adam nie badz smutny"
@onready var dialogi: Label = $Label
@onready var zdjdial: Sprite2D = $Sprite2D
const ANIMEKOBITA = preload("uid://vhsnvmlrdmeh")
var dialognumer = 0
"res://sceny/animekobita.jpg"
func konwersacja(ktogada: String,ikonka: String):
	zdjdial.texture = load(ikonka)
	Global.dialog_text.text = ktogada


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Global.dialog_text = self
	var canvas = CanvasLayer.new()
	add_child(canvas)
	canvas.add_child(self)
	self.text = x
	self.add_theme_font_size_override("font_size", 48)
	self.hide()
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_pressed("startdial"): # wlacznik kodu
		dialognumer = 1  # gostek ktory daje dialogowi znak ze ma byc 1
	if dialognumer == 1: # sprawdza czy jest 1 
		gadanko1() # wlacza gadanie 1
			
func gadanko1(): # gadanie 1
	self.show() # mowi ze ma pokzac
	if Input.is_action_just_released("ui_accept"): # za kliknieciem entera
		krok += 1 # dodaje za kazdym kliknieciem 17
		if krok == 1: # co sie dzieje na 1
			konwersacja("ej dziala dzialog 1","res://spirty/icon.svg")
		elif krok == 2:
			konwersacja("wow dziala dialog 2","res://spirty/icon.svg") # pokazuje sie konwersacjia i znak
		elif krok == 3:
			self.hide()
			dialognumer = 2
		
