extends RayCast2D
@onready var laser: RayCast2D = $"."
var max_len = 100
var gdzie

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
@warning_ignore("unused_parameter")
func _process(delta: float) -> void:
	laser.target_position = laser.get_local_mouse_position().limit_length(max_len)
	if is_colliding():
		Global.copatrzy = get_collider()
		Global.sigma = Global.copatrzy.name
		if Global.copatrzy.is_in_group("drzwi"):
			Global.drzwitext()
			if Input.is_action_just_pressed("E"):
				Global.drzwi = true
		if Global.copatrzy.is_in_group("czlowiek"):
			Global.zabijtext()
			if Input.is_action_just_pressed("E"):
				Global.atak = true
	else:
		Global.zabijtextusun()
		Global.drzwitextusun()
	
