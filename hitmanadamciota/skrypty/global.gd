extends Node
var copatrzy = null
var drzwiint = Label.new()
var stop = true
var drzwi = false
var zabijint = Label.new()
var sigma
var atak
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var canvas = CanvasLayer.new() # Tworzymy warstwe interfejsu (UI)
	add_child(canvas)
	var canvasmierc = CanvasLayer.new() # Tworzymy warstwe interfejsu (UI)
	add_child(canvasmierc)
	canvas.add_child(drzwiint)
	canvasmierc.add_child(zabijint) # Label wrzucamy do CanvasLayer!
	
	drzwiint.text = "kliknij e zeby wejsc"
	drzwiint.position = Vector2(800, 400)
	drzwiint.add_theme_font_size_override("font_size", 48)
	drzwiint.hide()
	
	zabijint.text = "kliknij e zeby zabic"
	zabijint.position = Vector2(800, 400)
	zabijint.add_theme_font_size_override("font_size", 48)
	zabijint.hide()
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
func _input(event):
	pass
func drzwitext():
	drzwiint.show()
	
func drzwitextusun():
	drzwiint.hide()
func zabijtext():
	zabijint.show()
	
func zabijtextusun():
	zabijint.hide()
