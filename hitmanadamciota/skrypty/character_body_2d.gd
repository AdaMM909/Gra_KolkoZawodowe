extends CharacterBody2D
@onready var postac: CharacterBody2D = $"."


const SPEED = 300.0
const JUMP_VELOCITY = -400.0
var predkosc = 400

func _physics_process(delta: float) -> void:
	var direction := Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED 
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	if Input.is_action_pressed("ui_down"):
		postac.global_position.y += SPEED * delta
	if Input.is_action_pressed("ui_up"):
		postac.global_position.y -= SPEED * delta
	move_and_slide()
