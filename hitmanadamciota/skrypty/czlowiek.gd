extends ColorRect
class_name czlowiek
var ojciec
var dziecko
@onready var dzieckoo: kurwa = $dzieckoo
@onready var gyat: AnimatableBody2D = $AnimatableBody2D



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.



func _process(delta: float) -> void:
		if Global.atak and Global.copatrzy.get_parent() == self:
			print("zabito")
			dzieckoo.show()
			self.hide()
			print("Czy gyat ma grupę?: ", gyat.is_in_group("czlowiek"))
			zamiana(self, dzieckoo)
			Global.atak = false
			gyat.remove_from_group("czlowiek")
			
func zamiana(ojciec:czlowiek,dziecko:kurwa):
		var zapisywaniektojestocjem = ojciec.get_parent()
		dziecko.reparent(zapisywaniektojestocjem, true)
		ojciec.reparent(dziecko, true)
		ojciec.position = Vector2.ZERO
